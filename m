Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB1C8F3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721871954; cv=none; b=jsxTuJi4Wob8EXVSmBwLz029YRrJqZ/v3XXe553AXLYwl4go+N7b4q78Zo+P2fIb2KMkpey76h68KzKzuFdqNfjnffumG1NCYmRvwVrZpD4emFglNxeOc2lrATFYzwvlN5TvdYk2XPiTdfykTudZoTHAo4s/eAhd97HulcKk8k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721871954; c=relaxed/simple;
	bh=K9ggbSP0BKkQxEVU0ykEF1SbhupBtOFRBtZ1zoxq0gQ=;
	h=To:Subject:From:Message-Id:Date; b=EM6UsTG9zgu4u1BIyP0RNr7lW08W7IoZJTS2Y03B1XgiF8w3cZM2CfAZIOF9V2H+JzYL7iCbQ5EvZ2IHPQRIgFp7HBwBwkDWhgHGZUbgzC3xdNqgxOL16WvWzba1v5npxRW+uJmHuzj/iUcO03WVBUS9yMShnoCJipdeEWwN0X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnwbNmuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnwbNmuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5503C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721871953;
	bh=K9ggbSP0BKkQxEVU0ykEF1SbhupBtOFRBtZ1zoxq0gQ=;
	h=To:Subject:From:Date:From;
	b=nnwbNmuVXQ0eIpQSO6/eXGaa96GGAQbYn2ESuDcf+FXgjBDXyvCZA7mVppyugnAHE
	 d1xm9sZpA/HB8DnZEvAbyBHV5HTFIibDmmOUaQ2bOr2hDVoi5eUURcXcNJGlsnPEAy
	 9nqRrKzdUpHIoo66DS9b6iqz2xLJvQhACWB9TwbqXrunZ//8fQxMnvwmXuk+5BN+B8
	 i/9hYxOK9heCWDxqr3n0s5HDlzSaUd+iBNpmGCDW3Grua7faKXl8MrPlKvUwTvl1b3
	 bVfY9GW780ti1Lc8QKiseH4Gu8s1KYY5uqrN6xAzXCAI9F4xLMgkemV1lUNIIBzcb5
	 c0Q7Lbsh+BSwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E651C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187195362.32734.329408647478837327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256a0dd4b9261ee046505c04eac2ea608a4eda0cdfee9cd95a3dc3b85aeaa5ed
Date: Thu, 25 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721871953
