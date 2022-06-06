view: eeee {
    derived_table: {
     sql: SELECT
         1 as user_id
         , "Hello" as test
        union all SELECT
         2 as user_id
         , "Bye" as test
       ;;
   }


  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.user_id ;;
  }
#
  dimension: lifetime_orders {
    description: "The total number of orders for each user"
    type: string
    sql: ${TABLE}.test ;;
  }
}

# view: eeee {
#   # Or, you could make this view a derived table, like this:

#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
