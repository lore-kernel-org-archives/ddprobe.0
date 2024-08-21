Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4090F4687
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724227554; cv=none; b=gSEm57Kgrhc2aLOJUge5jicjWWh+wB9pAnOv/HVKOFxCgrfLUiXgGSNmtY1fpYdSr3ICXgxJDMjgoGhUzU3EOwHfWH+9zErcM+UVl8Y7DEq9DyMZiXvE70rNpaHmBTr2jLRq7hfYITdSd0e4zKrbcHdVIvXEoywQGgYnd6PloWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724227554; c=relaxed/simple;
	bh=mYovEZIw9QE0ADQpJp7dLpyzfVo9ypvly3S0L2lbnkw=;
	h=To:Subject:From:Message-Id:Date; b=ICzs4LAI55QK8Nr6pjdCEItlcp1yiTW7eJrHlXIQtBguLGPnsO5sJVSLtps7eMGsM98iQSugBwp09ayIA/hBPY1EN6NKgsfrg7F6eXunGy9oY1OHhyuElzYOzOEbFa/xGTVLgdKsIEkuDVThXp3suapvFwmv1t7WxlvItXrv+D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/ZwjuvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/ZwjuvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE822C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724227553;
	bh=mYovEZIw9QE0ADQpJp7dLpyzfVo9ypvly3S0L2lbnkw=;
	h=To:Subject:From:Date:From;
	b=e/ZwjuvUvQXaE4rD/DEvGG+Slu7/kodh75ZXaqr8VEr9zviXQsYzHTGBVDRvJg7wA
	 kr7wJt7679DFLq6rHVq7d+coNsCaitYUqgRtSEB2J5u51P3b7XHHHmYziikElL0ncC
	 +207h7AZCUbtld2jcSKgeOtmOfTYUBuALPqQOSsQU+2auBROpPvqvohbfvJsj2Ywnu
	 IpKq/XtQIsR2xAaXJdDJ5TgiLv2RRXyOcpxafyWPxUnHyT+OvsdOp4UuOLuMyhLybm
	 0XeQmliu8ydJV2W9DEPFYSDJC5WFJdq3BqtexLQ3Jowr0dVd9n8of4SV4aR6ZLt5AO
	 Izd+C6GPQxN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3FCC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422755360.16553.777994407606371397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a213d2a6c6eda69c27bc2e338489e27dcb1cd919908d92811ca7b17354f13fa5
Date: Wed, 21 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724227553
