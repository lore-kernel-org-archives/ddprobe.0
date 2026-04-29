Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBF638B7A2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777465054; cv=none; b=h6SzpwguoKAUqPVuZbOCypUUnXDx1peigIvQEAJO1h66BxoDVR7aAEZUCk9sogrm5CzTB/QsxVSD2XklTh5eyv7uuOPGVAlDS7N3iyZBdDIh5KDfO3GhZolreBbPREaGZMQUEl0Ulm3Sl3imJMqJiW5Plbx3Jeu9/1jawrK8d/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777465054; c=relaxed/simple;
	bh=tR9LpvQ17WfZS36itG1Kr8G4I4rJSpKjGBaKBgSlixg=;
	h=To:Subject:From:Message-Id:Date; b=OGacThhT2jZRPgleRUQDQonw0BgvtBQcYWA1l+95MWp0NfrBiDlAcKoJ+5F8jWoUWfOXZWVh0pjXUfHrubgqakWq7ansN2N3RNSsjsvLrJSFshGQyOXVDo2PmdiZxOpb+/iYmI1Okak9F79fR3/ihMqEW0rML1fWPFlxivLtj48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEATGAm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEATGAm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC736C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777465053;
	bh=tR9LpvQ17WfZS36itG1Kr8G4I4rJSpKjGBaKBgSlixg=;
	h=To:Subject:From:Date:From;
	b=fEATGAm6d2dahGrEC+vSemC99dPTuZd2pRdpfstLOKq5R9sdeogZTFdxTeb5cpaqC
	 aj2kn4dvB1vDhPoXN9MngcbpoXoujr1Ati5YZRJj10gnepBnjxfA3JTC6Wl1P3jZHV
	 hr5YWku5l2vb/AUDQJ97MXepR7k7GHZmkAcazRRuQej6R7MKV6rAmM1C8gjC8m4KCt
	 AGAW+ScMZd4+LHtvRbLMjO92XyCu1Piu78tMNvONiBP0HnqyBwmYDNdlqYtacLt+Pj
	 IoDFKs7F9uuh5xTS+piL3Ck4xHk9Vi+pANSpsji+HjVnCWH8g16MM1fjWVo2Xcl2Rs
	 SMZT2TUIyoC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DFFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746505368.14589.18301353419130393363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb535016cc786ba2bb16e70b2031797e2cd85467174b8f1c1815985b829509a8
Date: Wed, 29 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777465053
