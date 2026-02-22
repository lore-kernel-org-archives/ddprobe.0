Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303DD16CD33
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771758294; cv=none; b=a5+rNERdCAfTDim6AxwKxcZVaKqWeZcf8U3nAsOeZUwxVgc6+W3CJbzvNATKgTpQ+V7jUBSNM5aoM5tCX9+E9SKOUZU8k7LntjclNpn6shmZ0hFan2Uv9WhQGYoPNV+iOaNEPb0OPBsJJfuWcZ6S5jk4gx6/b+/6z7RZ0RkGF8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771758294; c=relaxed/simple;
	bh=YcVLZ+VAW8NepQkXNUxIrRYBlI0X7YnN6cmaKMoIaqE=;
	h=To:Subject:From:Message-Id:Date; b=VEVjxn+ZNmc9LOTpjz6z/26d8J+XRSnamq4FoLZ9ENNhOl49OnM0UdYhtcb/oROPyzxslbtJKZNCOfotLjJGxylFagtXbKlj8VARe/R0RuXE8UrfjAbBPjFl2xb8dwMTu3Vp6DMg4U6XwGb4+oh5XN8Mi/o9IuKulLXwRQXQElU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POavA5VY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POavA5VY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09FAC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771758293;
	bh=YcVLZ+VAW8NepQkXNUxIrRYBlI0X7YnN6cmaKMoIaqE=;
	h=To:Subject:From:Date:From;
	b=POavA5VYE+SEC5EwOkrfGxNG9zQ1Te8D7BdPPd3WngojB+iLbLtN96pg0tmsWKCCm
	 EZl8l1NRD326rGWcl8uMVnRkZuH4kkHktnJGFrVt6QO9trBQFeCeDHXLIKS332sXom
	 bb3oWSthgPnTy90qU/qeHOq4oNvyvXIxejkJpzXHUQDktiYkQH08yXwl+BrkyqPdki
	 6cEOFlCCg0KXICk2/OngVIGSgVeQTxla2rUZygCVGoXWQcY9Q7VBmJ2sP4u11rXZdq
	 3HzoWIxtuVaFYUM4TouEQCWIqBQg4wxr+Vf6gGnAww+ypsnubcBioDUhTl73ltGJh0
	 9Pf0k9rrA4UCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C28C624D9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175829358.18673.8165406810448288755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8794c0605f4d00ad8d5208c6dc614e99454802bc86dcd9201d8f3c2b5c1a0f
Date: Sun, 22 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771758293
