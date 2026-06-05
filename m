Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2706F29B78F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780622074; cv=none; b=phOtiannnygxccWK6yJ1Rwumw2eQ4a7cL+K7oZ+gQgDCLhQwunE1sYmdeXtvA31K6xRayiDiUD+RAOOXmJcywVoWQvWRhbfBvrbTH5Y9vft6xyR42AA2/0+FtMQwg0bHRjRnC2TfFcEGOmcCs94CNPfyPsRsKcQo2mlsWGle7rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780622074; c=relaxed/simple;
	bh=HUqLLiUHmXBlp0xwrFK5ZxpvBq+ggZ1MiocrULNZlTU=;
	h=To:Subject:From:Message-Id:Date; b=bGzGCgpoZB5J6dnHlbaotNVMHHb4zOBUqHnI0zKobEyIM0LKKOg29thEvXcUMCZVSnyWddAd1njiMhSukQdekuSm3em0wV29V9TOAf5OqFanBAQ+ZOqsOcBjeyboquqmGa3DMP3f+1LG9PuH8hAY4c90gniMAWpwPeE7puwBGKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANbjfBwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANbjfBwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F14C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780622073;
	bh=HUqLLiUHmXBlp0xwrFK5ZxpvBq+ggZ1MiocrULNZlTU=;
	h=To:Subject:From:Date:From;
	b=ANbjfBwpV897IDw+M2dHRjjraMrUSCrViWrtr+8DnyKP662aponzwKjYXJ737JQbf
	 v2xbaAKsYyilDPVfynczYy2CRAJHwPvITWrUUDOmJ0SN9q/NI6vnMSsge9f22UBiEo
	 oy4z6Iz0uZahakIFW4ciO7ReNZOeWFAVicMLbd3GXZpPO8UoIo/YcT1O83OUPM6D9X
	 H3ZnfLZtMaVu8LecE8ogMUNQUtiLv7hlLOdeUXPme0QLMAiqWEJPUHyjva7wrj8A1S
	 HnuQo0L20vTvMF9d800higPf/BByLB34/4zbPZ7QqTA2pOf3h4byaF/0SicOuJFmZm
	 aSqlH+KBHNfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFD6CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062207375.19760.13201975369338633436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ce2437c0806961330bfaf9ca410c5b79a410cf7bd781fec65bb39ec7d1079b
Date: Fri, 05 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780622073
