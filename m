Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703C333FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719723863; cv=none; b=ReacrKSmKOMLL9i2UXBy9P4up1GA2ovS/uns65mPdWLxcAB2/QtZun4KB1I9VRAr+04ceiVTkFbuOi7k4NCj20VlUTFN9kDKgRPVj8xI0iz7QAkR72OKpsZ7srD5xLdK8D4KwMgz1jUzJNeWouCc4Y5B0Gh5PorWpivdXTN/ehg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719723863; c=relaxed/simple;
	bh=CemKLrZjZwg95kX9p6HDXMOY39gmRsqPqZ8inzTPxEs=;
	h=To:Subject:From:Message-Id:Date; b=pGN6NtgqnFmrAJiJV8KoXZiLgLYwcwHMT1e7/iR1WngfM1paaIvFTIxS234FuxEx8xFxbtv6hnLPJKvUTm09j6K36x1mZFrVv4G/uzFRq1Xt63SW49BNbLIP2y+KwxJf5yfMwCEnFdUjYPlMLnuJVaaHsBSz1H2lyFYvSUuMsaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlTkyYzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlTkyYzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74E1C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719723862;
	bh=CemKLrZjZwg95kX9p6HDXMOY39gmRsqPqZ8inzTPxEs=;
	h=To:Subject:From:Date:From;
	b=HlTkyYzcj0zQdR4U5dhrG0Q60v0nlkRVEEMlLCXx33aJnrkzkuUTac0R2bgVk1vcj
	 Czf8OvWFenHonSy92lhaTq3ryOPQOdJurlga3vNSerotDQ0gyYKLdw9frZdFHinhmN
	 giU2Aj/7EC3eqc7lNm7yV7d3KSabJaflRqQEnkx5xsFsY0ajUE0bIo2F/tCKmdQMMM
	 8uOs9i/MjbAiY61bxLfDxoVbfp7ZAx+l7lZOIyhwgVo2Z6Rz4mzuiHwyQlXzbCPrFo
	 veGW9cXXeWWgDPEEfBy27rSZzEqA54ndwtZ+jRzMHVbo/8FOVWCi7rrkEUsID3XNOC
	 gUxgPdoZQxd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7D9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972386275.21774.2663684338847907664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaa77b7e2ec3073c2d675828c727914295366e0002e39940b7491b416ea722b
Date: Sun, 30 Jun 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719723862
