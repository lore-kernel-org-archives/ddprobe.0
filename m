Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44022A59
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767535434; cv=none; b=BNFHMcsqdtIzVCTZWTQXSpY2YAqDZ7HKSwVJHYwfj45BZAlzfwnJIW7uJj+/rso7jH1XjttnMaFvpLhHpzpjX7Qx/yHR1jUSoznkmRgMBjJlAA2hKHM9vhsuI7aQbtsX90D8G9Ql4fHb9SoUjGCAbLYyv6ou5QGfv3y1eiUnujw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767535434; c=relaxed/simple;
	bh=Uxv2ePnfKqO8EjUaAj6qhGUgLv40VXC/dFWu01eRhRQ=;
	h=To:Subject:From:Message-Id:Date; b=TH1zUT5AxRIVPzYF9WBJBYHjnjXkX3nmi90Z9xKGj9WY/p2voc3g9N4qhCj5Tqks0ERUXOClSK2HQF65/1sJ/xGhYrrP541tv0DmO5kB+KyAWds4aRP5eYuB6QBkP7d/WtgNiAA10T7/1/zi7c3ihi1pb4mfcqNBlweguJ5Ev+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4gkozCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4gkozCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767535433;
	bh=Uxv2ePnfKqO8EjUaAj6qhGUgLv40VXC/dFWu01eRhRQ=;
	h=To:Subject:From:Date:From;
	b=r4gkozCaed/3U0O1beFCC0h+mVUa5D9VlRnFPvNZlcWVdkLIrA7vzHE4YJZBgiWKo
	 dsL7Ca5wQ3y/pWpR5ihH05S3R0sgd6l2LgZj8y9kpxdSswohS74TXtnIOlIs61y4cU
	 aKgn7wniImAD4sqbtAk5gOaOMM8+JsKKrONauiFDgDvR+nHD5ty8jFFYJTFrPw3lBT
	 T66wBBh2kuMGQJnvcIq7oB2gQo0sfijdnYEvsjqEtF8HSV0U/ApZolAmNJxhuccds+
	 lNRwuI7ra4d18JFJHC+3YgSEiA9QoRzXE1ObGwmHcxYm9hZrLfNfjIoIfH/ZELONhQ
	 pYxRkNTCoeeCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525FC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753543357.18386.5180206096379735923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c367300417333e7ca86be4230fc760878124fcce9e9117e6bb05d774a3e7a9
Date: Sun, 04 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767535433
