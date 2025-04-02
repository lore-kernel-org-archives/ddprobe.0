Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3229C1DF975
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743628794; cv=none; b=jcsQ7zthBux8sEMxCpJh+1woj5llxIvjnKgWYpg1uy2laSm1eASwNX7RgQyQTnL2awhBB0M8EK/qWxaWQt2n85Dv3+2RjpElfeLudpDta1BkVTti/K6VtDs2uHi75YfXuoHsDwMVYkbO+ni+zJ0riZ1ctVN2zlfg64YgPx6zqJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743628794; c=relaxed/simple;
	bh=JB7qqGQFMRGC229kKHMTG99/f4Dal6GGIDUOXP/XFt8=;
	h=To:Subject:From:Message-Id:Date; b=gT2L1mDX9pVxqyoD4DUExsNySsMc34S5SzcasOUDVkGVIbpBe0c0jh0bO8C57m0Q+5V1ZePYmYSutJQ5r5/O5eroys7MDxi8GNC5Y+sTK8G3VGK39S4TnDzDHUnx9HzyoFuykIngX60j8mB7jZmstVzGh3GTP4+4qrrgKwaSVHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/FfgNSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/FfgNSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A8AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743628793;
	bh=JB7qqGQFMRGC229kKHMTG99/f4Dal6GGIDUOXP/XFt8=;
	h=To:Subject:From:Date:From;
	b=r/FfgNSZEBVA605VULntGxSjEMhYrWO8ZxpUvlR1KKPI0h4ZS42NU+i+xdIvbvR6T
	 VIb2iLkAXmCGd01RqdgmbST6MFQWaJdRk4itpabwAd52PoX8MMFCtPyMtMl47KwkRx
	 Bh0cwcTeE+jpg9wqcGDW4x1p0XxxiNwCidlwQBLBF5f7PJB3TgrMaNwCFwEBKZmUFw
	 CFMel4mhHw73AWlvqjMAzA50XEUUjCPnnrTakG8fyu+5GjjDwgQlrnH47I0b1e4nHb
	 OhOgZeyLx720L7prSiMUnkKEPykIP9Tfl2WsG/zx1XQf5bxc9Hn/VAu9Y4xPMZ2DsE
	 9ptBYWi0iuHVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9AC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362879358.3985.9427174940695089962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fc1935e3098337bc41ddb421e7877fd983824ebdc5dff6b5ae601b3b4b3eab
Date: Wed, 02 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743628793
