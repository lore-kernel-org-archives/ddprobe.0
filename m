Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43385179A7
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743259194; cv=none; b=ukIKgjy7Ali25zjQIdN8+yZSltXMauMuA3D2/caWIdKc3QSPvQz0epV0JTL9lN5DrT0wxijE3pvPuqbUE8BZYCPA5+zb3myTYCK90upiyIm5k+s1xZn6tWGDCs67MmLQtp43GELjV4U243EDcqNWU2k70GlhEZ6CIPEqttJ2KZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743259194; c=relaxed/simple;
	bh=CPu3R1bT6JMy8y4XeaaskJjCZmabGRnFtw98QFxs6+g=;
	h=To:Subject:From:Message-Id:Date; b=P7aSpPzOQTjq9nQGX2ODgUwpxW2Z7TbZneeZKNkNklJ7omHLBudY0qyCFXW4bhKJSTiEwazKv2CqzYHe5HwjG90ekwb1ttfwBuJeAVZTslhPEfwuOFEtyet0X7WD/FO6wj0Cz7dLmgCzWKUg4oan/M+XrMsgnsRGKdT/rwatt64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0ywGRGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0ywGRGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B04C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743259193;
	bh=CPu3R1bT6JMy8y4XeaaskJjCZmabGRnFtw98QFxs6+g=;
	h=To:Subject:From:Date:From;
	b=Z0ywGRGxhrhFj2i4Xa5rAXp1Bgnku+MJUHidzz+j3YU6ZdEpGRvsrkwC+SGGKciNb
	 8jtemuScJ54hJTbjJ5cs72ot3sOpds1XK4MYkIZmKjFPVmFNW4bv+888cAoard+YdO
	 dUoFGQDQqKNdAEDJ9stMXB6XJpJXaEJq7NWYCJzqXO+RkVa1kvutKwT1queIkhbZPn
	 dnuXPzoMbONFaOeZ2yB9mhL/pz3L3m5zrOcPSTkEgZ6vDDAxm8ewQrfRXvb5cSjb5y
	 PeD3JMVtEUnFpgZ8glLaM7EL/L6N1nS1BUWRPEcFY7CAU3+8eDS8bGfEiomh2nNY0A
	 rAhaQoJfG3nvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A95EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325919359.9972.13537953207493921282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88972ef2f36c2823d8027f78dea9b539145c7f0bbc843f60ba306da9a20c677
Date: Sat, 29 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743259193
