LOAD DATA 
    CHARACTERSET ZHS16GBK 
    APPEND INTO TABLE TBL_MONT_NAME
    WHEN (1:3)<>'|||' 
    FIELDS TERMINATED BY ' | ' 
    TRAILING NULLCOLS
(
	BATCH_NO              "trim(:BATCH_NO)",
	SEQ                   "trim(:SEQ)",
	MATR_CODE             "trim(:MATR_CODE)",
	MATR_NAME             "trim(:MATR_NAME)",
	FILLER_1              FILLER,
	LAST_MONT_CODE        "trim(:LAST_MONT_CODE)",     
	LAST_MONT_NAME        "trim(:LAST_MONT_NAME)",
	FILLER_2              FILLER,
	MONT_NAME             "trim(:MONT_NAME)",
	EXCEL_NO              "trim(:EXCEL_NO)"
)
