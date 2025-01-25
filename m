Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456601FA26C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737771954; cv=none; b=Kn22XcOANaKNfMnP3YNExoQt4AGHDsGjl/V1ncbhQ7kpYNE2Xj/9E8N9O60YUZCa/WyjJJuOnG1K76ydxcy7aCTH/D1A2pHUaJlo6PyX+SM5bF+xpwbweZnj7uEroqA1U7IN3mFS7NDTb8Uleo5OmhHPvf6yrKqAjUaIW1f/vEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737771954; c=relaxed/simple;
	bh=NNlql2fb5Z/5o+nd1RB/3cjhBiaEbpcY/Y9GTB7rLqw=;
	h=To:Subject:From:Message-Id:Date; b=DUqCGdL0cCCOYTdRAE7qK+lZ8YJ0zdKvBLtSMr/zPm7Gcygv31JZMEdaEFdUONbUfnAkvaf0xOirCjzjCFS+vNnAD8zsBlpY84D9CRAhzfP+8rFXAIk5P+At3YunWNjITTjgUF7mx3uqcgDhNERP+boiBCgQklwU7HdKMBxiMTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwppdmDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwppdmDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA315C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737771953;
	bh=NNlql2fb5Z/5o+nd1RB/3cjhBiaEbpcY/Y9GTB7rLqw=;
	h=To:Subject:From:Date:From;
	b=GwppdmDdjC29el1VvhSah1d/4VAMRWhy3nYJtLa1DxfUmKjx9Cz3+ZDunFxcFVk3h
	 yHuUVLG2jLBrUjwtu7A+dOFkiogfgkQdiWUGHZyUafrTwOtxT2ecBHTS3Ym+QiqhoJ
	 AMjovZBCW1zs4IX6Vw5SoSdThrf8lepmCNrqi9+j2Qye1STphEJUdi3FMhh45NWl61
	 kjuTl0MCe5YIgtPOhw3v4JJfavq73eOBeTTbO0vPNrDuFU0SnNxbgrx6IYwMptw8T5
	 Tc1Taaypt+53OAR3EeADGfCtcVmEpNEN5j50vtnzzlDyG3FWLIp2pnuTksRr+qUNDT
	 pgihQuxL9jKmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE7C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777195359.4404.4609641348622030260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef161ecdac569b19534fe190d5cddd3850549a58eeb10c9853f03966903b1a75
Date: Sat, 25 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737771953
