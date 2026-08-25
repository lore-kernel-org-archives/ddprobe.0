Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C0086341
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787626834; cv=none; b=HanUpANteiL0sA/F0cGIU9JDYI1EHh/Kh0LkaxbP0vTfhkjqQtQhvkAyMw0Pj8O28yOSjVmGZL+wwGTO5NxGBp1ufN9E8dsD4Zr+6fXnqCynkwK22hmbT/Ieb8EZapfBl65vbBKEOkyz2x+8H4LAyK+AypxD4DAJw8gDYLxmgEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787626834; c=relaxed/simple;
	bh=sELNrt2M+ZuY9o/gqdsF3226zWsKgIqL47wYX7y69B0=;
	h=To:Subject:From:Message-Id:Date; b=QzvT9Xix2F7z2yRpLugrnqdANhQLFi20Xvj1liEV87tXSwjlr4eDzLJoZ2BwSoWzaljU/7jYVfN82c/N/T+V7m4ahu7fWa5VH10BxbHasjnLduCwqkSua6M9dgVqHwoeDcdkEa3AFSTt5zpMjNVR5IGcWclfkn/HCDrw5JDTxcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLrc+umG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLrc+umG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA7FC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787626833;
	bh=sELNrt2M+ZuY9o/gqdsF3226zWsKgIqL47wYX7y69B0=;
	h=To:Subject:From:Date:From;
	b=HLrc+umGGVsN/3ATSrIhcWIvMXUR9HTsG+CLSkJ7YMapqeI97UO9NrUKRI29D02c6
	 vc3CxAW2snv9l5JfoE15DNIc85gZGu2/OwAa0u6p5DR8Y/Qgt+FrxMy2rYNP78/CGS
	 qaVUHANGNQJo2kePxfJqWqrzVoYGPYphOVTRe08/tIOuRL0kpay7T/49JC36264giS
	 zSe2/5RgJPewoctoxGYwSinlt1151NT00yFKVdXlyiDo2JYyUYaop/7YtiXmUI7Xrg
	 Y7pqqwsHG0lhSSuuJzI6qY3TnHd72V/xyFxdfPtY/P8GdWcCgSUxI96+4gCa9Q6bVF
	 wsUH+QzYNqAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA279C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762683368.30136.17524326304149589402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a1f0838c7d9661cc6f4acba6bf3d82248eae87809abac27a923d235645ec13
Date: Tue, 25 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787626833
