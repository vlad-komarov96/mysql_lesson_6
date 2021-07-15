-- 1. ПУСТЬ ЗАДАН НЕКОТОРЫЙ ПОЛЬЗОВАТЕЛЬ. ИЗ ВСЕХ ДРУЗЕЙ ЭТОГО ПОЛЬЗОВАТЕЛЯ НАЙДИТЕ ЧЕЛОВЕКА, 
--КОТОРЫЙ БОЛЬШЕ ВСЕХ ОБЩАЛСЯ С НАШИМ ПОЛЬЗОВАТЕЛЕМ.
 
USE vk;
 
SELECT
    from_user_id
    , COUNT(*) as send 
FROM messages 
WHERE to_user_id=1
GROUP BY from_user_id
ORDER BY send DESC;

-- 2. ПОДСЧИТАТЬ ОБЩЕЕ КОЛИЧЕСТВО ЛАЙКОВ, КОТОРЫЕ ПОЛУЧИЛИ ПОЛЬЗОВАТЕЛИ МЛАДШЕ 10 ЛЕТ.

 
SELECT COUNT(*) as 'Likes' FROM profiles WHERE (YEAR(NOW())-YEAR(birth_date)) < 10;


-- 3. ОПРЕДЕЛИТЬ КТО БОЛЬШЕ ПОСТАВИЛ ЛАЙКОВ (ВСЕГО): МУЖЧИНЫ ИЛИ ЖЕНЩИНЫ.

 
SELECT gender, COUNT(*) as 'Кол-во' FROM profiles GROUP BY gender;