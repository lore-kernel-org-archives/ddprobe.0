Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18BE2EAD06
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753448394; cv=none; b=QVJSL2pMrhRxilZIKoquB2WxO6KNyZYXRrViSSYRi9CtNfUecxG+t2Cfaxa0xpj4wCWqXFKxYSFHMe/nxdnAOp075cnHtY3z6e2/Mf4I0PtNZIbhIBRkq3vyRr9t+fstnhzaHk0ntNbgvZLOIN0WrGqMLRq1uomt6jjTRywEkq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753448394; c=relaxed/simple;
	bh=1Bt0eHJvSWOTxhufe7zCrIT/K+dEPCNbDnmd7Rrcs6k=;
	h=To:Subject:From:Message-Id:Date; b=mOOtqIGtQwBU08ytvhSQSZG3pPUFnzhwAzpUIDhgBlFWmWqw4+gFBVPNdWS+8sYCZBL5JKNMxYDJht7wF7qvcua3kwvZdgoXSpTTKoBTkWL3/YrG8QIbBkItgJy//+yAcY2VyyHZ+iZ2fLPAPba23uQZ3dx8C7LYdlED5oOvt/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXfdAi4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXfdAi4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1739C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753448393;
	bh=1Bt0eHJvSWOTxhufe7zCrIT/K+dEPCNbDnmd7Rrcs6k=;
	h=To:Subject:From:Date:From;
	b=nXfdAi4wiYmjBH0ML5AIetTOZ3ssihH+1YCeeESLR5BCvLCHLVJax4ayJlG+M0V+J
	 9yojpf/sz35ogR+g0YrFrgVLbYthleTTPxcZL3ze9yQmrPv/aXkVatUFxDecc3DsMl
	 GBXcu4fEXiZjQqsXXH+Mfg7bp8lWRKCUiSQpDPuftr/UPnMyQNtD4H4R8ZueJrOkQt
	 T5LSW5T/vNFVdX0ZmHfDGybLAJwFYRgbCnNVmIeWBODgmFoGpHMtnbl5be+kdNLNZp
	 RB9sTISyPOM3Ilhx11LIFd79MGW1GVkP3FuN3+JbaMqIQLhQvMqBiLvmkBM2DATwiT
	 liJ07AAVwj8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DFC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344839358.13198.4966847729635133950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01dedd6dc931588b45cdc442f8ee966707443fab5c9a8b06a3fb0edc8238f0ec
Date: Fri, 25 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753448393
