Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2089257C9F
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745417394; cv=none; b=DyT3KzBSYejo/v1Mny6P1vWAoAf0s9D+zkPxLDxqfy8kCZJr9P6cFMbClrApdJMwbZakZoADgIZl8G1MVN9FCICeKAniUSSJogmSq275My6Nyg0iPoi9WfXbWumMKtmDdGHHqH5faIYuIHTU+PmFMjNA+Gr5GBwMU3UkkU8jSRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745417394; c=relaxed/simple;
	bh=5LstSEplhdJi02bLCyjLOIYGGha3/PbmW6L68ibhV5Q=;
	h=To:Subject:From:Message-Id:Date; b=gyrV3ZUabLFkfOgflDZTL9AJ3HjN+edblaPKwdcuLeB40LeYKXJY6nF9j8LVjcEXaDkvMRRrYlllcNjiAP6BoOBl5LvsV3c+85sC+MO/Ji+ahKhzGWQ8MkBuKpuIWh2mz3vyCoJA5YSS9KPi7mE6aIUtZwWsXDXilCLzQ4i3LuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECsVb037; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECsVb037"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7F6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745417393;
	bh=5LstSEplhdJi02bLCyjLOIYGGha3/PbmW6L68ibhV5Q=;
	h=To:Subject:From:Date:From;
	b=ECsVb037pdLoLevdINLv0DDGMjgD5X7UmBVBOs8nbhmgYktJh8oGJtpzhLizkof7Q
	 z53sVtbBcIicu0BMwT8NC1CMgDXOOsA72wXfogHdZSOg0+STfCtU+WboqB3JcpJ2bH
	 /toNu2x3sLs+6acHRFxaISPd+cVrqcYp3K+UCXNsgL8ludItIoBncgpfWDUTdiYmKm
	 QkKVbOZF96INPayBxQInXOTGPkOen6+F+lT43dm2NZpfuv273EpnGT1qaNjOVjNl/4
	 i5EnSaCeQOujv4KkmGXJe3FTfv6Vpw/Pinlr1/7DN/djqdnIG3E/MT7UTrjHNd4t7o
	 vvPDhveNJncxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED08C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541739357.16107.8272590916889113106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4e48bbbc21f49f916584f59233896c188aa7f289cd1cceaed84e0a61e2659b
Date: Wed, 23 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745417393
