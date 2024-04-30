Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582A5101C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714449743; cv=none; b=JeEI2zCHU3Jx+20ggo50TD6akGsJP1lqcoZdW5o1FWdDP8cs326Q2rbkaolHca1zzB6KVXjFiGBm3FJCV1oqr4ORGI0nRZu0l5hUUH4RIJ/iR0lMAwi7DMli+YQ1fVtOtJvqOF7hIBZ4aFRaYY0BfhibHuryI8w/y8Kh9ugvGFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714449743; c=relaxed/simple;
	bh=UqQyVZjHswfxX8stpXPI2ANCe0tg1ft6jzxs8XbnFFs=;
	h=To:Subject:From:Message-Id:Date; b=oatF6xthEN1twmKVPEqpmzHEsFUeyiUCmOmfQbUxDcdZE44VxeP9QQYcJNmZEwyeonKPicKnixZhj1j0yjheP+OUYrqQUffHv7LwVEFco6FnltEb87g9pw9ErTJYekvonrhU8esQWswj1QPgs7C+FjnO+jivz3XE2OnkWir3vB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IecMF57m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IecMF57m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC79CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714449742;
	bh=UqQyVZjHswfxX8stpXPI2ANCe0tg1ft6jzxs8XbnFFs=;
	h=To:Subject:From:Date:From;
	b=IecMF57mUEJk7Y9parVUD6nXlBTwkCbQs1tUog5Pibdhgq2dpC0UMJ9f6hINoy7MV
	 HEwDCi7S+ppIkqiCs/BYMfD2xzldd1OgkU4PptUalbJuvMy4yuIahkN7cpbThwg18s
	 lMx8GmfECgJP6HbUIZ8WtMC6wrMDhDGIZVdS/Bx+gDfYvqR8bg+ECKpW6AiDOGLOgH
	 /4KxduImEFXnB6st+vDDU6CxEMRwQHocIU2DOfJiPJmoAyVxMsdbOTOfFHwZmMcHE7
	 i8V65xdWiIfT7NJeEMSNv/zBw7pcgKqT6h+fbs9O3uXl4uJ4ds6j9Jh2iioSM640Pp
	 Url47S7zeiB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9438C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444974275.27505.15150787536800417788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a5891fe4929781aabff6a64f66fc8fabe515b981f6cf0e8623f17a74174caf
Date: Tue, 30 Apr 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714449742
