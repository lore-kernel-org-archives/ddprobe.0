Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B30BA45
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716314; cv=none; b=OGRt/SgK39NJOYx19OgNLnTzXNtO4g4S1B/KcYT7KZ9Gcn8aJyLyz96iHWTdB25oz9eHUkdRRwtrjucATl5oc+m+ALIgpdv7/KJXq/Hu/A1f5L9iwCJnurQ7RuTb+FFIjx69IBQzo3Vz9w5Z3oU0pkPyA/kYya1HzAhOTC+XY0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716314; c=relaxed/simple;
	bh=g7N7oLdgLusXSQYqAhjTIxBxQ+q0uBwtktFuwShlU3M=;
	h=To:Subject:From:Message-Id:Date; b=n6nmPAM6FvEn+4gEPFCEki8k7stEOKKhm0pHf0XAb9PsQVTJQKNdMk7sFc3ZkwX/3ge5yIbPQbSS/qbJBgcXOo96F9AVRAsK7rxbNBtbeVDsoErAV0O311w0I++vO3CxUB3h8TLaKdwbvfwMthdV6Unpu1aTjF0znCnfdGmbsW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lw8GWXu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lw8GWXu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26AEC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782716313;
	bh=g7N7oLdgLusXSQYqAhjTIxBxQ+q0uBwtktFuwShlU3M=;
	h=To:Subject:From:Date:From;
	b=Lw8GWXu6BVQVGK18Jm8AbUeJrNRzCBqj79Xj01PK9qf/BAbYBhtJJgIrk6XBiqiqj
	 owPrcAkcH9kXJ4UL0gEIOroFaSUTw+kEXdR13JH2KT2TsjXKbFqL1BKVr6LBtEOa0q
	 K96Brt53riCVXcrA/JIabKR0qTpRKgCjtUiCsiCNgEU8fwly+AbUoxw9XluCW+U+na
	 w8P1yLk+qfb2tEGZWAzep+FbeKwQ9c1fYgK9/0OS84sRP5AhJrpaYeEu8YVOYD1BDI
	 UyIgogHcDU6veFnBHvkYB8n+uLslJ69KR7KqREmpW2B3kTJuS2nO5C47OK+sq969rU
	 FF1n+70DhDiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9840C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271631368.5957.16802276735292572963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5154c82106245d6f39510d3e2c29c8e2036822cc0f9b0df12bbf68d873a7e4
Date: Mon, 29 Jun 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782716313
