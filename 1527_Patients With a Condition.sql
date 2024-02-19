# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Patients_33 (
patient_id int, 
patient_name varchar(30), 
conditions varchar(100)
);

Truncate table Patients_33;

insert into Patients_33 (patient_id, patient_name, conditions) values ('1', 'Daniel', 'YFEV COUGH');
insert into Patients_33 (patient_id, patient_name, conditions) values ('2', 'Alice', '');
insert into Patients_33 (patient_id, patient_name, conditions) values ('3', 'Bob', 'DIAB100 MYOP');
insert into Patients_33 (patient_id, patient_name, conditions) values ('4', 'George', 'ACNE DIAB100');
insert into Patients_33 (patient_id, patient_name, conditions) values ('5', 'Alain', 'DIAB201');

/*
Q. Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.
Return the result table in any order.
The result format is in the following example.

Input: 
Patients table:
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |
+------------+--------------+--------------+
Output: 
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 | 
+------------+--------------+--------------+
Explanation: Bob and George both have a condition that starts with DIAB1.
*/

SELECT * FROM Patients_33;

SELECT * 
FROM Patients_33
WHERE conditions LIKE '%DIAB1%';



