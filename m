Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198BE10F2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763818914; cv=none; b=cazq3bcavcDe2p3A3ufip+FMhIH42bkhrR5eATslYDC3e+qm+ZS9Q+6jCCzn8EYNblaWwEi0R6IrmwDpyFc/ILm8/3ZhzXZ5SptVhovak1fVI7DRzKDDUG9hHjgOoinqdliSkYQM4wQGGLZc6yEPh2j7e9O7SVvpTYNuYc2VpPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763818914; c=relaxed/simple;
	bh=a5/I0TZc05IqORMbduksX8ttdNLpGGkokN7w6gD42xo=;
	h=To:Subject:From:Message-Id:Date; b=ug34IPBjjHkzbDZFocf5XmVYoQ7LbfJt5dl7zccXH2cAZL1oT+qC+cn11miCgy8n34f5M1dAvSyC1VtP82QutCovnAZ2BB+OWwcrviHavmnO12H7HpnEW6DXcNCHdS6uxgdC0zeoMQBXmXG6+shuXhvjqSaaodxF6n0ZDcQ97OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtc2p1vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtc2p1vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763818913;
	bh=a5/I0TZc05IqORMbduksX8ttdNLpGGkokN7w6gD42xo=;
	h=To:Subject:From:Date:From;
	b=mtc2p1vm9FUN7comtVG2UT8yybcIlIYNq92StqY8khJTe+28zoweeYU7kWyGD/ELK
	 jZHDh+12XGEZPWQIWxgJ0CLHixFNRYHAXLZrUClhNz4xEI6zKIAoI6V/3y9+xLDhe/
	 e0qTEOtnN5rSU/feKwuAnPxUlJNHZtXTg1Nkf1CgZomkroHUcdviRwfGK/ztBVhqsz
	 LTHo5F160c0f0K4gbTLEoROQ7eF4dhzNNns6xA3bzTUe+4p6tISjNEXCYipZ8MuBC8
	 8zqGzf5o1CvyPJX0UYL+I2zxCyLwoHdwtFjw1Z5D4weUY1uRWfZ/1mOC0126SGxeZs
	 0Ou3qvXUtBfKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96189CFC538
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381891358.4430.8546812229754796303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc0fd2a08c156bd05b67f1c7bbfcf6d6c3146e850fca4c1041d60a636f513ce
Date: Sat, 22 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763818913
