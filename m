Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF4A4D8CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782586114; cv=none; b=YvIoUCfw0Dl9mJj0h7RQqE+J72jWRKM9jgl2ehgUrrxQnK3EOOHS3q+IHhk3rxfOkVu5GEA6ujzhudQmdWsj0uGvotbRRb9+yJdjA6c1vF8DCh8AyYF9ks0mdYI32ixKtT4rZMSGevTX57a92ibYslAIw9mQ6fYJIz82Q4LF9/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782586114; c=relaxed/simple;
	bh=/sL0yrQv+HgdcfRYiyfNqy52BjItfhdnLVywNTskyuA=;
	h=To:Subject:From:Message-Id:Date; b=VOMkmUquE3jrVgeelJd1ROfVupYrzQ74ReB8Cu0B8a5uXDtYIQG0tq/blnRNmIIpJPOvIcCqmCs47rhHSdLiv1cjNG+3hpMmqjrGYS9gK7Q9mkNsrIqNca6CKEkSWpZ3voWDRrG7Oyu2LHi/WANwH3djK/vf4cDDxC6uouvDjBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALB/8nCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALB/8nCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFD1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782586113;
	bh=/sL0yrQv+HgdcfRYiyfNqy52BjItfhdnLVywNTskyuA=;
	h=To:Subject:From:Date:From;
	b=ALB/8nCmCm1dx8ZGWO9vi2Cx1sRf9f1oF0WLjcUeqs6Rp9P/xUCvxyBztn/L74lTO
	 qoVKeR+6g/tXtLbbrR2avYzJO4WtdKPxMclb9EMbDH1DEnbBCB+LN9GRLgt85y1qpP
	 EpM2AnwVjRFOenFLCbvBk7DPd/T3RDWBjupbFlFSnFkwuCnH63sui6ddY1Zi+ctvRI
	 wJf1OUuOIhGIx0U5a5RNhI7B8aV7LYaWZfTZ0tDvvATH1uQHPjfPie6cgxmdUgSyUx
	 j8FjuegkpJJokfZRfXzMaOMWa0ny2XuFjS6//YqVa+exOv/9GkmXLiInmD6vSaHdot
	 XasvAKjFuS2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EEBC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258611371.26246.1903120973468558642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f57e465fc897a9e8ee6205b9cdfe6ae81e960046fe054745adfad38a9113d50
Date: Sat, 27 Jun 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782586113
