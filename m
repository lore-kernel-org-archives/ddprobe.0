Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C5286A6
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712213897; cv=none; b=YiJICXmexwNF7kpBIlHBXiwxpVME69/ZRwYV2uSTkpk6B5FzrsDQYwbCBT6Aa4+KB77TOS5dzyQkLrL3NCKG453Fygnpchj9Vd+ZkrCmgeQabIJetDYTh5ibJC9i7srUIdMoCubclnjPbWcIv+c4ZUHNoiSgXgTMwTDCc6QdAvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712213897; c=relaxed/simple;
	bh=W0yhbNDIRhcT81wz+L7gSMJwMMXSfPdTrH+aNPwPMtE=;
	h=To:Subject:From:Message-Id:Date; b=nOBqcIFT2yQDCL6GKyyaqnd6WR2eHWkPz6C7gh5qq3wYwwei1zHu4Z7y9RnDF2PEzHSaHlS7oJWn/oB72PwhhKIn3YObVNQP2ANGIjM256xD3Q4FNUT22KE4Ufy1WvKGofajpLB6vJMXswPrjSKawXsL0f6zov0RPhHAz4m3QJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqoDJH+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqoDJH+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D73C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712213896;
	bh=W0yhbNDIRhcT81wz+L7gSMJwMMXSfPdTrH+aNPwPMtE=;
	h=To:Subject:From:Date:From;
	b=bqoDJH+NJMw+Vn6TYhpRVXgBtbhYf4cjWxnYM4cjCftZLNCr76pB7qRTLfXI1mnL1
	 VkUB66PoaC3q+xcDY1hKam29S8/e0/A2X5vHfxcpFLZbdE7454AG1ofxSIroewEeNp
	 dkdrRSLqMhaTyS1pnSyDCDxiSsr979l/7ViuFroSIl8sA4ynkvHnB9edHz8umetodZ
	 RAc/Msaje5pZLLYJtShVPEXp62X0+IHT5EcJxqE9k3zLJEFtAxdPMxcnMA5ONqb4KE
	 09xSD9Kc0akfg4HOclZVzl7laU8pMgKTeVLghqtiabkbCGtEjI0lvdjytFi4pWq8Zz
	 IV9mcsqHn/K6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCB1CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221389642.14782.2295327129689833534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620623a068f55007f85ad278bd53e115ed5ecb685e37557a7e3bf4bcf7a5bc9f
Date: Thu, 04 Apr 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712213896
