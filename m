Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFCC49620
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756520994; cv=none; b=GlrCPgqrVLWJ+MLlRFrRa7MYHrNq9bK6f9OdroONxjdCc/l7EqnAI6iwUvWs2c4dorRIgZ9gRXSWLqoFlscwOzebCayNH4ocsHF04N2SzjVyU5phKT2JA7O6R6hDAy0IFVuzEAoAe5aqvA0YeHnq5GOHf3sc+RIUl7T4zFGpawI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756520994; c=relaxed/simple;
	bh=SMbrYypEpoDqn0WNncVgY/8HLAKLneBCJ54FAoE8Q0k=;
	h=To:Subject:From:Message-Id:Date; b=lJ43QjGNcQZTrh+USAOvbUSTKkw3DgKLb3XtByZI01JJ71fNfdK4JTrw1PGFJAq+rnlg+gcKtd8m/ZiwrdY8oyKXLF/uL0KWsxQ3cKGGT4GTuDf/g+AuO6KvKvEu4HkaKphMi/nR5zAm6N1vbU2pVZNiroF2VEQD1gcHBFDjek4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7za58ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7za58ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0BC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756520993;
	bh=SMbrYypEpoDqn0WNncVgY/8HLAKLneBCJ54FAoE8Q0k=;
	h=To:Subject:From:Date:From;
	b=B7za58ig6lTTtavucmv58zSzxgXrM/Ed2EknY9y1KI10q4f0TtSVoV+Zu9yjfR6XJ
	 OWqJsh+3YL0e/7ktuN//BOYgH0EZP4hf1NWZsa3qWZlf0iveg8iXsgnznoiTfoPQq/
	 cINA/OdYTfKV8gknaCenlRXF6iiYG0JdWCRje86fkxEVF6fa4ToAyZq/vjoz4BQzKY
	 XDhuINMz4Q7/kF94QKiHH57mETB8r5z0333a2fA3YTPSqrrD+DHH0HzhpZs4HgIYz0
	 7a0XuGChyFx9g3N47E7NjoKPqluhdHvijfy1c1Ije1o4uxVLqYkRrvXQC2MKPW3xVp
	 bafHCZ77Da3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F373CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652099357.6122.8828355420318205227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938f609d10f24ea8eff5389f05c4498e260c6796ed173eb1edc7bcce28ebc72e
Date: Sat, 30 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756520993
