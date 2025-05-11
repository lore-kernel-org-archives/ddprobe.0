Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585944C63
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746994194; cv=none; b=aYTmwttKIqV8bEgI5gBm5pFDYsD0hvKmJAVfuh4xOhFd6wrezz7eumJ4zwB03mB5zBW+Vyzer4QNVH/3RENflW+d9pqO4mkuGu0BQShN7zau1rF2OaoTc1UcRItaQAIj3C4k7vKfKbEKn0331tss1jRlvP5vmVUTAFTSEHto4Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746994194; c=relaxed/simple;
	bh=dfeEN8XJ6UKybUdvELBSpPRphdBbE6JXz4lsuYdMLQ4=;
	h=To:Subject:From:Message-Id:Date; b=q/UoUBOYtDXPVgd0Y65oW+Q3yu1w0xOlP27A/HRVYwq3uvSeSSu+DX+vn7FBDJ68p6eMU7Hvy6Rmw/U5UDOwZCicDTAb827wyCshl5m6KlYw8upDEOv/Fu/1DG1JI2clp5CIVPeM1ocwKUVqRcvkADvlgjy47h/dtyzTModW3VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLMZ6Q2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLMZ6Q2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA15AC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746994193;
	bh=dfeEN8XJ6UKybUdvELBSpPRphdBbE6JXz4lsuYdMLQ4=;
	h=To:Subject:From:Date:From;
	b=mLMZ6Q2PzvIxeb/Opo7D1pR51RF2UA1SvUwfWRmwm0b45x/ifGifUnZeu92TIZxbp
	 vtRsVfuDeqx8A+3mwtwVpWoPurJYl+6dvHutLMpLuV+4GW437edjSsE6iUOV3D2vOK
	 m1jWevY61rt5TgvKaWdPYr9kuhWLxTRAOEIkfNZMK/dZFpaohkgITXq5/c1rT3GYhO
	 4vGp01MZtmRqbCprO10ekDWI64p+TR87vYz3AHVUhH69o5h0idkX7b2cpycfuUal5G
	 V+BfEUMiYY94mv/ZgcA5r62u4x5Urz7zSug7v1dIw6sRhHcljoLxtXt2ZCJRUM3i2D
	 J1ROby7GKsQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DEC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699419360.13205.5657861121490903469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90991fbcdcc92790819c100e6f3062221778578c5730f355443065e6d880f7c8
Date: Sun, 11 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746994193
