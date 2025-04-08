SELECT COUNT(*) AS orders
FROM SALES
WHERE Date = '2023-03-18';

SELECT COUNT(*) AS jd_orders
FROM SALES
JOIN CUSTOMERS ON SALES.Customer_id = CUSTOMERS.Customer_id
WHERE Date = '2023-03-18'
AND First_name = 'John' AND Last_name = 'Doe';

SELECT COUNT(DISTINCT Customer_id) AS customers,
AVG(Revenue) AS avg
FROM SALES
WHERE Date >= '2023-01-01' AND Date < '2023-02-01';

SELECT ITEMS.Department, SUM(SALES.Revenue) AS total_rev
FROM SALES
JOIN ITEMS ON SALES.Item_id = ITEMS.Item_id
WHERE SALES.Date >= '2022-01-01' AND SALES.Date < '2023-01-01'
GROUP BY ITEMS.Department
HAVING SUM(SALES.Revenue) < 600;

SELECT MAX(Revenue) AS max_revenue,
       MIN(Revenue) AS min_revenue
FROM SALES;

SELECT *
FROM SALES
WHERE Revenue = (SELECT MAX(Revenue) FROM SALES);
