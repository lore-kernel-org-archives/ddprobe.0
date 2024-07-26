Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6488DA34
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721972154; cv=none; b=rS6LI2LeJE1ZhNt/L6IRBEP55jd5j+46yM073xc3iJfyQyS9L9IhJ73Q795p2CfO+fprFTxrmhNDZXnHw47MZGkAaByS3+oJ6k1K9UiiMkv6tZzdtuSyg4brnXjPybLD/RjFOfeuVbq+CVPt41sNB+PHdGnVrDOOIEUs/Y4XQGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721972154; c=relaxed/simple;
	bh=s/j6ghQCUEB9k2JXR4c0i+lZ6aK5yJ9eR+0ZuV0+kcY=;
	h=To:Subject:From:Message-Id:Date; b=IrNJQK9wlkq7esyot4AnUh+FTVmvDZk2sYRTgjmohCG8ugOTzd6NORioe3a6yp7Rp8R1TrQ5JYBio6TDN/ytw8OiK8fqlI6XeIgPPpHrxE67l4K5oO7lek4DY9HjhuQPVROtV+eE5RxxxG81brjMjCE9gXrm9h2OWU5jWGSNY2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ4z4aJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ4z4aJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC008C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721972153;
	bh=s/j6ghQCUEB9k2JXR4c0i+lZ6aK5yJ9eR+0ZuV0+kcY=;
	h=To:Subject:From:Date:From;
	b=IZ4z4aJ4XydD0cF1yoamo3oKJ1y7sarC3bLm9bRBX7Y50L+v4lsSRtOJNLfNJ/OSJ
	 QLRMDk9JKuktsqmLCFh6EqoQI1f5exGcFcRQPScGFVvCJ8gORyRvGDCCwqSDIPA4cQ
	 Eq3d4qgj1NNEDbQ+nNjVweLjnUh0yJ8bdfedQmqFYDKeSCiKs7TKTCcYuthpQFXCL7
	 iarm2KpF1uHi17qCgd6sVCJy5TWAHxV5jVrkLKBSpX5zKub1yyKNGP0f52T+fGL0o0
	 IP2r9N6IReFr2GLQQZuhG7j663U56dYXQGJQg4MqhvjW7lNkEHJHqYJdTHC9uBnk4s
	 D6Xfa/LLDO7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65C9C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197215373.2051.5815241658303454766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042cb8a5aaec676fe21c3ddb83b99fb95c7f3f8cbb65f116976fd567526278f2
Date: Fri, 26 Jul 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721972153
