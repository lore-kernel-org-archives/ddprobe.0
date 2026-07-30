Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293BF397943
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785427234; cv=none; b=f8DI/VRgLo0KWNsa6P4yv8ravWMFnAoCIoCmJ6GTEz1XKngZD3QqxoSK7vskehYhkuJ4UWEf5O+OjEOFXPCeKFhpClP9//ZNzFupzKXPmdFu3XWf9Xnh0jsFBxmj0muDKsl1eRagEwZDcfaLBf7Pe7TNf5UN3HLrGteS0xebcR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785427234; c=relaxed/simple;
	bh=qNJYQEglWDNzOVDy/3ZXg6TrqF3j8oOa9sxRXlYdAdU=;
	h=To:Subject:From:Message-Id:Date; b=T0uV9AuEpu2Udm50T6Yppi0igxcPkBSQGvszr44I+NZgERynEZKye1xVk4jCIy1HS2PDIHBq0FewjViF2Otk260lcItDYlLGfwtJMxOCp9AW4JPRVUj+EX4FPGOJIcXo/coGJufPxlgVUCuEaNLzmbo7BvgZ8cE3ovoLT/H4hiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2hL7AUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2hL7AUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC1CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785427233;
	bh=qNJYQEglWDNzOVDy/3ZXg6TrqF3j8oOa9sxRXlYdAdU=;
	h=To:Subject:From:Date:From;
	b=k2hL7AUSqoGQUUCfW+nG/M+AsiKV2Ft1el27FhMlTULpWHGcxS4aclRBfxphZovKE
	 VCba/YxWIeZ99O9340K2+308pgMfk4erSCQp7jMM2ZNRZWZOstdzjhZ9ltskdL9cY2
	 zvt7VSa9FpvYXALH4Gic+IeTmRC6+icG+zIG61dPigasIn6HyIrbVDIl1Otcq62drc
	 CvAexssQMsdU/9agL8VUEmQCZff9pcbhCzLX4mz6Lr8EvwVGXtlldeNvIrcMPJeUZJ
	 zLVmt6msD3/ze9tgfvHXsZnkKHiC2D+n/a/lVAi8lzL+84Ia+dqjbOPnjZedhEExkO
	 zczx/62t3A8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB88C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542723369.16831.9848865385641306918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b8699e8201bfe8e1808bc870816b917b8953c7a84982fa6b7073ea69eac681
Date: Thu, 30 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785427233
