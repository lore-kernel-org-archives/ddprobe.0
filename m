Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F598F64
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730420154; cv=none; b=m46BsBa4kA1HQeRvPS5j8N9BUx1rbmtHSwZYn0AFP4PVNI21RiRN4xGdpCsyunNVgqx14yozcMnI7MBSQ9xgXUtRe9hWHE7VN6N94Rr/RKWkBkByZtB7/C15dPkkhHtdDGzYzYrEQXz+K9+4Hh13zMHOZ2biFltsvXUIuQ1qSL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730420154; c=relaxed/simple;
	bh=Qb2JbkYd10I1NWgakviNHc/wTlypqcL3FYFxQ9Xslcc=;
	h=To:Subject:From:Message-Id:Date; b=EfX/AZywzINKsceZezoCN+T6Ja/SCDzD7piAPvqqTb4cyt0+hmkww14j/WUrIFIWlznZyIJyFCpiwswa3NhlVfotpww1PyUz2aFUbdQeD+ybLPKygWDtDzDGOD47fnCvp/aoWkmLWpFifFEQHhrO6ibY85+b+kbzXTuGTdnfSYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPhELJtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPhELJtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D8C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730420153;
	bh=Qb2JbkYd10I1NWgakviNHc/wTlypqcL3FYFxQ9Xslcc=;
	h=To:Subject:From:Date:From;
	b=oPhELJtdTTdBWqWkoL2S3R58IFi08GPH9MxuTOXN7nZXPgE7eOuAGHPvn7V2nBeE6
	 ItKL74DhqrahyT2cp4r/n50DrMrhBF/r5KyozyNeJdoYQfa0/m+fBfHppjXXlJUIkR
	 0kHm0NcWAn62FpveU1g6jISbmf1EjHXwrkk7oJtq6fsARCVKr49OQS2e0seNYSEaux
	 kLs5BnBN7UALsM09pZexxmympl9Z74lmRNjVHk7QXUL2+0Tu9tD0BHU+2vEmbJ5epX
	 jNJ2UWeKMQptPJ9QWdNfRKETib1ZMC5Zuqaj0Y2HZdu03gONkhr1rmbvw07pAq0LKD
	 SW5ECDch0KiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7CE6748F
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042015360.12090.11210327489640707300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989311b67bfb9cf44f6d831fb1e2547cb6c4eda700a6f5808f63af0508e8333c
Date: Fri, 01 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730420153
