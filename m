Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBD91A683E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790392834; cv=none; b=nsg94AucyYkXk0tpbKqkak8DcMbpGAaRyZegfjBAVCutd0aJUEQM575W8pZSi7TXMQ1DfqeskNq5IrFX7shlnaQlpnVFuyTBuFDRoi4D6d3n+IOee2rI16y0TjUZN2Jxst13U46syzNnd+8gZGzLAhHKqPQ99WoDI8gr4LG2FlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790392834; c=relaxed/simple;
	bh=qpnEHSw/j/UIGnqfoG0HZOAeg1gooYExxofLVjdh29M=;
	h=To:Subject:From:Message-Id:Date; b=KgAuXuXnJ8keNBFx1my6gmbIrqeJ7VRL3/ZrF8I7kLi/uhE3G/Tqm9iVI9Lv5PHB8VJes04/L1oEak2ySYsU1OWIoHW6hSGkSGIjQDKb4Ss9ShVi7irA8QSdzTzGoqZDPykObOAPwmdfTu4UsJcYzfgCBFlYpnY0ahpQuhxa4es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB5qMnGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB5qMnGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAB2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790392833;
	bh=qpnEHSw/j/UIGnqfoG0HZOAeg1gooYExxofLVjdh29M=;
	h=To:Subject:From:Date:From;
	b=HB5qMnGfGHC+CU79P0teozQrRWA+2HU8vAGZBM0MRs942OIIqzYG4QXyosBBMMLwP
	 cJ7zKQz6gKHfIlIoBPWlyRxoMPmXGuCsgPweCAOskTIGClD/vl1XrnGlwttTMOVSaL
	 Z8w76KOKR11zTQr1aH5n6B3uIhE/UOQV/ZlqRZKgHOTW8Cx0MB3IB85Ot1V61ihyKe
	 9/Pn7IRGI8t/1hf6kakoxx34AyWlV2AtphteXvcSaCOKQ5Q2znjX2GDxFG+08jAzS/
	 D/klqKTCFXIhbpVZEc9sWwmbM6EH0rQkl1a1r6J6t1jx6ukXNvBu6qTKS8L9aT6jb2
	 dZsBkl4fRFS5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9769C9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039283368.26792.9761226972877465618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e68e0f1cef807cfa27864ef4a3abd159908b8773e2012a6893de80bfca93ba9
Date: Sat, 26 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790392833
