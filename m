Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91F11713
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745213994; cv=none; b=aqxaLWKCR2cOryd7czNq8a+gYACN/s6Wwsyn6TCfA+BMrysCGqXeD0+iazTfimgCYjV0ZJLnXtOkgdphbAA+Lzvf+koW1b7XkmXm/rMzWcGAngSJkiseFh6HNQDmPUZzoxUFCHS7u7A9ZQTv7X12uCH58Hh7UlKAPl01qnHCeow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745213994; c=relaxed/simple;
	bh=KsMXiiX9XPeK5l9kPbXvhlD4J/xqVGBIbwh8u/nvDVQ=;
	h=To:Subject:From:Message-Id:Date; b=WaWtknrrUYrQJV7lQqv2LmHndhks/NONRpMsRSpnuoD6II3XpG6CBCVT0POGYrCeisvEjm3/iOA/Evh32lT83wXTT0vQwVLFVbTus+NGrAylBjG31ZPLR1JvTcGh7o7d/nTU4PmMO0dIEAfJ1U0zh6WiDu5btQ6vx3AnrSTmkss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcyzj4ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcyzj4ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D3CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745213993;
	bh=KsMXiiX9XPeK5l9kPbXvhlD4J/xqVGBIbwh8u/nvDVQ=;
	h=To:Subject:From:Date:From;
	b=mcyzj4ZWWRMpbR5TmxH7uTwWy5+pFVH/6pWoPnhRrz6qnBDsLih8CKO+ntZmHWeB/
	 +3LnHnw7NqbEs0n8QZ5Z4afUzUFvJoWhWiiDTZ8SKK/9PAc/Fo8JPJSglHWWgMObA2
	 InK57dX54GgsZHYrPjMld2J+ddgkRz/S/151sWrlIAEY8Nu4wQBX2IKmn7uPIclQTk
	 z/oBlWE3Jwu8XdeTJKMJq3jbzx3sULQcVPAFdzUWhO6o1FwFSoeLE+ARMm4QjmgrkI
	 aWInJL8BtdcTEashBd8dRkRprzz2Dd0K+dVoFHajAcJW4sGkqMgLMaG4Pfr4SeHXJp
	 sJhHwLX0i1eJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA1C369D2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521399359.25622.13548115502421518994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91654ccbb3384f4f77f1ecd414ab483fced9ef4a6e3801ff3b27888166b984e9
Date: Mon, 21 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745213993
