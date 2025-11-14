Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F035503B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763155194; cv=none; b=SUO7/xLDKLijzeoYn8E72z8ZP6La+zKZgp6p2JlZg/huLSOTh7rqLnFIflcFcVebUUxYpz/+SJE17hTnx2CcVgRvBF8rNSMc7zubHfe5e6u0/btln2A2HdTgU9vArJ2qeg5kahFIW2/V2sMjGNMzmyW8qJJXKREIz+mDPbw01Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763155194; c=relaxed/simple;
	bh=bCAby0uLFpnSTVu4n338MCepgZXok+w9bi/Xp2QAcA4=;
	h=To:Subject:From:Message-Id:Date; b=oOcMlDEiX5nI4y6Op7Rcx3ZpRTEsLx0N08MIRkCaoMxQzSInDTlOG+ED8N7ntrb8fDzrI7uDdGQXd/VV4yygdfvZEdza/KcUQWcnLYp00ldhp1E6vLpknXdsVGdf6KEjrTxZNNBPEDb2F2dKUg/yZygAWpZcVMy1i2caiM3+GeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbarhIYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbarhIYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DF0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763155193;
	bh=bCAby0uLFpnSTVu4n338MCepgZXok+w9bi/Xp2QAcA4=;
	h=To:Subject:From:Date:From;
	b=tbarhIYmwCcfWfb20usEPZ5NIQiMQhPz6YVWro3opB96DTzUGdzuDzC8UiUn/LRQa
	 ftX0yNstV5w0hOVG8zAsepJz2SNNcvfOyNuZ2wMiGn2DNocyOPReWURqqlrqJPKcR2
	 /M+FVZGEMZWob4MoqPDeGpcEfpFmC3DfU88eGlfsikScHCdPGeXey5bCgTaZLwzIiU
	 KmLhtmwZz/SP1XpD5EjwMTtKx/sRlknEL3zT9OTvxh9WDXKEjJ5rDuTNGz68+CeA5F
	 eXoGIXAZTCkqleXH9KIv9/yb2ICw24rkJCiR1HaIanIYtoZuuYNaVlV0WkQSQekeMl
	 PlQR8YS1LzsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70B0CEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315519365.21764.17777364655570954770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa301bd67766d284ecd5e50e8a68b129c3055098fa4b3e53c9e3b1f3f96ed45b
Date: Fri, 14 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763155193
