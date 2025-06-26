Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185C710E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750938594; cv=none; b=B5yr8X5vq/DmXPI7cFJJ747o9rf49IFnyvJ3ThrJ+A3ZL8j2p0PKY6do8/Hi0vORbqsOHBRWEpWzDMT7u8Qik8WoeJ3Br29cOt0+Eqny9NjhL/MVdDJELDz5d6IMS1lyj/nEgh38PWxgXiDNXZk7hPJ6Ej2GGm1kpf0m2mcwpyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750938594; c=relaxed/simple;
	bh=F8r8DJGehXRcaDsmuDMLTAWdF3f6h/xitOV3JnknUBw=;
	h=To:Subject:From:Message-Id:Date; b=e8YF3mv9Ig7ldaoEMVPjeeo1wXa02KykviypUy8J3qVfFP/75Y03zeAWgEFbkUDX1sx7YcZDtmhL+1sA3jMcsLpveP+bDQJo3JF3YhSULYkiTerYoEwIex36bDa6u8br1e1fZ3wmK7yKJZSD4lSL9gAHoC6GORxHSlpAGu277H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0Wj5wGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0Wj5wGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750938593;
	bh=F8r8DJGehXRcaDsmuDMLTAWdF3f6h/xitOV3JnknUBw=;
	h=To:Subject:From:Date:From;
	b=J0Wj5wGLcgdpz7S97liRTh516Gc2PmwiLtGbU3uJogzraj0SFHi6RgWGK22x/3N9r
	 ynFbCFLPyDJSljxMUszMA4VJedaL2vpD+gCQxF2U860rauJsAeqPTLf02UL3x2yjBT
	 ORV+C1oCUylcJjZoFq7+koTec+vYwDYMgmPhmeM5942SijOmfjsJYWrbi1MBeqYh7R
	 WJyFNd1e1Bk35ZM/ZYx1qYlLUWS5hc+wDulJH496t5RFK42FsTQavWOVhTx2I6epNY
	 O5xVJJinSvLT0fwS1LyEYuaN24NMwfK3q5B3t1MnAjDKsJJuZIFFrQicnWvVZGH7bV
	 6slslV23VmAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D6C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093859357.31354.6328133308207461263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dba41dac65509fcf69505399d84fb0a4df328d3b14ca878f976331778c0eccf
Date: Thu, 26 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750938593
