Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8D23126AF
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771701894; cv=none; b=TO0Nqnqta1uh3LMw2PoRlO81tmUTgaughriWgblZyHwVwaBuQuctCrxptwnoN9CpGm7o678oyY5RGd2cUjS6KVoCER/EatpN7pdzAvuJ1ZPu1X6m6Wta6FrCDcNzHivj2mM7L9UTyYzFrzZQLKqHTVcLUUtAay+5nYYW7/O9x2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771701894; c=relaxed/simple;
	bh=vVJIrd+UeIP4qbgts4dOfh/GtoaLnRdRkCq86UAfNwc=;
	h=To:Subject:From:Message-Id:Date; b=foljiH5DaZiAfZcMVnsrSSqLY6E5aOZbjB0SsZ6YqsDQiSWVPBf3vcgwTHSYUV9QcDPnmPXRSyhW0jpLVg0wjizAdabKkTwQQJ1K9Mf4aJOJhqcFIb0zXBLkp0RHP6fuak2/R3d4U5ynOzRMso77GEJSlz1rkAu6ZQxTaKXDeZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCCOXwCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCCOXwCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12A4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771701893;
	bh=vVJIrd+UeIP4qbgts4dOfh/GtoaLnRdRkCq86UAfNwc=;
	h=To:Subject:From:Date:From;
	b=JCCOXwCQS9ANhUxejVSO3mRGR3429wTSew9ulEwKkxz5lNAjE1ab8A+woT8SJIjIY
	 LjpF0XSsS+siVwn+W5WDdvqmizR/Q6eQbnvH3QA454dCsxle9a4rAaed8zJzw11kvF
	 9LyHBVUKJpHCWC1g6EEqvNA9vom9g+1tP831pJy04wwUWsVVarFYurPrk0ZgAZGUUE
	 eK77bIBQ94AxytF0Hv2jp9RxneWHkCd8paqQCGXNlFpuboXgG7KzALgnZzyFENjXqs
	 flvMR3R4mh5pqso3oAcADc9A1BOLRCNkGFMybhUuKVXSeSqDu1t7oy2pUuCpBR2Mf2
	 95BMyfWdz/kJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D53BC61DFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170189360.537.3193938765345563867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af60eff8668121bb76767c0ea9e82eb56342de21d1221224d5a4777f27079bb
Date: Sat, 21 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771701893
