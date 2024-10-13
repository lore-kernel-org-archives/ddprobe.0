Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD161DDEA
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728793554; cv=none; b=MUs0vfBBmvDOo7Ojn3KWDSTikEe7lZBEKhWT220i6uYfBS503n5GoWKkjeKopk8LS5sg6uSX+j+oK+Y9ZbZ7cP0Cmnj9ZDNUECEeXM7FuPUVHnGCO+43imHMgR7d6VQW6d5rCsmwfF880m8cDb0mAeJREv9JWmdUrVy9Rt7/1XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728793554; c=relaxed/simple;
	bh=AI/uhM4aehDt+8DvrhQNkhLbWobmJ84HMvXTwRJQt1o=;
	h=To:Subject:From:Message-Id:Date; b=TCm5ywBqpSuTvy6YAfooPiUMAMHRaBbJABall7B+WaSSEcnA2Cr4Js0MMzum2/zDW/QJFHJacGoSMEpDzMlYlLL1tryLvML37FTbIxop7vdHaB6f62gHASBV75T2RAjqLxHFPsX86NCTZJAFXNgF0udvZ9LS6SZLRj8lS5jIR68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n76Fw7LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n76Fw7LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFE6C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728793553;
	bh=AI/uhM4aehDt+8DvrhQNkhLbWobmJ84HMvXTwRJQt1o=;
	h=To:Subject:From:Date:From;
	b=n76Fw7LVoxxrxgHkeugQtIlOFMGSgSi5y7+KFETVIq/Xyc0gPj0UhjGkAeZkZdGUf
	 EZ5LAl1NCpp2xVF6PC8oyJ3pZcP9LinVcc+okgjHwxfd+p+Tjo2tyhowo77mBW1T9Q
	 vLEd+RXAXLo4jjJEw4bon5b5Q0etatq6XugaJWdlf/eTiVZMHgJ1V0fMpjHiiAhs85
	 OTtcPvgCt0lpJ7ZETng0rzED61YzytNfUJR2L55hlaKs+n7BltZlSmCjkOeDFMEoq2
	 cGP43dReZCfPrePpte5dPwB5Px27FXT+KQmCkN+R23ukXrbTw4W/KHaNnsxiKzOtH4
	 v1bP4zP6lM1CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C153CF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879355360.4785.7246696012146200447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aeb54a86aa60cd3d67d7bd836382fe42d90df37174e653364f364184752867d
Date: Sun, 13 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728793553
