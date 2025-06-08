Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3394A1F4608
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749383994; cv=none; b=KywYcF7a7iPWLiulKxwl/vallQb65nvKbXzFTZZ3wQQyTiEqyYv/rlF/dCbcKagqp47kqGuDYzdmqQ8jDtCTmcB/BdmdhXQkdqcLtt/Dn4zHfFhZpVgn6y2znGU6mP11uD5Mpw84eTA45kVSP+AvRmaVRYGBEyVfNp5yENQesqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749383994; c=relaxed/simple;
	bh=q3kMCiy2teRssABkPbsLTq/MPVkOTus9Xk9XW6oQSz0=;
	h=To:Subject:From:Message-Id:Date; b=iyEQpAkpVkjkBvaqGSW7Jl4/ijA0owm32ObtIaPbvySIP0GSqJheQgs5W1By+apQtbWTGJabOgm1tP8X9NDp6GWLqcmpU2/hGIA4n8/75oSUlNvhF+nMeawOV09Z/ZdAUNnYZjJKdlikqZj8VNyZVU7ounuk+vUd+KTS0LDjXfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9FiYirt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9FiYirt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6290C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749383993;
	bh=q3kMCiy2teRssABkPbsLTq/MPVkOTus9Xk9XW6oQSz0=;
	h=To:Subject:From:Date:From;
	b=I9FiYirty8u6nnycN6noCV2lIi9la+dL5JDqWv4M6zRo0/yA29db08mEqkd6InYQs
	 fcvPvvDNDScZnbzK19ElX5wCF7Q/hyRus9E0uprZiT4MFz4kNJOZOA9mpXSa/q5XFm
	 7dR+Hxn4Gj+cSS5Tp0afXNbb1SzEtZieg38FlJT1L8gvY1CZdebgrbMWV0ZNPiTazg
	 Squ4AiNo9u0u73piSJ/ueJ7fZ4Ro+hcCrM6bvGKWSLPnYL3pBfS568WAmls5ok0IWc
	 fZ6JYQiu9g6IB9MGjLH6Y46/rxk1NYzMPEC8dHP5J7e3hWn899lHMrYdzGVhnH3Dac
	 A15e1bQrAGEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91082C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938399357.4450.5879072764310268087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d2167e2712d109b2808a9812e8563f48970440d0aa69025b113589922bde43
Date: Sun, 08 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749383993
