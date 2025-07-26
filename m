Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12700322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753499394; cv=none; b=KuIfNF/3L6M91vkD9YLmqgajLshx8irj1MkiH8A6zjvi9xdHNGu1QsPwRDvNxfxAhmsz4vM54Z7PXcIaHXkrfDMin5HxLcNPAQzQWKX0Kxg9Wy2mNSXCRPiH1DNH0Hb41m3pdcweOaqjYdHD10USrq+17VNURsFhU4dnhhJpN3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753499394; c=relaxed/simple;
	bh=V46A7qmXUdD4sccpfbuel+kQbsyfSWMmULgoe/JcrW8=;
	h=To:Subject:From:Message-Id:Date; b=GQdryuRXSiYyGW/YuuQ1j3kRgHrCnYbI1ijRgZShyM9K18DchoJsE3jV1f0ofeDXsQPr7BubXMpoA+wclKmdRyAzxClnpCeRTW7H1ibehHt2HCXMk5ZHauXQgZ5x96WHu29OZVWTYL/hsK1M9z16w6O8p3mUsEPIhekwbrIpt7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THGhbsyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THGhbsyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753499393;
	bh=V46A7qmXUdD4sccpfbuel+kQbsyfSWMmULgoe/JcrW8=;
	h=To:Subject:From:Date:From;
	b=THGhbsywIMqdNxMrLCBgH7lXcGsZirhcxI9guYQe5Rfx0OrrXvDE7aKwhy6RTA7z6
	 KGo6FGJgdgRGJkgptk36usJVOdL/dH/7Xyf2Iaxe0pKwyV4qa/BKFSLt5BJNkguCJh
	 mNa7Srzd72RG2bajVKtvisZZym67X6yrm9X9bSR2pyRJnDot4y6QE4yQtldJTSoDCw
	 EwJfu8GS9DFx4znQhbtIOzThng41Jqag0owNC+3AxQQgNYjGwdpouPqT7usBzCqVkW
	 zUrngleUz3aCXkK0UTkmhbhVfm/JyXWGD5v1bv/sx1MYSJfRuxOEHrtAVwE5yHUBcU
	 ebKWlX6mkEwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AFC87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349939358.31541.17358886992602378253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bccbd7a35bb708c4f6598353f72bee719117df4ebaec8004ac11e1681b3a0b
Date: Sat, 26 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753499393
