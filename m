Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43125247295
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748512794; cv=none; b=JP2B2rHwbH07/3kknXG+s4GZHipH3dH6vsF6ZZFV6sfvRVoroXP8aJKOhaKl2OObyCvYkTSPvfgDW7CbF2oXqeHh2UL473NR/i8DputQdzBnFeUx8Bh7arvmvUyGX2XkUxOBfizYLXf1RWYKxaWJiWXMfE26J+cXxfNqIWdZvhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748512794; c=relaxed/simple;
	bh=dxt+ydT+vc4+8RhE6y0AERNhhR4mpKeJUZDyHkYnLec=;
	h=To:Subject:From:Message-Id:Date; b=Ir/MuKxEe5F9oOMT+3im44I8hSxNCtLGQ0g2eYacCYa+Lcw+7j1L4zVhydWzBqpAdpotPdGFr3Ilp6PEZ1v50uxGwMhfjR56aNpIb0LSMGT/R+vFa2kKTAJiD4RPgaMMRbxgKy7nIh8Oku6BRq63VjcUMGddSqY+B+1OjPHy43I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9jS4gpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9jS4gpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748512793;
	bh=dxt+ydT+vc4+8RhE6y0AERNhhR4mpKeJUZDyHkYnLec=;
	h=To:Subject:From:Date:From;
	b=t9jS4gpjXTz+6ELOb2bfpl9+qpA/1tpty+DDqA+TB4TNSgsiB/ju8xNLe37wG4HKQ
	 FM0FiKFnmv6tN9ysXAnFjMTP/IxWaQcXLF/tZj2HoxeMam1p174A9SA0/3aPwqR0UH
	 NBK1nti1t6Lr5Y4OM+E8G9tyK10ctl/HF6tANraqRH3HK7DMQd+kFpAg8aPji1gsJM
	 BcB4Faingez80EhyrNk8d7AaDDEDcRfwAnRT/C8PAzIaSdLjR0re8QOCY8AEgGMi5D
	 kAfdjDr8TrwQo0V5YJSRZevPqhlS5HoRqVvtKZlzdpXP+GZLD/AHgaocha2m9NxXpB
	 Q/fRjP9ARM+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91040C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851279357.7528.1568649552896963834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639b15f6d0e2769d36d649ef75b9eca2941ed7b2ee90ded3ed9f97492fa22626
Date: Thu, 29 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748512793
