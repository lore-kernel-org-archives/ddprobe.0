Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475EF33A6F1
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787088034; cv=none; b=f4ByXKRXcyeKgNAFkXLOimx/eRqWI2wjXgn8H42b+Mhc3PuWDnXNrNNV+CI4o4C5UiYrBz5bldvBLgAnmS/54TIZzFJxzUD3Nq0Wuj3UjetkgbFWjBgAgnnWEo+IXgJCNQ43VMXDHQXRNrgvx0RF3aBCEvb5KAsNdW3wEpf2Wb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787088034; c=relaxed/simple;
	bh=jfWrZ5jwr3/jv+cPH4jC1XMjNDa+pkRV3Q3XBuMaVTw=;
	h=To:Subject:From:Message-Id:Date; b=raU5fZkEBwwT/Xw5PhppjVgF59EYhH3XNpRnCk85/o800+Aeep4PjCH1EIbFExcV+QcGsOiS9CYcfPdmqtaHSGqIU9I6Dq2gsOiwj4HsDlpIoQGY7zhdH96rAPM+BgV34b7H2k+wDMi0/th9mrNRKN5H9SGbhRdjkOvLzEy8AeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fbm+il7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fbm+il7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B0C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787088033;
	bh=jfWrZ5jwr3/jv+cPH4jC1XMjNDa+pkRV3Q3XBuMaVTw=;
	h=To:Subject:From:Date:From;
	b=Fbm+il7/d8rCpEPMhVC88JJhjnrRsLl5Z1Y0uIl0djhnYZdH1p6bZefmMYdWmvbPI
	 splJIFO3tj1tMcLgWRCtkWI6fw8V7LhF1HkcTDzfmy/ETFEK/8+cslP0IksB1QFr2p
	 XK2F03Pt9rVHmpxdgxSwDNl3TtY17LY7YkcXpV375F2qK6mODN8wix+pjVBnr/gTL+
	 V9e5QIqz5dmy222FToTmDl8UNvCFNXgsSveqfCxh3nDdsN44SNEGU4RMIrIi/bMb7h
	 Bx8XYliftVEDpnMs4EnvQN3dy4PFgF5Xz0LTMAFllFVUuO4qs9+JcEYvSCwY5HcTsM
	 7XIRwB6oy+uHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0DAC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708803369.26231.5535970367157367850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2787bbf342c352466129e30bece5aafd68684576af0281bd8a8fc7d2604af0f0
Date: Tue, 18 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787088033
