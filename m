Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AE529A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719006743; cv=none; b=cPcZuIXkY1aWehWmPUHMJj7Ml+VNTtvebsBG3hhGeYa441DSc45lX1SDazDp9f0eK4SwnQVWI78EX2b6c3q6rFt8/L9CJMZFXU4qNiDiCdvho78W5mjmHYl3Q5ITNq+/0f8l3y5zIMR/VFBulNYtaSorn6UMkFefKo0h5Cq/7eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719006743; c=relaxed/simple;
	bh=+In7XkEiZtV3oc2JdsPPTVqvPNnnPQknvL9ytoKGU/c=;
	h=To:Subject:From:Message-Id:Date; b=WtuSsHNsFSLOYOVGI5e6toDCIBiV23BGt/84N94LB8z4x2MvT7FoWwLFX3HlGFAAZd/datpJLXqol91w2+LdZy9F9Nt3TWpvu99DnAxFSNit3SWmsMkQ8cvpj9A3amW33aENSRGJx7bLZkyoaq7sy0vQi/aOruIzh0ltRDi6CyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YB7NWW3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YB7NWW3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25BEC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719006742;
	bh=+In7XkEiZtV3oc2JdsPPTVqvPNnnPQknvL9ytoKGU/c=;
	h=To:Subject:From:Date:From;
	b=YB7NWW3tZToM9d2Lk2lEHjPFU3Jj8v+mdP2pIUpqQgELt09UJZ1HmxpeTPTCJPJ35
	 XLEcLmYsdPyo6SgfHXzZT/BOE34XA5eOWoLrW0NCVrWDxjkoD31TJ6pjrOEHnDrjWQ
	 TmXKNIZMnJiheWQxliR5rMtkxPSNLB4UtiTTfsVeNQblPgMQbEwPbh0Hpung2hlbn8
	 /Pvb5Xs+Qtcjbpdxkb9SafwQhbIsDBdLVvvQwTNrjc1DAuWJDN3F+CPSSjQulC53FR
	 7o++h0prtj7DInksp6df3+fzbX1IjgVqM3rroTq0iJIpZlvk3xkcV9+L1YtUxQcywn
	 9tEgPUkraPaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC9CC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900674275.7098.15602558719079780114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2217c2a7a1f2ab93a3507baf692ad4f21e0befb6790d065ace094c59b0346519
Date: Fri, 21 Jun 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719006742
