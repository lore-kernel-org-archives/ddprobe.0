Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A417F4F5
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726936554; cv=none; b=THY0gZzDGwqDOxZQhKJ/PZ9W9pnyYHMS1qzKtoxJMylCx0gdh5ZXans/jVs2HQBs77FzQ2s7/tT2QR3wbHQZbUtnEsTyeO7VdJGSRFMPt0BbCbPhcWh0Y12IKyA1mtKogtq3WPWCxQH77w+Pj+6Zlp7sIi2RdEN0ccwR57WtS+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726936554; c=relaxed/simple;
	bh=rFTS6J4I2Yt7nUrmetLvBTC3JE4vTWLeUA4eNs3LdpE=;
	h=To:Subject:From:Message-Id:Date; b=NkQ0Qkgnk0/2e62+e/D3fsEe/GsC1rIzE/JpAk7kqm3up1aqpvpkTHqeJyPhYvIZbWrylRyXi8Dl/VPySeoTyFfTqdnU2pm61uclz1CBRogtrn/XVg6iSbN2PA0wU/UWW3MkekIR5tiBBLgbWLql0tCDMmHwC1J7TUgdWeT9UG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATpnltxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATpnltxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9E4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726936553;
	bh=rFTS6J4I2Yt7nUrmetLvBTC3JE4vTWLeUA4eNs3LdpE=;
	h=To:Subject:From:Date:From;
	b=ATpnltxvnEaR/ibF0G9n3bk0uzkBsNlA6WiiyUbNjDyF3P1m+lln9SfBRCdWP3cJ+
	 ih9nnAbRLNY3fIulScukkvcpQ7AHOJ3ied81386Kmjg64QKLjg3F/BNbWvDFa3Zwe9
	 DKlP9nFZHon1f/xvlGy7ShN+5UMHaye0B+OfOJktX4ylMWZ+Mn9MgDEnAxQ9DPWatT
	 6HH6MS3fWy3tINnj0IjNULqtnFHYWJSM051LzEYkDXRobok0nd2p6Df1d+CZmLq/lf
	 caq27bToxH/PuvbwCH/fJz76S0k6rq65jRgOWUwLgK/G8GR060wbDBTqHja6aSIp54
	 n5GezB5yfxjeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B02BCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693655359.5678.17747366354140858006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee9b63a23e83500fdda17afe86d4c7698852bc5bb9c9b3cbb2eaff9de117079
Date: Sat, 21 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726936553
