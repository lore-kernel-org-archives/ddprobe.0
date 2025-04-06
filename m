Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A13191461
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743980394; cv=none; b=fz0pWoL1SlETeisvfxkPQuofjzWsg634tFzIYwBFLxNOCyOcy3ExHl8e0U2DHYaHBwOTW1oLE3rZt0MUmFRwQ2MLH0efk/MeDIzz048UJbV8JXIeDJdlp4enmuALUY1OMdNRik7tGBa4y5o9cOW4u/x2yvwaD+kxBuQxVrEGNnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743980394; c=relaxed/simple;
	bh=gxElEqKLDk8bW0uxIAjVeytiJKnkLPDRaFqqGt0bcwI=;
	h=To:Subject:From:Message-Id:Date; b=rmEAKsjdcbPsfQHk36FnF8pbsXwpuX3+bwp+rK9vuKpC/ZMsNj2HOvLl+1WDvuNsiNK9BosT49dkwlnAuqfRPWAa1q49AiCPtx1d35O8pNqjOjdOuluRslJ/Gqr+ySkAX7EhzJq5o7UNp5QYk3DeVXEcZEYG9/09hdQEGzzsdrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu641Xe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu641Xe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743980393;
	bh=gxElEqKLDk8bW0uxIAjVeytiJKnkLPDRaFqqGt0bcwI=;
	h=To:Subject:From:Date:From;
	b=eu641Xe5nmrc40ocv4aU3EqeDgTT8bOzr3/dKAZGC8cN7/1jRF7ukYmth6NaIMqOW
	 kHKEWlnBqMGuGBvL/hErbrI7pOXKq8rzpGHV9E4vsX3/4XRYMLi+EicsMQGfS+Kzcw
	 JEN3DaA8v1dRMkG+NWAPoT9PrJBsQ8uCfUqa05hQAvSBsCbj24/rJ1q2hQ1hefdii9
	 rXnibYXzwboTpZX3IuVqCwfsjFUthe0MLALCMLK4FOscFbl/k4ljEyUTkacfz3/H6N
	 ZYw2EZlD2llEodWg2TL0jy3+ccZiJStyzc7iR/TCp77nsc+rxyCobYz4aL7GghndG3
	 8P/AuqitvjFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B50C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398039358.28014.2360020427045352150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4f219133ca63edb96b2826af6ba47d63e1cb79a8104cb1a86444ab845cd18b
Date: Sun, 06 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743980393
