Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A191C2324
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782155194; cv=none; b=ICHKDHgvGGYQ+RSzEosc3WgfCvuAwKrxcaQVs4GcGqWo0tvJHeKA3SfZPR4Wcgm93bRjddlOlnLxp3J12XozrOcrFP9+i7EvFq65GMawACLkhLclq25eOa/yGONDtN+7GKzDHhjdejVzkLtjqOgxxjVS8Pb9nD6APJMxTRrx4H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782155194; c=relaxed/simple;
	bh=JjvEIGf3lU2coIgEBOnhBlMB8GMpnRSwgMAqhPefFsk=;
	h=To:Subject:From:Message-Id:Date; b=h6TgAnFwYW+NrcAW0cB4LpoTKeb/n2jpxZuxL5E+NIt1elB3QOqPThv8eGvbw2t60WTLzETrwUbQalnhh/Bv4TCX3pCDqNaYqVLz1DAF/YT469owBCHoIm21vG9s86BjFywSsVWvKKHCtX5mASPaRhew4MDxyPLdd94dgtYAAGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrLq43td; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrLq43td"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4016C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782155193;
	bh=JjvEIGf3lU2coIgEBOnhBlMB8GMpnRSwgMAqhPefFsk=;
	h=To:Subject:From:Date:From;
	b=hrLq43tdS0j2b0M/Jeu3Hh4nELm8/MmbuEDwEU+5IuL7l13uYNVX4eT3GzbJC8+kV
	 3GMHkBx+96kWFXn4i1/w5oGC0Zeo7LURTSp1AQIFcNDc432BekXo8b0Q+G9eH0gAgq
	 qAmmPZlssEwJj6vLRNV38dqIWzJt68WbcbPDaLY8TUGr1v6LLOQ2QHMXJ00s/0MTiM
	 n6LOT5lT41q7nV+2imTxiN3xpNbKrzfnfDKXWbuB4v5bm5CMwZSJHXaXUcsjVJ0mxq
	 dyWkxP78DiYyLNXRx81UBBhoyjcnmrZpAcimssC7QmXQRzXVvknVKSDn9oVx6t/p0z
	 oKWXJzTcKBUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F32CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215519368.7134.11801706763411352461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1769bbd2a63323a9ec1b85695f7da7a6132b0d509d6cad33e2b631b5c55253d5
Date: Mon, 22 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782155193
