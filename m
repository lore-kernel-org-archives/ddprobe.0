Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B5A19B5B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778994; cv=none; b=s/spkDNZ5PebCmmgxUVvKBX73XSqsmjU2H3kguEGihcuRWwAjJ1bBkLO6YoP2dqzl8SXUaymUU+l9SFfptfH1wDwyeAbftz/YooVRUIR2biVtxvXXyLXDA+QHMHNopDFb+N/I3L9aIaqPITGNaUYaYMbjY891tvqGUhAki1uXl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778994; c=relaxed/simple;
	bh=kvWBFRira0RPxa5AWySKGflzw8tIqboLdSl689T+XxI=;
	h=To:Subject:From:Message-Id:Date; b=AF03EJ5/uwFGaeX6FFT9rQ+RZvzYa3VYgA5W7793ZujLCmNz7TMyw+TfvWBzDvADrJySZDGVQaN2J8qJsJFXvTQl6eK9cBv4DML6zXGNDIr7aWkMXtYaJbZnbEJw75YOeH7MmbvWpMj+Xz9hvmVAuDNvEUCiID+qaKG/EFoXWxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgGjjPqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgGjjPqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1D6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781778993;
	bh=kvWBFRira0RPxa5AWySKGflzw8tIqboLdSl689T+XxI=;
	h=To:Subject:From:Date:From;
	b=cgGjjPqw2WFElWDF4hK/FqsR2cUB2mCLLMXQGMQ2EnngPBSs893DUucKiwi70WNOX
	 XBcfuZn9F6VXI515DnySuyapOuNvuvp4EznmXelQoxP/SKz/k9Szjm+AcYnAqINuS/
	 tU06dIHfSHVxNtfATVqZ9w6tbl/mswLtHjBHLpO+/PDeNrWv3eKK+QzSJCChFquMHX
	 G6Kgwkvv+OqqK8VICu8p7c5tCB2zLCA3+FQj7kJMLqwk4qimg9FKLcskIR1DpymR9s
	 9jd09eHfd02g1tV6dY+HZ8N/Tx8VShrm7nqMkPymdEpU+GlYG4YjoEMYcQU+aoHjCT
	 /0pFL9IHzWXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF30ACD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177899370.1014.12317176065085257976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639e2d269600d36b50c1b2e677685785b16e956e972f8b73fb15b5e6acf59d26
Date: Thu, 18 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781778993
