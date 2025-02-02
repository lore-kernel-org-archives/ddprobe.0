Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA9D214813
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738529753; cv=none; b=tCAieLxX8C/2R5DbPrG+FGtbM4SbtWqqfBIwSiCSmhhbtLs84boPXACwePg30PxwGo9Ulc1STssaetRUAYdAEuhiWHMyRR5TsabFpnq9KAPdU7xXRM9VhXeRfrcJ2pB/pG85dxfsymQYZM8EezRmYp4f4r2Ozt0uz/o9pwmbX+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738529753; c=relaxed/simple;
	bh=Pruz7LsvTzor4X9veEQe9U45Bnyh2wreQ65nSUPMHp8=;
	h=To:Subject:From:Message-Id:Date; b=VIM5/tf8nODBGX/xRdQwyIhcKSl5jpQmL9kwS5jS3LF1f1T5cHnMMzz6E7YT9yia5DPAH0gXW9Vxx9HU6lqbqevi1anryRjJTP85dlBVpOJqb5DUakT2F+CEUJlkBHcE2W1H2HvtJsFaXhgOJnhS926lRFfS9WEkvKilGNGY368=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur8gplIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur8gplIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0968C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738529753;
	bh=Pruz7LsvTzor4X9veEQe9U45Bnyh2wreQ65nSUPMHp8=;
	h=To:Subject:From:Date:From;
	b=ur8gplIRdqGAhyZHtnhC/jQRLySlkpJ+hEYzWiBtY4MDSWjWi2Q3FDfxNeIiOIjc0
	 cWMBZLBf9S+TMizpkSKNGk/9Lb163ICH/Vr+Jd0rbRhdROM8X6E9363addRaF7oy8r
	 W6RZcgfdW9Id44xfXEcxdcU0rKzz1lDkQ2pSEb/eoJfceykCjQSZvTRyt4OfuL8zDa
	 s25PiriXpbz3jMFj3T/IP6Ohfchx6IE7B+hqH1xu60VVuD8S42yHc2Y4+9p8sCi6Fh
	 y0+C07ZG6yyK3fW4Mhski/AZUlvPTGLc+54FEBn+h2dwUxv/gFlyM0SNHHeecetyf0
	 DTPdtbwmHJ0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F20AC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852975364.20666.4869714783718927957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa06736e05e7d51a8635e7a0b246953a8a6aa00ec68036dd2f85d01164b891f
Date: Sun, 02 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738529753
