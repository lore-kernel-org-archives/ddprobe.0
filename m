Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF063115AF
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766036634; cv=none; b=EBv17Fg8yCBgqlczwiVNZ/97s1N6w12oKQuvNone0bUFrO1Zbnun5ZDAbQ9+ZYW38fie8SXjj5/FZnv0nROCP6wVCIDqyylfHErBwKKev97JWZSejXS8deQdK9iovMlxcQpVAwWbDH9YjKACvQyeAduvtXTTp+ZCYllkSS3d4aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766036634; c=relaxed/simple;
	bh=stxOTBRbl3jQhKD7YCxOP/QyXsTTHNuKAhaU4T+40mY=;
	h=To:Subject:From:Message-Id:Date; b=WepvQfVWwEl0m18apU1DncV0IQ9aU8SwaCiSKu3Vzpu0RIkolJQU4XVAVcW2r1pwZvO79gTSIXxOynprmRwtshsKnpPSboJQcZIFIRVdSzDPQADtKHHM+HUwZli6fu1uI6BVraUxfr+kqtp5xkdzDO3OclsVwosjDX+O7W3ihBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzycBRbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzycBRbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766036633;
	bh=stxOTBRbl3jQhKD7YCxOP/QyXsTTHNuKAhaU4T+40mY=;
	h=To:Subject:From:Date:From;
	b=gzycBRbDWT6tDCB1s6pSWDOjKzyRX+dAQR1khV0H90j1l4L55JjlamFW0WOeYWv8/
	 WitAXWk1xseUM3BMr/9dgz0Sf5+V3N8PZFM1+TTscUO47vTh+W2wvi4kCOiU27OxGr
	 uOcIUqJU7joMXb9WR4H2IFnwFT+TTz5jpkDGRAq2Az43SkkyGSZIMk7/q+pXjAJQdi
	 J97Yv5BpfkzA8t/K02d6uLmcIC0OMOeZYeD+Fbj6eZvDzJ7q/GwZi1n72xnN0oyz9k
	 C34wLG0AlrIG3mxuTx8/032Wr/rOpcgqRuhHkdcq/mW4br/Pq1TE1NuWDTiNiMv4ip
	 sp7BFTFgriVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D80D68BDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603663358.955.11949047453375897148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e899ada1f0fd53a982a95d0e5d8c691c3e0af3aa7496cc5c73b47cac6d74bef
Date: Thu, 18 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766036633
