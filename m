Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8E5DF76
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784155114; cv=none; b=H9g6ons19UVk4GKX9oJM8aGAOrkeHaZgu9FkhM78BSuEV7cxrd2HLqxJ6H/fwaag5DDleKmV63aXHlHUEtc2JBEi2w1h5bteCAtSYOCyI88kJZhnJ3GoTUv3tkcAWUSzix0tMLXXqjUNljmMvkWc6PXSZv0BkTQolqOnCxQj1zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784155114; c=relaxed/simple;
	bh=Mg2rxCfdfY/ipw1E5pM/r1gTD2m7RAVUe/sLIAiSmnc=;
	h=To:Subject:From:Message-Id:Date; b=X9Q+cc2s14Xr2CS3Ts/67J4O3Al50Rrf0LkL7L9CsXzdj3gi8ZO8A0Ur7HWzw4wl667yHdeawmqwXvb1+rnBnLhX6tp0OyfeNESrvXZxi4gX536BZxbxsVLxLSNFoIiWr1jFSarWxzFbhwiygRll/iFPjZckloJTHSGblyYjA9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBFMLeD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBFMLeD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11BAC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784155113;
	bh=Mg2rxCfdfY/ipw1E5pM/r1gTD2m7RAVUe/sLIAiSmnc=;
	h=To:Subject:From:Date:From;
	b=VBFMLeD0OLcVbRQpH4XoItqgYv2bsS5VZCfbKKNR5k8CVUrTP49CXyNXpaQ3aBYE8
	 hdclELff6Ja3QSluxKIyUgL2RMCSw1D5bjelbIqvDdmNEotke/O5UbrMKDQjg5Jifx
	 ZtM1Iu/2RT2FPmBwqOP3t9IBvIpdmgBZ6eswXZpWt07sDsoDAtOWTJeoKqrJK5URrV
	 kVBNeq/q8RDVyje0VoBHvv2QbNLL69v869XzKMhochqf2Uk/U0PrUlwH1Xhq3CmZdl
	 McXHAAMtBdGXqmdN1Gsj77JQ/SenOnZgOY9pFvqFGqNyflSaihZI7DBHk091XBUfaH
	 ZDQw6lGuuYldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC395C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415511368.15795.54287839085997256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0361977747e91158a4700a2a32afabf40b6e8b02048db8c078c5fcf2c890f2ae
Date: Wed, 15 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784155113
