Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676B11EB5C5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741462135; cv=none; b=fRzkn+9nppSbG875d65X7XZePYNgCxImPk1cfBqCBnaid4Zfmpuiyx9qW+Jh3C2dVmnGO3fbtgIck2rx16p6+ERzHodRj3D/ZLU0fTN82hAPj83BewTkfGb01DyWeVG55O6broDvqN5BkwYLNeypSRQL7wMzuHsHYQhgnl9YUgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741462135; c=relaxed/simple;
	bh=SYetfMgxunW5RSQc9H0oChAuoTfw0wZjYCGgZhOg+Dc=;
	h=To:Subject:From:Message-Id:Date; b=hncD3RRRopiw6NjgIgiaZvlaoBz7FKCsmBNdm7BLgogjizyY/Jfhhe/HHZznd4SiXhCp+DLelzjMPBEgu6jWCYdEL/mH0o2Iyk//wc9CxOuvHNEbwLpNeh9Z/t+VMDTlJD47p11d257qn31LXcwZaAgNPPvT4JlgjeIhWKe32uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6+OIacD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6+OIacD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D67C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741462133;
	bh=SYetfMgxunW5RSQc9H0oChAuoTfw0wZjYCGgZhOg+Dc=;
	h=To:Subject:From:Date:From;
	b=C6+OIacDfmYumuBVtad1K77/ErmsjE+w+aGXP/h50sSTIw6nSjKsOOGCiMaCdEz7B
	 igoXtm08mfXTSETwqQeh+DwkyWruYd/BujerBdax6YBgf+KIBgkqmt6GhCVnRBiM6N
	 1dRz6zDwsxgUtEGcryIhkLQBwqJdlQj7E1yarJ4QWuzLYmPY418IA6Rej1evlJAHYj
	 mTuovy7pjXNZsyH+ZdzFpeS5xm4o1ezOe6F178wMh1Pf1aWMD9kcFTvAGCxuBhak8o
	 uXLNpTdLIcoGLxFidouvnuwdn+vngrsWeaALUZ6AiSWVJQ8P8MOT9Zq7hC/NsVDKjg
	 QWfF6PzHNudNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1382C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146213368.14586.2340421485344205126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095987b2f0bb2f3aa82e7a8007a24bcddb28b23a57e8b245094b2dbaf85174d8
Date: Sat, 08 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741462133
