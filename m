Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149033B8D4F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780638274; cv=none; b=Fcpc9Gk3L0i3bFw5ANZ39y3yqO7kIoKMjOmGcdotaG0FYAGFlpi4dMaUvUb9fs8oPLM1iW34sUUyWNfh6QXWgdpC7gpoieWwsVR2Z5XyGOL9UDg2JhZRL0D6kyhJzxpEATOsaLka4znzo/K+9TQ+FD1koQcjauXras6pVlxJZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780638274; c=relaxed/simple;
	bh=bVgwvLegBcOg0Ka4yHb/ae9K1+7FOTNOQCTovzKOjRc=;
	h=To:Subject:From:Message-Id:Date; b=uMGCnBtXJThRX1Ba5BKPi2U622WDyL8l5xi5WEZ5fgzX+cyLZr3ly8e/+EMvpnRyOqzFuQfnYjxuDI849GYrPyPPCUOWdxp2x6pQBHhZS01HBHTvXBq0ZDO4ShcLYu4AmRYJMi6X2MORLpdkyJmEvUh1aOqLpZVuN++QQykY7a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ibtu2cL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ibtu2cL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92F6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780638273;
	bh=bVgwvLegBcOg0Ka4yHb/ae9K1+7FOTNOQCTovzKOjRc=;
	h=To:Subject:From:Date:From;
	b=Ibtu2cL736J/rHObm4DKOo5ZwpOrJAi6UP8pl0NUd8OrpTVp6zaHIV1Hu10rcT4Mk
	 Qb0ECXTpwNNt99MsnyS+TIPXtsqtkWErZqTc6TZfkl1imrrxTX2dw3gE5H03Hbzgva
	 puHooIeeJX624oMw6nINnG337lNeeyMrpWM88l+eCgwOfRDihofERYgC2VWFOKs1ba
	 iz70MHa24GsEUtJvpl8x/59R7ebtPXleTh8NDFOypHmHtKUlqJ3c6yFoxAjtYQtVWs
	 IkRjlGfbm0yaHiI5dwdJYbC5ZMbyx7atOXjIzA+U5Ulogs7YZyWxChn6NAIL+oiheY
	 NgDS4+Idbewkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4CCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063827368.2083.15730873363087784283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e0c2cffb6bf49f2f5fed579e98a96b54ec5a96d517229d428ea0859a92957d
Date: Fri, 05 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780638273
