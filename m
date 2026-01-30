Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164BC3074BA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769811834; cv=none; b=spkp8xLVkHwSteeRADqR0HVsH8K8YrhY0lqWfx/eFLEnjmQ7+A/ohKTzvQ+HTIvGrt97X4iRw4HyvI0ImJfydXLBGAxX7aca326tmqyfEpBiZ1YzlnwP0EHBb5YO0iLJ5Qj3J7xYZJ8Jl0CFPkyucKuxgFaHtM+Gq2FxrYKbYhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769811834; c=relaxed/simple;
	bh=lb34cjJaMHxHOZULHjIvJlnZhbsagllLRU/qy9mAs+4=;
	h=To:Subject:From:Message-Id:Date; b=qKltSiyVcg3cHazeM+ZDg+7f4nzyRxRD5t+O2Gy61MQabp99xeyh+HuulFvBdGMraaJvfynSyn7EKgYM8RXP74u6H1axflSTPGlJgTfTgJ2pQoqB2gAbhJYqhoN0a6NzF3IVi6tJOlJ4kcG2z2GOZI42It2waj9L2vwoeiaWcpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvTNM9Hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvTNM9Hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6229C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769811833;
	bh=lb34cjJaMHxHOZULHjIvJlnZhbsagllLRU/qy9mAs+4=;
	h=To:Subject:From:Date:From;
	b=pvTNM9HigzgLgYz8eSlZ2qIC5V/XSQk9urMuxHisxzJUyOHpjFHxxofpptm5UWAgt
	 ZkfuZ7LL6mENDi/354ExU003ftOK+x5Y4W2nYuedLZurvVgik4KoqJ/pLQw5Ji3gA8
	 SPv41gPHDFE5cXcwZzv4D8WDiNuAcpvs7vUq4XXkpBfy68EpUXVHa4+8FNpBwnpONM
	 mF6iJt2CnBVEkZpVkqZJ13Og15v4kLos852baXu9SPKwlSZQZX1ESDWKb5BcMndbGW
	 VUVo4ftrHJ+psuq3tAyYAu2WEpTYQyJFiy0h0/7Nkym0UrZE8qGtsKoL0/BYmTCTnQ
	 FPZXtDQmibr9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FACE6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981183357.750.8166243357408621479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d284c9409548d5d5a0d04b3b3706aac58f63f43e7e8fdc38a4bd2a5d1edc1a
Date: Fri, 30 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769811833
