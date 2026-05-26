select * from diamonds limit 50; # we sellected 50 rows from 50000+ records 
select count(*) from diamonds; # it show the total rows count 
Describe diamonds; #  and it describes the coloums 

-- ================================================================================================================
-- now we will find Missing values from the data it comes under the data cleaning 
-- ================================================================================================================
select count(*)-count(price) AS missing_price
from diamonds;


 
-- ================================================================================================================
-- Here will find invalid values from the data 
-- ================================================================================================================
select * from diamonds 
where price <= 0 or carat <= 0 ;

-- ==========================================================================================
-- AVERAGE PRICE 
-- ==========================================================================================
Select AVG(price) from diamonds; 



-- =================================================================================
-- Most Expansive Diamonds 
-- =================================================================================

select * from diamonds 
order by price DESC limit  1;
  
  
  
-- ==============================================================================
-- price by cut 
-- ==============================================================================
select cut , AVG(price) AS avg_price
from diamonds
group by cut 
order by avg_price DESC ;

-- =================================================================================
-- Most Common Color Of The Diamonds 
-- =================================================================================

select color, count(*) AS total
from diamonds
group by color
order by totle DESC;



-- =====================================================================================
-- now we will define carat vs price 
-- =====================================================================================

select carat,price
from diamonds 
order by carat ;



-- =============================================================================
--  here we will compare 
-- ==================================================================================
select cut, AVG (price/carat) AS value 
from diamonds 
group by cut;

 
 