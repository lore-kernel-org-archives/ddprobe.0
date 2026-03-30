Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F305F3C6A2B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774871094; cv=none; b=UzjBTGVp0YOLY7VXmmK71OWh+rrwqBg47Z2Eub8A4vBm4ktmM5H/SMisJ9iqj+r5kowrio0CyBCD9+jmtcxrP6k6bfNjuP0q2sVDYw3FIfbUNgCjL8GU5hKJ1n6JbuxBAp5N0nrE8DFuCpUStH+BSUB1EV3P4ONmW2uHOSzOZjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774871094; c=relaxed/simple;
	bh=VKQZDDmnUVRil2nw2z5NHAptiXp6a8acoUyy2/SOeZs=;
	h=To:Subject:From:Message-Id:Date; b=O7691/4P0rR7in7LyUhtFRkfwTv+a+FvgWz4RBBKeM44b0cPrYojxevWy/PqM2APq10gl9vyGPdf3AdNfBLCkmX8YYn2YhpIC7Pe9qsVkNIt34V1ZcnXzLkAsjU+FfjyossJVDwVHQwn9y94sUJ8cRd2LSTmcZuEZhF13pCRxW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmVPa7wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmVPa7wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774871093;
	bh=VKQZDDmnUVRil2nw2z5NHAptiXp6a8acoUyy2/SOeZs=;
	h=To:Subject:From:Date:From;
	b=hmVPa7wmRKm2Qt49O5oWpoFL3Y0VU3OLL1Q5Bm0znywOFAGwgBwtDJQUjTrjo7hM2
	 aAtBiVQ0eORTH80XF4+9LsfvyVT0zw1MI3HtpT5JA8n6AF38TCXWi7ZgZOofoRqMnQ
	 RFZtdWNIETfbCWv9EAXmbzbuBvvfw2C+a4Nj5TYN7qY+9DQ2TGt24wtzfqJbN8Pano
	 J+MUH2AHLI3gFmAZPhy8iglAX//j7RnMFhYt9VdxZz/Ys76ydQZgtDB6D+y1SfeGSh
	 kMojpzktmIJZ3L1dE6u/Qf05/RlIpYk7FxiofoaLjw6/3NeDQCpnLXAE4iCa2oYaNZ
	 X1N5/ZBc/nY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD1010D14A6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487109362.17939.9350538941121617250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86b59ff4e77d74e1983d69fb0aac4f74207c2910e316634cc2802a5afb62b92
Date: Mon, 30 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774871093
