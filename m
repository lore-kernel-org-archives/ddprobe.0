Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADE811CA9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717924043; cv=none; b=eAyJsdVfnB3kaMHzXOomCDfykv7ZRgaBNOUxFDS1Y+MJDyo/S2uBAYkHKhlxyl5UROX8uyRqUqd0n/tO3Ub3LBjGpjR1Y5qk7XG/jjjQlaAZUDLI0NH6hPeO4YChPdP8ow9nfxVt5ppLjEVHzRgu8lppwkff883EPryD8zoyJ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717924043; c=relaxed/simple;
	bh=zXzsGPzZWAsmyFhbQ4MyRaQTXVGZEimquGO94vNm2cA=;
	h=To:Subject:From:Message-Id:Date; b=El6Vu8JPjvLo/FoGFdSk7SendeL7FLtwXrsORtWAGpu3jrM5kW0ZyexmeM3js/Cr1yZlxH4WprBZT0BF03KJkBdvzRiaAroYTlfwiAZRbWjUpJyf+997bLgPk9LRdo8PVj863SmSdsApkJ2+B3KVgD3xKoOUMFWMHkgytdnOfnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6jbIsH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6jbIsH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 034CCC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717924043;
	bh=zXzsGPzZWAsmyFhbQ4MyRaQTXVGZEimquGO94vNm2cA=;
	h=To:Subject:From:Date:From;
	b=Y6jbIsH+HZeeXZypN6qu5i8wbQmnfg+E3W7iD6mJEtLX35rC6zNZMtv3q6zi0KiH4
	 tnHz5A9v0H6dJ165Ib28C7XGuDWAvpeeQxG6DFN3u/uiKDEQYm73Ecq3tSe9Wu8vJm
	 xalJCf7pm4LJT7eKk+XldXgXThisAn8wUzusX6JAnReLB1tLRwG9nw2TiysUdGqAFF
	 K5ATlY39G3vuAkkhs+zV2TRQTsIMphF9mJPBvDnDmsKDAsTZNZyUhLuXJ+t7Yt3yC3
	 pgomtbAKMSPRKuUC3bvSYMTVCP/GcAL8MVyFLTV+VK4joHLW1NGvh1zbZLtxh/ATJe
	 7iznJx0wkOx9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDAC7C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792404286.17572.14718780570013920345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5360cde962a3d6f9b3af80ddf2a7df9d89c226fb51af394c7fc7eb4904c278ff
Date: Sun, 09 Jun 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717924042
