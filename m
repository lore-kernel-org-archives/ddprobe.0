Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CF23CAA5F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778713834; cv=none; b=N4yqUhEwAS6WOzjZLc5C7r7FVmoyoK/AFajsLI03zDvvqnRgKIKS22Vvv05hpIqk0z//Omgap2NQ9R7Y+dPNDGgQasjwY8RBL5dNCqGPtx9kTzn4eYF7vJBqkOYeHPansbHEXPwV+q5CA7a8qbQnyneSr/Om2kWsnjrQP1gmxXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778713834; c=relaxed/simple;
	bh=VUa/tbCpyAWrVkcbw9d+IAd/lGLPRb1TjQumuCfZdWw=;
	h=To:Subject:From:Message-Id:Date; b=SxAhk7ArdGoqkbG9tytdIEvsXRV582H+kD6X4jYq7SNo3+XTT7gejKDXbiyoqssP7mQGF5iMAOqLZzxU6LQ3A5FYXvUUJenUQHMEGdBd4I+gJ91fy0ocEw0+5R2ubkkuG8Ytdc8kMezdaFS5dZrSTkPqwmrMFByxnIPKfAorHeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA0cxHbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA0cxHbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC0BC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778713833;
	bh=VUa/tbCpyAWrVkcbw9d+IAd/lGLPRb1TjQumuCfZdWw=;
	h=To:Subject:From:Date:From;
	b=mA0cxHbjmznX4PkhvBUA2qMW22o0OGT2afwCYLtjzcModYLwz3rxbODcfLpGShn/M
	 r/6NXVadGjju2WS90/XPpSKD5aFdhxmkjh+qiyemiMZsIunOl8WThQiUz6vMmg2HKC
	 b97I9nvv+HWrgPjjZzhqV7o1CEte0ri/SqyCEDkIMDYTz4RAjPnq+oj/9dj8ve7aCy
	 txfQZhIhtXEgluunYszKU/yGG5Og02p+H94yPRjHGzAPCFRgV3nvIAVGMmIqI0Mz5J
	 ri0+DaKkCtCLdaP4hLHB/aC5eqVDXCcDfy2/kWsGHrBJdbw2QX4gccMHfAy7aVx0jm
	 /ucKwL0Etmrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF08ACD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871383370.22006.2958933434291430199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18b987ae9908ad062aa35960d0298ee0aa91d6d8063bdf4ccea12d9c27f8308
Date: Wed, 13 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778713833
