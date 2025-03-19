Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC5BA3D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742357994; cv=none; b=loGXHv0Q8PB4e8PCCzOwFpcm7pBizi3qnmhKoC9ZC1m/ZNPyK91T5Kuw9JFmmptmMHRbmlS1z1UzPTC8GGcVgPUoZOxaEFtIPYdstwV1syS0mp448gxUV/6DFnxuClbFajRG9pw7kZg4gaS+jfza3l8n0xSx8te5I9lFlR1w3DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742357994; c=relaxed/simple;
	bh=K6PGeKCUArut2//kCmBwIa6gWg6QjaOC+mIIEflI2CE=;
	h=To:Subject:From:Message-Id:Date; b=H0XcBMbzVdhk3HZnxByq/c/X4vP7V5guirq9L1B++jwdMxW4dZaQ5pklpNZkwZKXSbxxlJTa6SuJr1VGm3rl7QBJpc8Dh+P3WmirUNSlO1a9zGXIjW3Yzi0EIoFmA2lLBLxQ2/4fbM4zSs4XFsgctXCLto6d/iEZ7n7owDOQAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L55xi7dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L55xi7dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCAC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742357993;
	bh=K6PGeKCUArut2//kCmBwIa6gWg6QjaOC+mIIEflI2CE=;
	h=To:Subject:From:Date:From;
	b=L55xi7dyu25idXtcPm5kj9P5JI56ogqIGgZvBgfQYf+EDtk/TLVgC8fazdV/c1bBm
	 Qgg+lSbQCkEGlllGMmyyN7w3wBmtuBR1ARyFCTydmdjTHqdbaGHihbcdT7VIAfBJNU
	 bNVKItGTpkTC0ApIBQy7IWqDDD1WUm1qz7aaw1olDtOYJl/BCUKhGXHzfU7CTz3lW7
	 BvSHKAt9MP7AagWWa1pS4+u39AkJ2Gvc54g7YyYvBkirLUeSc9UXoRH2Kiqo2r6O7Q
	 CJqrZq6gVCO4r1EnXKIDxYd4n8nsExpTZK/XclM/U4IiKWsywdrDmpQbxT8kXZ5tVf
	 NKz6nLDKqOtDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98340C35FFB
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235799361.22704.16812878056386397286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90409f44c2d3a2d1f5460f2712639362ee7f206d3b5a5a5038cb92e3670d7680
Date: Wed, 19 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742357993
