Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1151CF9B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721217323; cv=none; b=ei8hzY+ZLjRoY2/jISVln9GCmIVPHrz/N0SGE11VWFT1OgDY2QKWxl/Srb8dmQO02yPIHXeM7QNsJM/1QYuq3a8o8sPEp1ylJAgC3dCGcKhHKvWYcka6YfKtRExNS0N/YQzWURs/O+hUzYRsAQ3yzIYkPWZO2ctl07hIp6g0sYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721217323; c=relaxed/simple;
	bh=y3+x0cEkI2xi7YYE0bu1lu/av7zPXqs4MwE4vjPMQ58=;
	h=To:Subject:From:Message-Id:Date; b=GLWKecEMhD8zsRaTC0MPkamJP+SirFTcdXWqKgxxqnLJxTyq05ReI/wF27h9W+99N+mq78wBokyEVxhyOBMzTfyOB0sl7nS8RoVD4lIn7x4ToBkR1sjdRR85W2Nc/jRHARf3/WBJ0F8RouW57kwfVmsFR1nIS9XMhTPVK22DVI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCJjPyVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCJjPyVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2469C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721217323;
	bh=y3+x0cEkI2xi7YYE0bu1lu/av7zPXqs4MwE4vjPMQ58=;
	h=To:Subject:From:Date:From;
	b=iCJjPyVLYAoAOzi+NiiEeKkZtsYq1Vu74Qn6FRyGrF107jTWDcct9pxX9+/wU1U1t
	 GxPRiWRI2vDnL5Ee8RtLvks7NZm2qWM1fpZdXJJYj1bHjPnXxFsi2SvA7AwwJWAH7C
	 ZeDWe8Jz6IdhWGKtcP9QCRTX40tNSdzKo9viz8qCAJllbXoCqUQdEuMmAHg+WTpXUd
	 Mr82tDe5HmW/HQDtYnap5iqV5Rb6iR2T6oBEXzxa1a6mdo5IQpVGR/B9Nt6EHV9+N/
	 ERuepWMrhYwetpZlrZncV7L4RhE1a5UEruj8vy4uohdbyDP8jQ9j+vDMiUlQG5pe0Q
	 kWPsihrx5O7eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D837FC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121732287.6457.13549656776149633731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd65de0e4479f551b764a89f6433c99dc41c0fcc3b2909e088af9eeb2e08e8b2
Date: Wed, 17 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721217322
