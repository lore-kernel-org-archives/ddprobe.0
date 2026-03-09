Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81E523ABB9
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773041093; cv=none; b=MwbiSYYpFVKPAFottnHWS3O2vZ3fADwmTiXaZYLsplByGFXKcanMJysZCcBvgMIC6nxdTZ4zOBgF6ZjDVet87FRjOu9GzAVDFFpv+5DbSBTJC+tfU0+0a0ElmRDGv2OSy3h1AhmYYs3WlupJYzucKMOA6LRNTYFx14wLEXalmwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773041093; c=relaxed/simple;
	bh=7Y09ppHuqN4zxImfJoKdXdOcHjRbk+0zgDmYJhC52uE=;
	h=To:Subject:From:Message-Id:Date; b=U3lgOISuZ90uoQ0XRAnWcXaTcyrGP2AyUIoa4LhJH0roW4J5IVc7xlRjsSmmXsQrxs+5bu27KdHdcFK9Qt4DDmlAuZHeg42mH3+SOoBPdZ3ibObRzOrgQNBiWC2ejY0g6vZqIKUdGV7NTvsynlDRAZT/Ew2KwjmeAFZV6xaw8Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oO9QDmRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oO9QDmRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E11C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773041093;
	bh=7Y09ppHuqN4zxImfJoKdXdOcHjRbk+0zgDmYJhC52uE=;
	h=To:Subject:From:Date:From;
	b=oO9QDmRfpYNysEN96gExGGC08xRLhZvi49LLLUWMIKu2GfhMj4SRIRIl6ox6ouGVG
	 MzHwVxX7zpOzabdYsGpWmEOUIuU7aPrUx5CF00vTb6f7Bu967XSpE7jr7eFd6aCK1h
	 ok6lc91keEnl8gLo6prQdBOA+p9TS+wOJsam+uaHYJ2QDvqyP3AMlvDNPalTwHbQCa
	 P9k4p0r+AM1enT2kEfbYD32ye63dR597kfBdUSOsphdpoxcNuVNHKKZJAm76KZ7Xhw
	 t+6ylf1mh7gLfiyt/cCWRGBRAKRvO/9NsxGGWTmOWCMXBekaY5YUTPf6sAXuFzGKw0
	 jT93scqTVjjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94878EF36F4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304109357.12122.3251552193019092101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5faae292eac521de5ce596925bf27c2d1f3c5e0a0756174c543bd73031cefe
Date: Mon, 09 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773041093
