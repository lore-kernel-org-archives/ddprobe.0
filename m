Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8B9946F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713607223; cv=none; b=ZWS6RQ6DNIua3bUCRvktni1ZKOrSOIiXE2niB5UEgvMw2OleqiHRS36Ulg0DXQXGBG7lVcSbiddQk54+vBqXnbJrBABkKwmU9kpXSxJa8Eg7f6zZEqoEMzjYdnSlRNB4HGfnPKvbfeir8aCRdnq9YU51A03PUAYy75tcniUulu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713607223; c=relaxed/simple;
	bh=O1E8R7SbsWYDRCC7z8dIvAWqvkoWKanmCNDQuxA5cA0=;
	h=To:Subject:From:Message-Id:Date; b=m51GxQGQLS59RRszjqiyEdVqw44iM2jLU7IT/jh+rHWaybEe8GLLfV204TWdT/Sm27bLClewyqBeKi50axaGBmp2lorTAq6n0+mzJcACL6u9Uc/qVij7KNorpV3xIUMyDHVeZEUOL7iMN0+HMDnsPnbOAgC4joaOjfPlJooBVpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj4UYX/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj4UYX/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF63C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713607222;
	bh=O1E8R7SbsWYDRCC7z8dIvAWqvkoWKanmCNDQuxA5cA0=;
	h=To:Subject:From:Date:From;
	b=Jj4UYX/n33Ki2V2Hs5yk/0jx34m9Jku+KMB4E/tgJNSv0A+bs0Pyq4OotrRHevC1W
	 wtQKQkrYp0J7Z/TRMSACfuFz0Iwj+vkct2inaVYRs40MMaVJGgeJYyCVymkRd71U2E
	 WzkONaSfjJkFoVwdNe8BZoWKlQYQyPgB1qDSRWbbCOSR43KPvl9Z8YenGmpat08Dph
	 YUhn5iwz2TbLDMwYIUHUCH9m4OPmbxWds7TIkqBhZD9mR2K+ot8x/v/0Htro91u/l1
	 jduqbLNR9Jo1jB5S9nQDuQ98spCReLo1lQ83IpA4zDAxfldACTikNrrZqW9rWMdv0T
	 95cpNRxKl6TDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76A7C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360722278.26962.1673699630898947243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8d56d7fd2a450d9fd4153bc15bec37a5602e762bb65a1d14b29ce53a164c84
Date: Sat, 20 Apr 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713607222
