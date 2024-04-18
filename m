Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A623FEF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713480563; cv=none; b=iJ/xoS48HXqE+UcTw9F+32bFJIgrC7y62pE9Q6crigOaa8Wy1UlLxAMKuJ+jEV4M6f6x+YEjhu8r72+K2J/dYCTBpM0gcWEfnioeTAFN6FgeKiRhIaj/Qs6VakHy44X6270gB1h7UpbIfgYGmneRMDcZNqp6Dh+ZiiNkipJ0KZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713480563; c=relaxed/simple;
	bh=dXKMk/aShPzUMB9CFiJEewwmfDXjyD4h9obPRvWpUgM=;
	h=To:Subject:From:Message-Id:Date; b=H8jbQJB98k+ybcKVTk7C4IOnhxpRXWQ/LMzkUHmoa71lQ5x2HrDEb468One7xRPlaIeY40LUrsMvIFNPVq0SAoz+J2iTH3MUlX4nccaZaFDm/5co1zvu+LKrVOJbund2HLgEwEd+VRxZn/MVJQJ92pR8UEpzbb01U653Jl4bn+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpdZPtd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpdZPtd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDE3C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713480562;
	bh=dXKMk/aShPzUMB9CFiJEewwmfDXjyD4h9obPRvWpUgM=;
	h=To:Subject:From:Date:From;
	b=NpdZPtd10QbO7+4dL0B9tKtr/5RmbQHFzZPjTrl3yEx3H1RySF/V8QooQtjNm/izR
	 yzDsykmyMbeOOUX2YS+scAg49UzUY65c9qU0+Hn63+qjCI41QxUtZSFOBNjjLfcEEV
	 3RwqcCasOCfo/YtvvQKmszuVSCXHjG/1oN17dRjg7ldDIVrbAMm7fAbYz0RTVrG7ry
	 rTc/IoOHmoLpqapyL+4xmjRdhMlQF693CQEcfBlboZ0i39K26vvA/L11PQyorXwWsG
	 83bWd6eXkGUAS+2zR0AtPrQyZza6Ap2fi+kR9j5MBVNX5smsxZNfd6AJkOfaE5IUp2
	 co0IDo6ZRTtOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C402EC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348056279.14240.2691200062877114142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b8580cbcbef009858e1813e73ebc573ed722b0884ae2104cf5a2fdc7cc0bd4
Date: Thu, 18 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713480562
