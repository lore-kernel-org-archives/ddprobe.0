Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCF3155757
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751831394; cv=none; b=nehTBjuBUCqynsFEZOmDWTR+HEOpX9uRe58pxy1O06RC2YURxgdud+V2uBMXBNqfso6rwE5jU7jp0KiFEEC41+HZ/UMVq8JcxtTnacJPDotSem+aPgSobkzBkRIJXjqlJs8kpY1Plr3AV3NAihaH1zPhlTc9EKLsQwBDs+do5to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751831394; c=relaxed/simple;
	bh=SmcntFe3j5q/SaJqAsXAEl4HAB8dnhB9Ji3U2PRJoEc=;
	h=To:Subject:From:Message-Id:Date; b=roF8b7ynULWd7j4LLoZTuYF/W3n/alGv2novEMWWxK3q3/jZaMcrAEhowQ8uTkAKHD644ZC6tP14sGVCH8Jf4Hm8qZtXTNysb3OpGGIiA4+KDp44If2eAbVhqVzs1pE5dUjytzbZkQjqlxgcf5UGTtYxXdt2MIpcbRA+iVz1ZKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed61IGDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed61IGDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A349EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751831393;
	bh=SmcntFe3j5q/SaJqAsXAEl4HAB8dnhB9Ji3U2PRJoEc=;
	h=To:Subject:From:Date:From;
	b=ed61IGDaIV+fqclAIwc5N9xCrGp6k9gFii4nwLKothI4nBm8F9X+2OAH79ebXrW6u
	 3lFZm4AEGjeY85YAkZSYv6L/VGtgFmQmAcm1on77HoaP8G1cPvM38TyZC44akp0vs5
	 F646CEyEpjUtZcO1l9B6NB9uM6JB3J8PCXgV8Gx7IWOZPrbSC0LKb7wfybnWrZShJl
	 hB3fze7q8viWOps7J1YT3OszbKKI7ckAYo4YkW6VERz+7GYUjT9lZldfSYoki0bPVM
	 apl8XPcJzycjAAVVzj/NsXDCxHqjQ+rsAEbwoXGFZs+jqOsewGOhOSks71lWxYcj8q
	 D0NRTaVmiy4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D8C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183139358.3607.5685627700933585656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582fa80a60ce3773142b9b4a05158f6ee7ad5dd87b8d56f9ab6aeeccf3428d1b
Date: Sun, 06 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751831393
