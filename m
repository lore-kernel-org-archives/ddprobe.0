Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3B42EE260
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754998794; cv=none; b=UnBbSG0hnSTye3fiLHca83wHbugpQF7kKEKO9Sh7YsAH9qK1DNjcWW/qGdlvtOSmZSrhyNQdavgEwMalrQzZ2aI1rrVPZ7Sv07Hm2DFZA8qobXw+DVdyvZ2s22J9ju9dGvbXAkTo0WvfMcLmQcu6T2nuX6O0KNrxu1d6Bc2vdD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754998794; c=relaxed/simple;
	bh=1qmHFqAIVeyELZM3r7fhndcBrcxihGJBIkWH/1Xt8XM=;
	h=To:Subject:From:Message-Id:Date; b=B5LOr7ScOzHY0Sx2RZUZgBIbAR4N6rHPCPe3IAsbBOI6pp0xdYdixOpqFPDYFzb0NblaagPFXa2v5iI6AatO3pb9i13ktSpc6ZnKiHUOFJ7ZxWVq/5PPjwlRsfRZc4v7qnufJrseSMbdRZhCkyPGy3GEBwgEeOqvvufKF4yTnm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlbzOc4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlbzOc4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0418C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754998793;
	bh=1qmHFqAIVeyELZM3r7fhndcBrcxihGJBIkWH/1Xt8XM=;
	h=To:Subject:From:Date:From;
	b=GlbzOc4I2yxpm2DXYVcrYkGYHwRZC8NnajEKNmy74WQxwHCWsWIZDrMdKsE74lmyY
	 ngB9F3CIr0oduhwiN8aTfN5KIpn2lreblkoXLkbB9Xl8NgmZWMncowuu9QSuezk4bt
	 yfqmWoXcYXn4dz8FgZFBw5quwB08FjO6CaYpBynLMwq+w/h/c1e1/7zJJ/uaNdNHYm
	 QAqx2oPjIUWLVzBGvfJooK1E/f4srqzBs4JKNXjOIiCOBOr1OajM4rdJ6crGWrN06g
	 sV1kCnzRq2hcqEGWiVV3RMl1GLFA+ZhLImcYSW+TuOQ5a7T07d/PFl4DzYVrtiDRIa
	 zM4sqiY0NAEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF55C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499879357.3578.631447186144919675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11de7b2066b65355d9942ba581fe3d92d1f0cf112b0930109b833e85c4ca0ec5
Date: Tue, 12 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754998793
