Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A02288D6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522994; cv=none; b=DpVh596qllrNloK7Q2CCD/Q/LHASJJSp2DVRrs9ePAkM6G9KHh9kfOWrtEDTRHlZfWCigAunTmDn2W3hWu25QrP8bvXXLHCYIucmfgVxHu/fgxlC8gB/fO0w2w9d+noSX6hELtoKGE1XU4Ml9OOsmuBSjYkLUY2tKT/C36OMKPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522994; c=relaxed/simple;
	bh=I0n4MY4ahmm1HOA+2QZGREUadBASOtzaVhPzjeRYCUg=;
	h=To:Subject:From:Message-Id:Date; b=hzTYFNLsLbnskc1AacoZvejs2iNyGYxK8Xw9KBDfzCdcQCDFvmq/cTH9AlnWn7ePGL9XfvF6hL7mg/RFdejCwASrAov/tHB4rfqzPmM/QXVVKM/mzHD31wWDJy714XvNLof1eKVUBgYnp2zqXVW6mbedWxPizJTWHTT/e9xnUVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nfx8jDjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nfx8jDjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1050C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748522993;
	bh=I0n4MY4ahmm1HOA+2QZGREUadBASOtzaVhPzjeRYCUg=;
	h=To:Subject:From:Date:From;
	b=Nfx8jDjf50klIi43hJCK0DMmRzdU75jdK0a4Jj/v08rHK/yh3pgEuQ+uqMxoKZCXB
	 CHSsMHD13yWGSNRNCGIpvy2TAG9MyGAxrcb+ITb0DbWhQ3YtogbQEdIT+G0oRwoT7H
	 BWtJOUCZOgmOJ7Gy0jY3YjZPchKKAmE6IjOI0/9m0y++pVoe/0JPdfEortwEP7V8vH
	 0f0UdRCoattaANzU5rDDo1NxssiEYPFTLlNaHBGcaifOPgCRTRO9gvMHGT2vRG/M+0
	 t9EQAL6kaNQ3aRdi1aJGss9TOkpyk8EkEJ/KGPeanIQp/lsg+SliDU1TYOBqb7RdoX
	 G/LQ2U2zAxeIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA43C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852299357.19777.788778606275003501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616903b503abff02fbcdaef0ac0993536b2e0a3cdc283256898178bee03cf401
Date: Thu, 29 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748522993
