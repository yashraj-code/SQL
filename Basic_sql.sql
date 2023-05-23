-- CREATE TABLE- is a statement that creates a new table in a database

-- DROP TABLE- is a statement that removes a table in a database.

-- SELECT- indicates which columns you want to be given data for.

-- FROM- specifies from which tables you want to select the columns.

-- LIMIT- The LIMIT statement is useful when you want to see just the first few rows of a table.

SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;

-- ORDER BY - statement allows us to sort our results using the data in any column
-- 'DESC' can be added after the column in your ORDER BY statement to sort in descending order


-- <----------------------------------Question----------------------------------------->
-- Write a query to return the 10 earliest orders in the orders table. 
-- Include the id, accurred_at and total_amt_usd

SELECT ID,OCCURRED_AT,total_amt_usd
FROM orders
order by occurred_at
limit 10
-- <----------------------------------------------------------------------------------->


-- <----------------------------------Question----------------------------------------->
-- Write a query that displays the order ID, account ID, and total dollar amount for all the orders, 
-- sorted first by the account ID (in ascending order), and 
-- then by the total dollar amount (in descending order).

SELECT id,account_id,total_amt_usd
FROM orders
ORDER BY account_id , total_amt_usd DESC
limit 10

'''all of the orders for each account ID are grouped together, 
and then within each of those groupings, 
the orders appear from the greatest order amount to the least.'''
-- <----------------------------------------------------------------------------------->

-- LIKE -> This allows you to perform operations similar to using WHERE and =, 
-- but for cases when you might not know exactly what you are looking for.

-- The % tells us that we might want any number of characters leading 
-- up to a particular set of characters or following a certain set of characters


-- <----------------------------------Question----------------------------------------->
-- #Use the accounts table to find
-- #All the companies whose names start with 'C'.
select *
FROM accounts
where name like 'C%'
limit 10

-- #All companies whose names contain the string 'one' somewhere in the name.
select *
FROM accounts
where name like '%one%'
limit 10

-- #All companies whose names end with 's'.
select *
FROM accounts
where name like '%s'
limit 10
-- <----------------------------------------------------------------------------------->

-- AND & BETWEEN

-- <----------------------------------Question----------------------------------------->
-- #Instead of writing :
WHERE column >= 6 AND column <= 10

-- #we can instead write, equivalently:
WHERE column BETWEEN 6 AND 10
-- <----------------------------------------------------------------------------------->