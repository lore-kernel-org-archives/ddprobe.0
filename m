Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501FA13C819
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719752063; cv=none; b=PtF28R1hqGDj1bTas5k2HGuZwi9UVS+gNcNNXub7wO5gug9LuwfY16w+tXOKbyCI0ggDQWlQu5yP0tYZ8hhWgKQdyYbmRexPjCMB4wN8SFCM1WDkwm2zlQjFBnPfjzbgqzqN9a9sTt0bluD6e2gZXMXC1ZV7b2Lg4NVfrgX92zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719752063; c=relaxed/simple;
	bh=PA841bJ2hqJg8YAUN+x5qxqVpkJKJEuDTuSyXbgE9Wc=;
	h=To:Subject:From:Message-Id:Date; b=S0PEju50yl+cv/Wrptb1wUQGKmckLA9pAv6wmXCYczQ7FWThBUddDXEQT+EyGOy391ueP2Jr35npj+cYBzvucmFW5xg2+3RjB5A9lRRqMYzG7TmA6xetD+1mQ8KKGewcnZ5QBlXpRQKv8ORfTokSy81HRJOa5M8yyxAncrIGUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njM9kSxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njM9kSxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4541C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719752062;
	bh=PA841bJ2hqJg8YAUN+x5qxqVpkJKJEuDTuSyXbgE9Wc=;
	h=To:Subject:From:Date:From;
	b=njM9kSxpSP234hLkqfZ6TiOsPfXliYtJcVbL+fpPUwteqKbZhpyDFD5m9gbQTbVT0
	 tVVsWMEKQaBnDWbgBMzL/mIuLn99DLKWisS7UsGGBhdk0SyXfFD9bsEp+dj+/+uX5v
	 WzL4CbaCgqfYjPOXzHBYWFN37OmApJLEY8VAW8K/Thr4+yZzLPNE7A+hieSatRyKxL
	 6dYZPvb1D81wwa/stN8c85p2AXFELoXukdsXlaIIhvId5gzixqUdZkPK3woULz5uPo
	 oUx0nLEEWCVZq/xsgrLKpadBdGnP3VRLnvPhSLhz9u6PJDNVyg9sH9E0IS91jqxpOA
	 mEnq+UL+ZnqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E90C30653
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975206277.4036.15913283960415046674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c68a3b9d8ea17d41d0f04dc899e701525b1ce8e08f8d945a59062d69a93c93
Date: Sun, 30 Jun 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719752062
