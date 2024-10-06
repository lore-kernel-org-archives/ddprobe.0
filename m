Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2726918592B
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728228954; cv=none; b=bMJ2DoTapoWzpCXQb7EknXW3lGdX7w0saAhS/ssfPBkb4+IBfzTDwW637szBXzSkhTlA0V/zzJ1Aa2sicpI4rTMxJ/8IAUuXb/d5Xalhg/GiEcMYleXTL6ETouVCNl+LAlmJzK+j8HbKlA/kwRWxlvgMDjYsmXxgl5YmpvHj0/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728228954; c=relaxed/simple;
	bh=EFE+XCtaVXL3JHLMdAiXo5+xFkMSxOPCpMQPOz+kQKc=;
	h=To:Subject:From:Message-Id:Date; b=DUjkPTeY+LvLyZ05xYt2BYdiRt+o02iNfPvnk/GOaMNVCKFU9oLinK3240K71bzhsQrFu9T7VKzS1tfjbKv7wT3FH0KE3vbQho/WeNmuA/92vLFhnj3f8DN5G5WvgxPSU2upAG0nvONah8pAuPnySJQNOIReC3UwcSVtIpI0OEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPuDmQlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPuDmQlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66EFC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728228953;
	bh=EFE+XCtaVXL3JHLMdAiXo5+xFkMSxOPCpMQPOz+kQKc=;
	h=To:Subject:From:Date:From;
	b=aPuDmQlCoN4Zu/i05jOc9Q2NDcfFO8OCsWhgBfi2yMFASpEdk5fJss0emninBDJ6j
	 L86j4byP00g1mYqpuJOC9eNV4T39yWKsAOtoOvZDV0CqwFaRLMOxWdsjkLTs2eJ5qM
	 JLAJAEmyNz8GNj4TWW9mRKceb8Yn+W9nrov3bJenoUtD8FLyrvq0/w68bBHk22nRSp
	 mIsglhiYEKGoff2Knota/iMoZod2IUSdwFgnZnhbM3F6wYNwLXBdi4b1QvCKitliOx
	 coje1RU4vXarZVppMBE/kQwcSrEcahLbwhbNu61d5Jb0cRYRK3j7jqOgVWZW96m5h9
	 6u5F3d/f/Dzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ABDCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822895358.3578.9549990181245036662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052662f35e8c010a243664c7a2b835d1cf84d270e998b01c6e59dd69ecd874e6
Date: Sun, 06 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728228953
