Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B761CEAD6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760656794; cv=none; b=Z0nBpqYHmccNasMLpZ/yRj/ZDvC5QvW/CRxRcWc03v3Vg6AGdvb5iguK/RRyjVMVWeEk35pap1/hcnY/7cMPNUtJuecfBZx+k0/HVAr6XplREckWxaO+8TyzVT2u4Pm3XEeDr6QbW3Bmz2SBNaNnQC3JhqenfvkrrSz4tr7Qztw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760656794; c=relaxed/simple;
	bh=F5B7oxio9pUKtuYeJuitC6rtLURkVCjPRngwN1S/qxU=;
	h=To:Subject:From:Message-Id:Date; b=GmkVgn6IJqZkaE7dAI2HPgO06o5Fts3oixX+vMth++OQfg3Jj7I3RTdxPnKklQn1AaEZdYfeiTwDfg/qE4Mv17Wxg9iBuQbbWVYQ+lipLbmA49BW5Wa/jksrHHT/LPP7JBKSII3zBkqc8IX26CHSPe24uXmBHdDMiWkWEsvDXDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTsdSUyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTsdSUyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFEC4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760656793;
	bh=F5B7oxio9pUKtuYeJuitC6rtLURkVCjPRngwN1S/qxU=;
	h=To:Subject:From:Date:From;
	b=qTsdSUyftxrViRP/LCdoCaB89R/opXkdEvrpbIzWVYKpMGhVo17/8WvGMdv5GfDn1
	 enshu9PNFrDeP5w2OmeTJPJuhdL3RBvWx8/LoGLX35lg0E29XD+NJVkP4ZNVObEeI4
	 XlOEWO/+4ujPfKtUe7l8ROAfIfzMAAnexjnuuZopca+WE35Lq/J85MGW07CJm9P4Ur
	 UJdjkgMAGJGqljUWw3Xmy+zXwDFXe3wHjBgf4D2ad/TRKMVKkYykzoWj5Nlqghzc/v
	 8dUlFjlK5f0Ga6eDt9X8q5YzFWwKY544KJLKvUv5k7/GDPryDDt5sjlflB+BIhNhz9
	 WTBLCjoo3+gIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D0CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065679358.32347.3704827056801788834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f2e0e1c3bdf93a66ffd3d67af9c25c0d7148691fe05068612e7f8cf890685b
Date: Thu, 16 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760656793
