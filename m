Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F2EEBA
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775422534; cv=none; b=VZp6Z359d2+RXEidLvlr3sBzBUI1WnmFpz0MLOzfzTIVR9YfAY30sn2GUDEx/gWWVR+ozVrMaLLumbcFaDR7Rs8OMQ1wforquTKOg3a2SLMUAxpAZiOa1EmCdpfLUk+FsDNG0DCaTy/gHuWjegYdu4i3GdNFuQfi0VWdtj8Puvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775422534; c=relaxed/simple;
	bh=S9ISu+AVP+ieFCE/t3nm97/F4IFeiWowlHUGRkRFB9k=;
	h=To:Subject:From:Message-Id:Date; b=SIxjrRTbl86plca1GzaTf7lkOGoYIBCPNhwWniBt8TtSMFpUpErnzPWAd5rtZIepVutnPWWzVDk7yVZEVJquKEGvMrW7TfKY57Sfkxo3xaD4QJyXRS7hH+mW4dFIt1ZaJrtZnbpHUBCnEubjtpvp6G1dofpOuCSyjVxmt7+cVUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdqfePeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdqfePeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF946C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775422533;
	bh=S9ISu+AVP+ieFCE/t3nm97/F4IFeiWowlHUGRkRFB9k=;
	h=To:Subject:From:Date:From;
	b=sdqfePeMrJKeqJMoc6bzGG08ZLwNehPSzLeUJXuCQSRctquqAQ6NMnoZFCsvwTx92
	 WX24cpQtpVT3Kk9+XZIMDo+MmJR0tX6VpSaPXKNXPnIhnaMyzYpRHljZRoMHZwQWMR
	 pkVZKYkb+FA6OdA57sLmkKB1dnFGXplH7G71cIUTSwgoROuDNjEBD4Jlh59J0D9KjS
	 hyu6D+3dZXPRldDyRIIcNjcnneNxAhzNzNLQv0KZjPF+aVULF5cM7FQzXzImdvkKLA
	 dCguuYobKipNGkQvT99sTffeEd0POvBDCcCcKJ5hqEvMRnNdcuKEfCEN4dQoehhiTx
	 8s6XAPmxep8hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE77E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542253368.25016.2542173931198965633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eac04d82f8a9f0aadc3484d2295090cb7d4edfdfe1a51fb6b8464db655db2ed
Date: Sun, 05 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775422533
