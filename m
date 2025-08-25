Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6B0301480
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756141194; cv=none; b=Xq0oJhjbyG+vGaHTFgpsV4OfYL7aLNLKBq5UTU5pjuoF8jnHAEqiHqvsk/1lHdzvLphp0ABD9WPpRq0+WhqbALf4gxibHF9RwPO3UTt6Tb6c/ZashSzl/kYSLRgdZO6sINnOjnDvb3snH8E91ahpbskuW3neTCicehvdZMtWtvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756141194; c=relaxed/simple;
	bh=FhU/yQmZQeNPaAdrqHzGgtasO2517Nj0JFjXN30XPpw=;
	h=To:Subject:From:Message-Id:Date; b=QEiPX3APA6/B3IZsBTD70obooPTrfZKQn4AmOQUAqM5cdzszsT/AmkE8BaVUCBBgF2mvtCp8aneFHdKXQ6NZDMmN2mY55DvKa0ss43WVUCT56U7UnU1I3vA33QT6xbB+B6IzwE6w/dCUFBghajj81NsaptkY2i5YRs5BgHIeymM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt2seRAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt2seRAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F850C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756141193;
	bh=FhU/yQmZQeNPaAdrqHzGgtasO2517Nj0JFjXN30XPpw=;
	h=To:Subject:From:Date:From;
	b=Tt2seRAsCyV+ShXe7fpohQJJQnOMUUhp2enYmIop0VNf3L8d8Bvg1+c8/Yt6+cRNq
	 jH0KsS8r8pzZH0Of2czsza2gMVSwsnFZR8ripLTlVO5tPBRD1x/K0O9BgGF42+n/Ac
	 vW6BOGWtX8S8fs3nFdbOKSvKqHhvSwMaMVgAizrhbpLaGjXll1qm1prnIuAIjuMPkg
	 tIRVVCaNnMZW23/GLRLF5uhJLmXGYzyVAg6NVDekA0ajwuhdpL2QsP0IK7bYkkkafh
	 03y5qSHaxPfmjdd3YSa357k3O+zRpjKaal1GN8jezZmuKCHbijfOAWf5Pn5ypeLN8r
	 23IDQuRPgcOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB50CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614119357.22738.17327122479587570002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504ea20e1eda68244d565524ecc07daac161d4ec95b2760c3aef3c429ca4daad
Date: Mon, 25 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756141193
