Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8DA197A7E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720639043; cv=none; b=MSjzfVAL6ZzWalccMYd/J1kYXjeQEr+kXZqmNjn2kfTZIvJlXR8A8ofAsZEFTRyEkyshxb4y7Weie3UIS2CvAe8vDCylaX5eE7UVUAAdQIoatlpsOvsbU9K0ibLqLJ+Mi/KKIqis+sEyJko526Ul2DOoIPQOH88zvRydbsr1quQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720639043; c=relaxed/simple;
	bh=u5tAX46+DiaFMbc4MVN7/bQhHqSW2LLrb8Xob82lNh8=;
	h=To:Subject:From:Message-Id:Date; b=M0SLiWjCb/ZUbZlaYSqkFgNm8uj/nDWbvQ8rgmkqQ6pH990usILEwEhpAO9B13d8hhDIXa8+OvbTvPhT3hhE39fnJg4qoioAozTHKQMxFjPnTkeivEqMLhIDDc4FTeV+fsCijfDorraalwMT2AE8IIejfjpjWEJZ0roPFgt5QC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr+8v3yF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr+8v3yF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5115C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720639042;
	bh=u5tAX46+DiaFMbc4MVN7/bQhHqSW2LLrb8Xob82lNh8=;
	h=To:Subject:From:Date:From;
	b=pr+8v3yF111kAnea8S1gk3ksBEhjBGkehmYWkN+FZUW1c1ImthW/g9IPVfXtZlD9s
	 xl6eFX3mCtUrI2JQIS1kWmxNRPOD6LsmehEvkIDK9YQtCPRQKzTU8N1Zz+4zV9le1x
	 pvpE0HviFuqh/bO2tMt3mfdNLpIJ4fi+2mpWeEkUCIPClPxQ/SjDqQPL+62yvW6OIo
	 uhTdEh7bKjM8OdkFS+BE4YNbjRSaW/6MxzwnycC3rJDbM4JojMX8rD9Y5OduWFwCr1
	 ZEFFrLkn5QqBtAP+rBs8dbpiAYL66hQ6TB6sigld1ynVvpGH0LnNU+w0g6oHHfZFJ2
	 hARUdGR/6tIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB058C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063904282.4417.11561582952481994115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00d6eff17d4428ed14c0f2e40c81ce7ffa4d0348dfc816f79c0f5965dca0f44
Date: Wed, 10 Jul 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720639042
