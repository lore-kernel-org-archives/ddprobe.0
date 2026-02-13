Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D54B19D092
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771023294; cv=none; b=MI8pQ3hiLokKsMCD7J/gjlXP6xo9SIq0g9FybH+ZB6LZSRdWNiayPQB8Ls1x3Jy2rrM7S2pRLcyaJSZjJvgZqZArN7WAOXCGe5skOmKYS1gtuM6N/fYwXEkup00YIwB5KpcT9n2+LbjSU7HdfBnR9P5NWJ0BN2+3qd+zI3Ou2EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771023294; c=relaxed/simple;
	bh=30hGmAktusQU1ZYiJtst/SPQqGcHrrgnq5qXp1PSVuE=;
	h=To:Subject:From:Message-Id:Date; b=VXZIyrEY8RlMP3oW21j1xGHDMaAB2WLUd+8PtTpQ2p/yVXF2X96LmtYNxRzJmTAmfb9mDG6N+Yy1yJIJO3l9a6+rHUbPH3l1JsXyyR61N49xHd/qRebPSoVwqlkUrOi+bMwaE5vZ+Tf1R4fXnIKvmbQQ6o9T4N+i5hDT3+wVCD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm9V7gdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm9V7gdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C2AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771023293;
	bh=30hGmAktusQU1ZYiJtst/SPQqGcHrrgnq5qXp1PSVuE=;
	h=To:Subject:From:Date:From;
	b=Zm9V7gdQWDenfSIFdSEjHuzFAvLSRL7NGLxJDJOQcikCTH0FK5aDYAgBgg/wynAqd
	 2AALTS1pwDQuK4Pa0o55pQei1yJ3d1BKWKNHSNM1t5CB1UH6pEVmpun7no5k2sKXiI
	 ET6neYrr8rYTJhtelKCeJPlsWqunGgtC5MyZ3fZtJjptgfJvINVvKAbzDLHY7TX9h2
	 hmCDE488FutfJQvBxLL3/N2UoHt0WVvasBZxB8X6m5NukZnKDLLIChOZe4c6lRg+Dl
	 Ku+7CSArBv/2xkDInwp6CgInXQrfeATd2EblQU4XAFibTw7xLImUd/lukshjZvZZ9c
	 uMqhXSHnyhrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC0EF99E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102329364.5436.13730386823930284043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271f77aa707e91c0d104f286a06647407c4e5c8a0942a0fe3abac3aaf47e3421
Date: Fri, 13 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771023293
