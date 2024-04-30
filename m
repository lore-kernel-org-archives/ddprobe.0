Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1AD10E4
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714438343; cv=none; b=I1tUHWVhSjeWZMBPLXgg6ZXTPyzokVqK7N08Aj9sAckYfxNag0U47Ky724gnA1/PlPNDaOkaTPeFaO0a3KAcKh+kb0hjAkH7nXqdBSQEZxW5S7cYkREsBKfmDirdS4v0MojgFRVx+J71fLqVZbjwIW4hImC5KkIiPVU/mr2GsRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714438343; c=relaxed/simple;
	bh=ha9HGyIds8kp/Rd+zRKEcgm5+6rfAopOaUfgwSAqIjw=;
	h=To:Subject:From:Message-Id:Date; b=JEKxUjJdbB549OXuwFfCna9FHr7ettHqQyt1+BLtzfOS2Gs1Td7D96BkyZZs2gTvXm2l7R4nFl3wsOpjW7c85mWf6t93Ebcy0e7nghwQQK9WXsMof+pkhnhx/MVweqUx3NhmJwRLYcExGIMGQ5m1bAfpaQNzWQN3fdq5TZiUB6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjmP9QpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjmP9QpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FEFC113CD
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714438342;
	bh=ha9HGyIds8kp/Rd+zRKEcgm5+6rfAopOaUfgwSAqIjw=;
	h=To:Subject:From:Date:From;
	b=hjmP9QpG6RWk2naTpE5IA3GhheMQ72NZirzqvv0NKrHk0eYuhO0iLZ5eGK6NVpj+g
	 880yRSpuSS9wKZN7aGyHJClVe57Gvq3LkBL9PklwClma5aHnxIGKjwjzFSK/AG+fMv
	 D2QN1sD/59JikbPClNmbA5Oklt5USO3asUlhKWpOvQADdgUyH4X6X3gJPV9FrOb2fe
	 8vODLLZG+dl/GFGldrId6gxXhnRI6UGOwM8abofe6OKnHGQxAenPxmAkSZ//xMZFiJ
	 zxNDZjVaagZGMZ5/Hs5/QoeMhLo/gKQjvyGPwy0PelFzQlH0Ysn82Ga44K9KNqJ228
	 6eIpFqqFOLzpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD947C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443834275.16011.14386637749444393358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5607003b181af2b31c8ec813e53bac1740aa2603d0890b43a5817276e7c8f5e0
Date: Tue, 30 Apr 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714438342
