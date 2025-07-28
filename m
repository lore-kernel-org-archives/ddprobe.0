Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2661D79D2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753661394; cv=none; b=iQ6wXVUmwCRxD1mmsAQJXcACMKJNWahVPQBi0XOdABgUW3sd/ZfnO4ZThafs2QjZzMlseFd4Bz0WfgQiWnaqsoprk0RZcwKtK2GkIrqHHDtl4NgzTcvXMUdfp398UNG2C5vA8zWovtNPrcrvrrUKjCBcg7jjdn6BlKzfVfg7a4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753661394; c=relaxed/simple;
	bh=+au9py+mb1BNCzCZmTJakeILzAAKlobZpMoFDjdirks=;
	h=To:Subject:From:Message-Id:Date; b=nGtJoUjFU2NSjnGogYPnF5R3aHnxc+vRQ/F4Jd5fF9IkuvgPKX/uC+dFAVSUS5GnoKF5m8YvKXn3Cpcb2ou1V0XdwXr/492wpflRPpGiblp+uxL/ZPYuEJpHImR0KKzDXBIuDx+S2mv/YnZfe/w9CkFi9mWi7KOXBAkEpYsXrmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtmFJ+ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtmFJ+ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3987C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753661393;
	bh=+au9py+mb1BNCzCZmTJakeILzAAKlobZpMoFDjdirks=;
	h=To:Subject:From:Date:From;
	b=FtmFJ+kiAiMxk34BgKF36MIUMkTeF+JXpsSZXprZz3h681LCfmk7SS8spScOyfFzs
	 BFMIC9zFiUfQEyX4BXvIZcFHUBjyyrHMAazSaiBBcRPG327lIqx1D+RSM2TgzX8KIW
	 KPQyX5P5Uahpkx2FJ2MBlA82AxgN5bwI+XL/z2MCKRSzgxEWRCuv2ctoKdXyuLFJQk
	 mw01+CI0J0SW5dmLZ/53/FD8as7nzHEOzDg+wpbkYC+JBH3VdkdraqOf2gtE6tdo+O
	 3aUrSGi0F6oxLTp6fhRqrnCUuZvLMlIG2jVlD1ydokCUKaqMgH2kqRkqaTLYYpyHqe
	 oesI4M0AmY9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F218C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366139357.11887.13937030807244956301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79234155023cf266fad5fef94ad9aa02061fe9048d0e5ae9db92857dc1e10ed8
Date: Mon, 28 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753661393
