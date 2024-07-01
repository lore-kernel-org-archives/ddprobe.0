Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5254016DEAD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719866123; cv=none; b=No0Lcij98/HUxBWGMpsRCmBGFy4gakI+tsnwi8OsxLF73XQO9p5Wzfdn4OAYk8auheic6WClMxZy4l0/l5+mqUBzEWTH2M+6cGNLdRMo+BDmMX3Sv3p4Htv1fKnvy8o6XCSYSgOfD1fNrYNzeW+TkvrnpVq/F0FN2i8KtBX8yWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719866123; c=relaxed/simple;
	bh=38WbufswVemAF/KknoRaixcb+kQfxn0Nzz1hytiEgpQ=;
	h=To:Subject:From:Message-Id:Date; b=Qf/YOiudHnchVySMFL8t/w4GXB0/aTyIoeYu/rpwI8hIHDac5ucsMxwdLzd7Rlwm+A42qEItrbVGF/3slGUo3yf7/oKKI8OIf+DL1j2+h0ZmpCsSamXfbexFAFnN7EHqhDdJrH8XQuWk6ct9AOux4bnUf99LPGUXcRkqCdGf+sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx7AvNf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx7AvNf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34DAC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719866122;
	bh=38WbufswVemAF/KknoRaixcb+kQfxn0Nzz1hytiEgpQ=;
	h=To:Subject:From:Date:From;
	b=qx7AvNf2KIehmQJ373JZDOXrCNb/9dtrPPPtOEfBZjE2pOLcri/BkByRnyuVItnmd
	 t0DbN0fDl4J4I+1MtGT+FJKCY6bQT32toeowgDtFWWTR47OXcm79GexKcBL+hS9Mca
	 oOzWtpGNhtTNmCiaintdEFAwYQqBkYD1xG7QsZAu2FGMS0UsKE2QuAvaY0Zeikz/sk
	 UTX/Xbkp5Ea/BjkNAa0rEhIraMRPtGQTG6sqQmKTJDHzqwURh3v0CglfnYEbgPTeDh
	 BSCio594akX6in5xOgaKD0jXEdB0MMwBNyldgosvBVGe9tDaMzLQhCzeBzAjSYd3Iw
	 UAcp7HaApKRuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD141C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986612279.20679.3200643935484796410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405f7d3afb78d050ddd822e7a9e89e07de2e13dbee8251259602c5225b07ad42
Date: Mon, 01 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719866122
