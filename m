Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1636321D599
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770452634; cv=none; b=fczLRe3r5X9m4nmXGPlZSmFC6h0H4EweejNLmaQm2NzFLlbiKBtRC6hy7YjARQ++l39W84TxS0k102lrOcdPdKM/5N0VymBJkDvgrApWHpqAyvSC7X39zaTYKgFxUhkDSKglZF4lSkS7trCLZI6G6A9LNMnlfoKMHwOnsDKOdWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770452634; c=relaxed/simple;
	bh=E1yBL5ui/HD0eqwsGK5pvxNfi53HTuakxzb+OTcxO+I=;
	h=To:Subject:From:Message-Id:Date; b=o+2yIub02ZRqvTUWl7h5ZBOKQb457QbWV/ROoZJff7w3Car+P4w4AEtvl3eTINiudDGD+fgYufRzHHbjsMB/GUsOUTVDLYt0Wlg3C/2A+CCIWM3tFeoiIov/Nd0Bo11RQY+6/P5XSW2tyHEpuBeAQrDTW7nkIgQ9PfxCemM6y0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpXHFmb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpXHFmb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE950C19423
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770452633;
	bh=E1yBL5ui/HD0eqwsGK5pvxNfi53HTuakxzb+OTcxO+I=;
	h=To:Subject:From:Date:From;
	b=UpXHFmb7FxpmzNvAD1rIBEBFNWKifNsuzht91l4UzcfSR09syqDaHBKQifBAKwqwl
	 /FhxIarQDbWJKMlZ8N/7CiOYPE+D1ESuZZggLLSrE6UEAIM5n4yYIZfHNyB2V73ak8
	 vGQuWzd0UzbKpxnizBeP9Re/Oh2ElqQTw2dFCugmuN4lftJ0TYasIhLXqHOcNT6bAL
	 AB1Qa1h4d8vRUM9LdfMdzIqvcwja+Blt1MeDBJPtxO1Ok/fixdtx3TpnNU4SAnihgA
	 d0mOjoXDomxGnAKxdrlZGBmqXwJfzxog5rvIGxfMJofSU48PoClrtDzzm3P6gjd5ez
	 +QBdMLgdejK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1F0EE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045263359.12627.6902283760837819703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab636f07d3e98c86aedbe77231b5b6eadab377b4218bfbaac43ce3d1556b502a
Date: Sat, 07 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770452633
