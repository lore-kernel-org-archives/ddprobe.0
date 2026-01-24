Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182321DF25C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769250234; cv=none; b=GlVLmnSPCqenHUAvWmCq7qn+BhdVBLEh+gO+A+FUjT7qfNhiqOifGpb6NaalwLKqrc9Ta6BcthHMJFtnkT39P40vIhk0JcTFe+4qqhpg/PedZbyv/pG5BB7LMjOLM3DDBzPwBTkg/RtbF2s3H1Fx3+06PQ5bRkhZjwneNxWpwjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769250234; c=relaxed/simple;
	bh=R+i8bZAkkStK8WRLhJUwR3laHoNSSIgt/ElAkNXWZIw=;
	h=To:Subject:From:Message-Id:Date; b=HfYEIQg4RdHIxGr1lP06I92VOMRMJMJT+kwDhha7RZlUpQsZFlCDhe0Q7Wiuz145jKLkZKwZSt5hAygIiUAvSyQrKJQo1iq9b2lltr6Fdoav4uRnhxHORKHMJ9LSLwKMplXfMi2dfP4aATI0ZZCrVj58ZItWI931KvVoW0D2Rws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE22XGie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE22XGie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769250233;
	bh=R+i8bZAkkStK8WRLhJUwR3laHoNSSIgt/ElAkNXWZIw=;
	h=To:Subject:From:Date:From;
	b=aE22XGieSbO8S0W+VkgE3cnIB9p8mAFC4uKtN/82CQQeyJpaEkHV+q12hPALYVWUa
	 VkV4jUGS//FNz4dvEwfNvMAh0TsL/XrQ+6wvfQlgVGC0DEDn9kriNNYsi3DivUPY9g
	 0OiLQRme5HWq90vnehnpGo4FiUjn3CwtqfQJ66zQff45PhwcO8h6ZOsD7DTfYQXg5w
	 0VOeqfzKuvLpp8gWeUvX6jYTutB64igBlIPv3/3lzpnH4wh2G7Dka28VY/TwzRKq90
	 cFYeCBdzFp0jgfoYWGNXqwkSa0kIvFF7Bn26qh1rGanJ9LeuY3usD8AKaZJJ4PFEpO
	 YmIcXYcdRehKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C2D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925023357.1112.15791534644311093160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20598d385ff629edee97edfae5e898a3fc74ab7eb8dbe13bd09eda84ac470df4
Date: Sat, 24 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769250233
