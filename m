Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D856400DF6
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791189634; cv=none; b=WPllaDA/jouxV88r1VpW6H/YCodzHvUnGUfQpxGFxq8985m1r1mogVGuGaa69rEZBHrScYhyIkNxs37YGrMWe5pGZBW93RuSY5vOFmrP/eXktD04jm0+KRcg7QqL8uIxllOph2+dHjlSP97SUk39C8yrlfk3PTEWMA/lz8OZDB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791189634; c=relaxed/simple;
	bh=bRw4VyRtWJm7RPpRRokGgH1RAGHwBmoyzkmHcbOHP/8=;
	h=To:Subject:From:Message-Id:Date; b=TRDET7BLM235iMJesVHm6hBamuRWhNMCbcJ1oQ8b3gLurOaEUM8ZaBtQcXtqkAQ54y1HTLMS0KWnKFkOJjtqn2D4mvdOdV8TawE82OYG2BH4VLxA8xk4DTAwxEo4T9K3CxeNMMSbIVTEP8NW3HYoeyPGk2k9UCxz0ObCgTqdp6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erZVoCTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erZVoCTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA452C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791189633;
	bh=bRw4VyRtWJm7RPpRRokGgH1RAGHwBmoyzkmHcbOHP/8=;
	h=To:Subject:From:Date:From;
	b=erZVoCTwenO2FPFhSSK2lJ8I8mmC/uT7lApwstxoTVd2o//iGpYms/2hjmWKbNHfB
	 WwzoIAkTMd8ze3vZYGN0he9Z23WRW6QkoC2FWV/IZlDcC/qD4vr7jb9sRfsqg9rd/9
	 G9eanEa0RVMFIVeLGEC01Bdo9Cuj7liYWHHVbnKejex1PRt+xuTcnSu2d6otWWd79j
	 /v6vyRR/BjGtk67intGtpmjVneMvRY64sVzM6vMaqwR/3+Bsz5nxf5skMPFdzUSlvS
	 5BxO3Oc/pjRKREqKOjAA5T5aoZ2E2mDg3hsi74SQ5TvHlZzSLQzVilQ1HpaL2TddDU
	 19X2lZS72MYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38ECA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118963368.13656.15110570132211170555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28025eade57836ae7eff3d62efa14f1dae28110314dbc3652dcb9f71af4f7b50
Date: Mon, 05 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791189633
