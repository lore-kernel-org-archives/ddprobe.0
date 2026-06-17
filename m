Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA4C2E7364
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781725594; cv=none; b=plZLO/RvogMXa12tDBDENKhu0IlVGek/q8B+/miBfwTy9cLJ8ojkdtHYbKFrXp1cgc/CBIHV38XiphCbQ5Xzoe3EHsNya7GkiqpsVK2gVo/zzuC6YWeH4uHvXmokDcn/HIu5VcfkSwOvHeyfa3db9lBAxfoS+ipN6jD6rcjHD/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781725594; c=relaxed/simple;
	bh=MWydy4n7spLcrp9VLqgjyTYFX8mbuVlRIsa2F6N/In8=;
	h=To:Subject:From:Message-Id:Date; b=Qt7kzZO2gIMyD6n2Xny9rxaJ701I82EkJLfXBg/FR6gHIxhBZAylQrUPZILQTBekRgCT8SJ0uHIjE39uQv8i333rYLchKohu14QH7yCB3aZNw5n6VJSc3SWi1uNfGWNXu5nNTvo3Yh4O0VSmkr5CZ4sB/OZc9JKukr7oMkC+rXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXM8kK53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXM8kK53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3498C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781725593;
	bh=MWydy4n7spLcrp9VLqgjyTYFX8mbuVlRIsa2F6N/In8=;
	h=To:Subject:From:Date:From;
	b=RXM8kK53d/JZRdjTr6lRGhsuBIEZZJ+QXJ5R/J5BMuammrxjClTf1RB+/K4rt1DVl
	 /mYf5zTtrlxQhCdLB/KNXX4Ke5JMBt37MOOkWU516JMeWBHcW3vAnhkicbFO4oVGk1
	 IHm1QbszHnryNLt/yw6kpxjnUxeb1WS/qoJvApRW4sJyiwU6sl94aK4TQSsC9RcT69
	 3mKPZQWS4yNfLCdUtho8MM+f/tbT6jK+bJJXhCFN1OEQ7KqVqavFIwtWTPhDVhTujC
	 1p1ubNGDA59d3mZOoRnXAC+MW1R2+hJCvTvA7umY+5yJ2TjT3bh2ZOEFW7pGWOrxOu
	 MCo7SNiMCs2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B566FCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172559372.1183.15465032237106921605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8e160ef83e596e0031dd3c2793ae3969b84263cb6582eb41219b5f1e875a6f
Date: Wed, 17 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781725593
