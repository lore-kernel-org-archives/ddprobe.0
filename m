Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA03DFC62
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780671274; cv=none; b=ATXV/i+HxrPR43bDgKBSgMeXSmZ8H3AxuON2CC4JNsrOAbC7nve+FC3ZHyXJLnq94EAEcdNfx1MKWC51/bEyxWTb4of9jQzcngRAsMvK/sASNDYSBGWYH4e2vdK0UJh7EhbsGUvjKhpc0F6xhbMQmaufHHofrh4abk6yjIgIogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780671274; c=relaxed/simple;
	bh=ScEVZjYzvcmMTkxYB9hk778QQi3daPUk2un92t0I4CI=;
	h=To:Subject:From:Message-Id:Date; b=bjvQeIrALwZG10YQK2bTgeTrlRIPRn/iX53KJdQ/Y+LxVvqVKVC4KAs532t73juFXYilCF064hVk8XOmqaFZveyiQyLdlMz9/2QYJ7Y34BmkHTsDmvBVPSNIqExLuBKrQmAq5rWyKQt17dPnPWvYsoGXVWVZaUrGVKfFB05Yj0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aarjwL5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aarjwL5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC36BC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780671273;
	bh=ScEVZjYzvcmMTkxYB9hk778QQi3daPUk2un92t0I4CI=;
	h=To:Subject:From:Date:From;
	b=aarjwL5ONbbkjJZKv5LruoxlGaDXtIbLoLrTSNTnHnHro7e/WhD288OjopPmoffCI
	 yBHqEQIc181sdFrUbLUT9DnkXlIdouOd6WQiRXbRLRoWoawrp1eBByltfbpPqCvm1K
	 YCLyUepkhjYt1HNpsI06JPYQK0JoNRDfjdnRpWtdqfad18Pfb54FxXxoIo6mrR0Lw4
	 NbRFFPDwDhmD+0sADAZYDlMlFMTfKfWaR3oqdvM5mHaJziLSd57uAafierdmJg07sz
	 AQtrYV5A1RT3oEE2KQp1SBypVMV1PspbBzFdiGx8Y7oHnltCzN2hT66FOONG9QfHz4
	 lgCwdSRacofBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98DCD8C81
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067127369.17265.10837759095937731059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd50fc32658960cb31360e12a3ad5476bb7ad68f56b98382d313c59b0379643
Date: Fri, 05 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780671273
