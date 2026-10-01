Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B829377018
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790837434; cv=none; b=FpvoCIrMyWSFoWUTf/WAJU4eG0S0eQMPgn3Xd9dMU2ZCyyhaiJo8QgNmI3hwGSUrk0uyqR/Hbl7uygFD5v6G/xmEJcveAjf8L7GGnQBiErRTw8PadwfCiEQQdpNbUQmsgSnVyO5+Azooqpugvhylxa8r8WyFoQRx8qB/1KF5cKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790837434; c=relaxed/simple;
	bh=Q23GSnZkWAzOxvZRoEYM5c9F9/wjZxdEb3sJ8BfjoUA=;
	h=To:Subject:From:Message-Id:Date; b=OFq5nffxVdGDPI2vphh4MOSYP3CWtlk4Qyn7duxLx//2A1FCfe56/cx44o0eNdHMUA0A1rqpFZxY7HCQRQx/KRCK7y5qMrPIpe5vUI4kUqCe9unWO4MMBMVGjUq8gPieu41OGrSASEtgXnHk7AxiPnQhjqoXobeIZzhuIAAIyGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaB+Av+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaB+Av+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41FAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790837433;
	bh=Q23GSnZkWAzOxvZRoEYM5c9F9/wjZxdEb3sJ8BfjoUA=;
	h=To:Subject:From:Date:From;
	b=kaB+Av+4lOBLvyZVYr0W5utzIAYzQpDqmkE3bbZ0IvkjzAbjEwqtFy4akgOf7HHBb
	 IPnSvLishOJNBMsI3FPLwCiTi6LE97xoC3AFo7yVt7mSExn3mJBdM2ieGq4lwZQUh+
	 spuGOm1vFp6nb6OPx7TF6rxYCphWap8jf+y9JizFKyhGI9fJYRlCceK1/bJ6PKLCZt
	 wC2HkmSosrlCHnRJ29lkJydVI6+/yg9g2s7PaZoyEI6lAsVnNr6V3Oek5YMa8lN7o4
	 +PdsCKUovaN2SeQ98d0/h+mgVj7h1t7O7YdDiD9+lm/O28RW57rt2AEGnKj9aWrxAy
	 4KIjHw/8DSyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA18CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083743373.13596.2394655721903050058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc16ddfa61113312a2d6ad0234479478f47cb6515b41337caefd21dc5262759
Date: Thu, 01 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790837433
