Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421692AE96
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734693354; cv=none; b=U8NJlHZj2+bY5mR99PKLEmAIc0ODQqlkjOMpjv4BNIx0yLvrW/00bqGonjSz+k74GSrU+vC2uOulLC92hoB65W7C7In8Z1izdbn4r61TC2xY2dYP1pgmAm3AH4j4YF1IUDZBBmSc7jOaAo6rf5jKty9gF8gBavfwCnsSz0xcTJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734693354; c=relaxed/simple;
	bh=9fP4TwOuN9A23W/aon4fYxsRX23b+SnULDWtJEsKht8=;
	h=To:Subject:From:Message-Id:Date; b=gEAITK+DlH6eQYoIzEf4Ro4dbzL3rwxOavqYwEDf7Ka5G1WWdLaJCpHUoq3T+Z/SKO9mdXwJhULDl+jDM2rnD0KSx+SgiFjQZnGLkih0iqLwXxT6FyTzrg0z+GPfsUjPOOhfY+4b5GBl2p11325k5IYvJWD5sBPQnPCl2HWxbe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWc88JuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWc88JuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A94C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734693353;
	bh=9fP4TwOuN9A23W/aon4fYxsRX23b+SnULDWtJEsKht8=;
	h=To:Subject:From:Date:From;
	b=bWc88JuJNbImZTfNVIJihELiwQzvi6jXp+uquwnW90BE6OsB4cxkq/euOG2pGRe9R
	 7ggs22L//8m6Yx85lJL2CqDpGCy6Sp7uBgD51YX3EUb8fTcabcPuE46ye21p/dnpmW
	 BTwJ8DE6z9AAnJd1WDm6sUTx/N3oeDgQeElvF0Eh8ZN/npFeCv5OdZq+7BgE+lB1zH
	 ZjS7ncaehgDJRdH2Rv7NWaAOEViZ7g5FtHXwdpBQqz+TOUftNTfl7mwE8BT1z0YrVI
	 3YVOHD5Pa+EpqWHQCM6xCo3qwHMeTa+y4b8d5n9UY6/17MaDrs6LGAeBqnjEymaQhe
	 95dMmUVhuJ0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967C0E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469335360.26925.12807525359335964306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8c20a62ae1019ae7c763e24162be415612e3578ac3122d778cfb9fc42e345b
Date: Fri, 20 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734693353
