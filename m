Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B35195
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744427994; cv=none; b=s7kg5D2SYWab9iOefUjM0IgOOs0WwkiAxKywYCga4gSF852JHnhzkn8nT+l1D3OAnLdLJMguozserwDA5YUM4PjPuKM/QvjQIfqiFi/d5trQBl7Zd+R6j6xYFLvSD2cGKtBzaWmqENzM7wpIB1i/zUu3QBzquG22LvgFg73d8ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744427994; c=relaxed/simple;
	bh=T8/+vwfLPubiSvaClf8oLve5BIHXb8HPadWhs9Sfv/U=;
	h=To:Subject:From:Message-Id:Date; b=iH89L3p6IofRVVzd3Pn93yqoGzOLhnjlck2T2H9+IMil/r7BDqUrjcB3CZBKerx+swc0RdV9IyyJnaAJtNBdbRZA80Nl23eW0VFX7cdp9XilfT4gdr/ys6IdSeB4eS4nIBQ0U/B62qPqPVdUHInDC9xOwwN7GOzVgCzdwUacFys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USEyw4d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USEyw4d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744427993;
	bh=T8/+vwfLPubiSvaClf8oLve5BIHXb8HPadWhs9Sfv/U=;
	h=To:Subject:From:Date:From;
	b=USEyw4d4Sje1HoJp0on8sbkWIZBDpMf7dtMehCsGDeVopplyXKt/TuYklmSqsWxO0
	 MHan3l81VtQJqOjdBgbGLcFP3CKprRxCo72IUizEASWf+xXPFPMzrr7o5DxeW5T+0T
	 UtGxbLwui/rv8gLER2qcIW+017S0AayH45Q4EctjUUS75uZ22+3aYxAq1m2hOzmSbo
	 L06nKo7AJtiJysf4YuMlBgbl8eu2qPPP2bEvB9HdtLXWPkDEPxFHMTxSbkgLOIYAKd
	 0+1sXJ3wmmgg5v8GKrmMNXAFYt59phBjiPrY+sVfGF+1A1EFS1gfAtXoJXB9QWGqju
	 Nm0Gt6P/JPiBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FBFC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442799359.31332.15590969329637316727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0505395a82d404fb312628c053d5b895a6f6101f11579097444eaf0993780b85
Date: Sat, 12 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744427993
