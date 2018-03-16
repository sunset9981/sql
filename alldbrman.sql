spool db_log_includeRMANstatus.txt
set pages 1111
set linesize 200
col USERNAME format a10
conn psd/jiceprod2020@jo01prd_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI');
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/P$D_2011@jo01sap_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI');
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/UAEPRD823@ae02prd_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI');
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/oracle10g@ae02sap_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI');
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/KSAPRD572@sa02prd_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/oracle10g@sa02sap_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/oracle11g@sa02arc_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/PCEPRD753@eg01prd_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/arch666@eg01arc_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/sap666@eg01sap_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/cfiprd951@eg03prd_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/arch777@eg03arc_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
conn psd/sap777@eg03sap_p
alter session set nls_date_format ='dd-mon-yyyy hh24:mi:ss';
select name,open_mode from v$database;
select to_char(sysdate,'dd-mon-yyyy hh24:mi:ss') from dual;
select USERNAME,expiry_date, account_status from dba_users where username IN ('PSDBI','PSDTERM','PSDWF','PSD','JICEBI'); 
prompt "rman backup"
select SESSION_STAMP,SESSION_RECID,START_TIME as "Backup Start Time",END_TIME  as "Backup End Time",INPUT_TYPE,STATUS from v$rman_backup_job_details  where start_time > sysdate -1 order by start_time desc;
prompt "Calculate DB SIZE"
select (select sum(bytes/1024/1024/1024) datafile_GB from dba_data_files) + (select sum(bytes/1024/1024/1024) tempfile_GB from v$tempfile) DBSIZE_GB from dual;
spool off 


spool dbck.txt
conn psd/jiceprod2020@jo01prd_p
@dback1.sql
conn psd/P$D_2011@jo01sap_p
@dback1.sql
conn psd/UAEPRD823@ae02prd_p
@dback1.sql
conn psd/oracle10g@ae02sap_p
@dback1.sql
conn psd/KSAPRD572@sa02prd_p
@dback1.sql
conn psd/oracle10g@sa02sap_p
@dback1.sql
conn psd/oracle11g@sa02arc_p
@dback1.sql
conn psd/PCEPRD753@eg01prd_p
@dback1.sql
conn psd/sap666@eg01sap_p
@dback1.sql
conn psd/arch666@eg01arc_p
@dback1.sql
conn psd/cfiprd951@eg03prd_p
@dback1.sql
conn psd/sap777@eg03sap_p
@dback1.sql
conn psd/arch777@eg03arc_p
@dback1.sql

spool off 


SPOOL log_0125.lst

@@ test.sql
commit;
SPOOL OFF

