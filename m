Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3142E2475CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766208834; cv=none; b=g7U1E/sqnxNaqOWIsmasUgcMCh7cz7NHxUa7k4RYtGPTnE49K4BsYaU5Jj4Q5ahah9yvGFB60/3WG8XmB1AtUp8+S49yaKAfiMrzXpNUzZDf/17vCdaEAATMv6HZrWaYkWSqLKX7REbo5qgj2HIsymXWSkNixoGBQKLURqF1+vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766208834; c=relaxed/simple;
	bh=OpOK0rPKPoEumn4t4XSBGgqV6uXn4NPRkduprmgdAEw=;
	h=To:Subject:From:Message-Id:Date; b=l4YuXp7NpfvOzi6z0vBRM/EsrheeaerHiidlZZGY9FcF18EkJ6eNhclRR9/6os1jK0rs5sZDBSKcNZ8MURpynH7KyS87bFahIcZyZf1xvYRpT348eZ3iVAkqrN1oPE2F1jhgT2jbLfqMD3S4UYTYSdFlGgvfWBsb5LesKOxRKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKSIOaqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKSIOaqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766208833;
	bh=OpOK0rPKPoEumn4t4XSBGgqV6uXn4NPRkduprmgdAEw=;
	h=To:Subject:From:Date:From;
	b=GKSIOaqxUaHsFwKJl73vTlhUogxyHixmqnilFhCs101nbbaiur6AC24hJ6WeJ+Z0k
	 9s8vK0dLJuicCMYmY02g1MLqDPofq+LGki1k8nr3ZZPrXHws+n/CqROqAHzwMiFx47
	 jirEZdt7vV3/u2g8YmqhFSjdoXYwkCDfAaYf0puxxbVgZZs0dQb+VT7CB1x+8Kej3E
	 pr1V0xlbr/YTt0jVOPYMp+JuZ3ciTv7EtXSAeGgxI/ve8mJdV0QJSQ/Hw7PmQctbR7
	 Hao87PoSP8sDZkG2D0m1E3ADYVtn22kKx/n+vB01ZnGQYc0woQiqgigkHU5PwX00sQ
	 2c+s2AlusX62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389CE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620883358.1794.5916670813305419812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463e4cb1a2016b8a64c1ec05b0264e764d206f291614bed6d999714279e41294
Date: Sat, 20 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766208833
