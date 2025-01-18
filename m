Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7E2139D0A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737184554; cv=none; b=X9fLzj3kjUMs5UwoaFCE4jMHHP4323LCjUXLFnjfNVG0kxERUsW1RHYCi/30CeFJWdGCM+LJhxe1x0BO+NHd8JaHDasA2fXdjIIPK6YxbTP4V4oKEHgaUaHYgTLGQ67EaMenp7D+qHubJjZlwnCtlSB5tSvTSComzRpK0hMmjg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737184554; c=relaxed/simple;
	bh=nyx20Uhqt5VYgPyEPnthjOOKcORxBOotxLqc1AW/niU=;
	h=To:Subject:From:Message-Id:Date; b=LQXkoUVV4U0TzdwPF+lSNfK6C90+5TKy1sAZum2+06OahXYnPeELmLtit4nMmMVXM326ch+eoxfdY0DgQ6RP78fDI0hG6wU8UDYdbHAifMbxIT1epwUEbIb3tTnheyLB8GHE7VFOlETTJxhwo2tpT0U+/zL6WkZ2ybiQClIF2iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DChuuZ7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DChuuZ7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9577C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737184553;
	bh=nyx20Uhqt5VYgPyEPnthjOOKcORxBOotxLqc1AW/niU=;
	h=To:Subject:From:Date:From;
	b=DChuuZ7EbSCPzVd1bb44+XhOwg94vvBumSJPUCmSkskafKUy8ipD5ZP46eT3nls0i
	 GcZ+9J56vpFcYQncR0+Kr5sLR1lGSat/EQaJywTwRPRayU301EMUHY08g9YVaOtrsm
	 Cp+XY4Q58K527ovl+2+NBH06/QeYATOldT8p9ucVkPGzTaF+AaQdgke2IJyK6EDe76
	 ZlFhxTwlAZb/mHKwY+1Nrl0ZtQBJbMv4vBlNF2hZRKZZSBslaOuJJBO/GwFXRR+1gv
	 k8V+vxSu0Wfc59/fUnsv7yB2YM4O+nPli+tzXICf7w3Qno+7lYZNXmdeDvhNezp+lP
	 cJhvuzt4vfWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC3C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718455359.17869.11016227911495069458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc28f18728410d7f03e38d2d363e087bef86daa7f8b1b19006b614a7177d33a
Date: Sat, 18 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737184553
