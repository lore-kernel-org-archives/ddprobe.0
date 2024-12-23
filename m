Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B073185924
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734983154; cv=none; b=UP49VGGQnWZRJmdS75F+Bgmc0Koy2hv8RwDgq3augieUxfVF0W3uYxwhkkR0KYHBSV0LJhGJw/8O95T+ExnU/N1JIE5F+FOBG9NwkOT/Zhnn6o3ImAJUTh4cAuK3pLubVZnUFXZtvoih9jv+2z350tShPubfILaJC2KNuGkUnC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734983154; c=relaxed/simple;
	bh=2g89dbMy78MveDqwmQ0P17E64vOSI0dbIt+o/R1r7O8=;
	h=To:Subject:From:Message-Id:Date; b=X2HOyVPUM685IDiubtdztugFMgxrZG8LLPws4YRfbYtZEsgjU2ntUITQHdScD32l7lP0E4gabllmbq+EthuSXJSS/dOx8zC9KlYuJswWcPcIIxDKobe5mvqytZOmdU26Lqq4mba1RNCIknyrykJHUcQZ3GmWZIvhlaT5+CcEWKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5AdDmKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5AdDmKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A13C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734983153;
	bh=2g89dbMy78MveDqwmQ0P17E64vOSI0dbIt+o/R1r7O8=;
	h=To:Subject:From:Date:From;
	b=C5AdDmKSo5BKAHqf6Z5WyfGn+0310r76c3gRK2BZlo5n/RNWZCJo8U3ltSQmH6B5e
	 CIVrkiTQWn56l8MkAbJq53rHR2DdHpoQbj3kkdei6KUksARZBLxQkK4xrKN1bBFejs
	 yoKfsG6zrl1svRPmxE+Ioeota2/wEJfdnl2CfgYLpJOUIqF0+UYSdek2Fc1I2bm6QR
	 7WCWGKZgqr0103O3PsPLRP7DMsjspKpTcAshLjzEM509jg8bpsjGyVQ7lBeF2tES6S
	 56Pa2zNdw+rftpniqSiY6zF+b11fDWRw05u6mVDrBP1wY23i4GkK68ww2DHIibR/eb
	 g+owrgxjZ+6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95774E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498315360.21352.8379929773271038170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ff9100fa80f6a65501c8a90a8e7fcb666aa416132f5edab67f5a7b009ea8cd
Date: Mon, 23 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734983153
