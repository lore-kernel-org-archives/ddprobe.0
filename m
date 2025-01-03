Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46211CA0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735868154; cv=none; b=G4J5ehm9Gh8+A6G2BV7GThGFk9VEI7Z8gxAx4wgbyNNDEWYy75pNZ+Evl7zxFUi1+X4BcJ6PWUW6yrn1XVj838NpB+TZUjMG2to+aIO5PwZ1lHA/hjfH/WOndiwUrpQT/DShKtmbbMStssXcBldCuQNbblaZUOMSnnJInpHtvRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735868154; c=relaxed/simple;
	bh=gzbKKjoMwwhYW73A3YUss9NWwTggxdXQUv1sxxOUHP0=;
	h=To:Subject:From:Message-Id:Date; b=Qz8IAM0nGDhH1puinHeI2natQEPx+7mYC2qQCCFNerRY950FIh2QawvxP9rMicwurSNfwlMZp3WCdkkP+W6++TqBUV4PdGx+ZDM0fs9PZnVCZXyKd482jiTXLkdGDDMbk09QNkhEKDokU7peDZDiohA7PTKKAmbTNLVm1a28bxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TatRLdgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TatRLdgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C7C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735868153;
	bh=gzbKKjoMwwhYW73A3YUss9NWwTggxdXQUv1sxxOUHP0=;
	h=To:Subject:From:Date:From;
	b=TatRLdgu25brAQVdqVFlyI/N2/lAi6irQk2PDphb5G3qU6kGMx9tpYly6ldXCLxMV
	 pW9OoePJ1jXNtdmEEB0bmvRLFTuVtnAB10v5b0IBA+Y4L/Z2x/uWorecP9D72jPG0h
	 12aN9DP4/sAcA5u6UqlI3zEiQt0XwIv8h7ccthAIcTdq2tWH4UJ6sJDes84P+b2azY
	 B3Z+rCRvCTvT92OXjb+/VGYJjJY0ZPyf0zoeiiSkQEx9y2jnWDfkryra5PTMcecUag
	 Uss7OJ71Bo6UDNkcpyskrMTiMJWxbYESVB8YhOc55OPr2fBQ/HZypAlU3YeXZ4qZZd
	 NhFHbg1Mf35kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E60E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586815359.1693.7784395322474878972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9781748364d48e6dfac4b78c979cfc069e30e3ac6836edde7dc6be95f7b2cd91
Date: Fri, 03 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735868153
