Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8BE289E17
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765863775; cv=none; b=WnQeOYA9vRV2AuQ7/VSUglNsdZYQpzalZe3l2x9o1DN7nowZHaAg0BvYag5AvsltyZwXGkco5ErDB3M3aBo3ijPMXLVjWQkYRQcuYz5aS5y6MabnVTV100sYUoMGB+kJ8H/gaAS/CfWOfK8fTfyA/LOVmvLoDe+Bg3W6QtBjvSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765863775; c=relaxed/simple;
	bh=JEKYYIPE4n8jO7Vus/fTGwALA58IFcUpLM1/vzKlKGE=;
	h=To:Subject:From:Message-Id:Date; b=NShRPV8J0uJznu+SGh3qalVuXALV5NWqwzPHtvHNM5ufXhEqOG6PQ2U1uklfkc8RuEQxXIyqsXQl2LcvDDdrib1UnLcXGXNUsmuFRmmJ5yP1Rg9qMgtcEswXS82GyWe5ZZHGuEsFl76mjmFhWSX7e/nwZtMYTZqtCT84f6yjL28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iet7ZHcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iet7ZHcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB67C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765863773;
	bh=JEKYYIPE4n8jO7Vus/fTGwALA58IFcUpLM1/vzKlKGE=;
	h=To:Subject:From:Date:From;
	b=iet7ZHcq9fjIQzKClseWkYRNCewSirPdBkb4nJgSwKfVFji6fv06QNDZ4GiQpQjno
	 EBWEZ+lVXXxp2F/36IgTylXvaYNDDSoZQUSgKTuijbANqdzhsKaDPttRFq+8Sd7ro6
	 z6bG0jNGamySl5LGmK6cxsYlr3klAY7UAHsQROsejFUV2nClhNvajyVZcIVtcCC/cK
	 OzII2QHznZYu50i3WBg40uMzMueUbEJUt6d3Ts6WGfoy75D4BEvicaVuE3WhXiucVw
	 BTJT82Y1IdqBzR+wuENbOS0XIy6a8so37T3i4pNMtJDdaGcKrDujkh5LZycy8LYop4
	 ttgwe165tpTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94015D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586377358.27675.15577732918357247873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0839f94ce44ffc8e798168507ac71e9cfb81c2ce1fbe5619ea73602bb7b1a277
Date: Tue, 16 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765863773
