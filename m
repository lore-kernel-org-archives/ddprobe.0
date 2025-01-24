Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EA61CBEAA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737732354; cv=none; b=TyZHZWi0DljYvLjwdqCP7mN6R4nf4i/btBo670SIc3Nk6jVbqw2b/xE3MONtad0ogG8nSefi2C0t8IF8fbtOx2rjxIgclNkepCcrS5I6W7tm7r1DY1sL61J68G5rmykK6RfqdboQUmDubaTWS3ABbxWGvkmMKpg/hViq2ltpN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737732354; c=relaxed/simple;
	bh=Ak5NjU4RPdJrDpJIrc2SxodlNZ6x0RdrpeiW5Epg7vI=;
	h=To:Subject:From:Message-Id:Date; b=AG7nxL4QjflLo9xO+yVWr2QY82FXSiROa+CHFWQ2zZs2kfVWh/LE08Nx6Vc9xDWK8Zo7+mwoLr/bD0KZe/dGn9nMqZUlH2FAPR1HtvPf28Y9C1dgb3OUvSFGrB2aBYWdRU6+pF/rolrr/j9pY2HSbpVSYyMCdWh3Q0t7Fdg+i68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxISsxAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxISsxAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC932C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737732353;
	bh=Ak5NjU4RPdJrDpJIrc2SxodlNZ6x0RdrpeiW5Epg7vI=;
	h=To:Subject:From:Date:From;
	b=VxISsxAF1YtpdWQ3mLIOhJFBd97TNGZ2QTRRSEk3ztzQsROG9RNPzA4ZjQALn4lxl
	 OKQ+/JH3CW/nBCjX0F+Em47Lp/eZLnLYXwUfeXT9IKnh4egLcKWyArxBE01/X2GK1E
	 mq080HrwxwsU4Hhe9SpSlCyfVgK++4Yt/NvrgDIWbp/pCzxiVYRuUoJQcXbB9d5gK1
	 Fmlh5mVQ10PO52shCUI1yWj0j7YvqE31j8+9F64xwRvhTKUN1w05Y+46qFEI8nJgGu
	 GRbGx3KGl4E/ZfU9zbCp14jEMQCjmYDdw2pGaRCURz1w4cmIaEFQKPu5nL9CDBylOQ
	 +YihXGdSwi9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DEC0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773235359.21404.2175635062480214248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc886b35ec35c49f8376aad15c4dc1cf33f7449e5826fe06f5fddb5365f0fb2
Date: Fri, 24 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737732353
