Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054F0125A1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706328497; cv=none; b=XdkIP8xymq0ZEWgz7Owg3VPCx1wyLzH0KdpUbfbEI1SA2XMUTF7gP8AhwVc5xZxRGqN6xLElw4HbCT8yakcj9N0Xr7ji4zGHcl+bmGr2hDguAZTXBOQFEAzM9vc1bDUw81uJPJmYVHsr0Sh08Kxki38oDOMQFM4FXGMwRq2TgiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706328497; c=relaxed/simple;
	bh=2+7ardgomb42NrL3ermP3sw6oWLsBvlM1xPFdVkLoxE=;
	h=To:Subject:From:Message-Id:Date; b=jYHl2qdUKJLdEqYugw0zdpjj+BM4u6EdwtmKyjVsIGLBybUbmg7ecSW5Dnfi7gCexR3IhI87IQC7f0FbSu0snQejfnON844sxro3Msx2ad2HedQGtWcgkUQph0DNGT/vjAbzhjCC0SJ9ao94sGzeKc1Z66VXHn+vVgHFGq8+/SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3rl+qBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3rl+qBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E326C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706328496;
	bh=2+7ardgomb42NrL3ermP3sw6oWLsBvlM1xPFdVkLoxE=;
	h=To:Subject:From:Date:From;
	b=p3rl+qBbCAeWWLkO9cfkoTYiXtA8OlTuSRIYq82s1dafZofrrdxLnOTBJcmnk0158
	 39UhLATlP/n5inz5pOkKytp77dy1bvHHMlxrV/LuX5avnYB24AqBvcFitvltEl+or0
	 Vpn2SxSjp0qt3AggC23tmwb9YUrhCrrzUyFSmZvKvLIHEqzgvJkXu5+/Ryr7hYs/ol
	 wQNpYULu+78h0345ZmCGNN7X1vec34elLvLV+725SApMRq0LrLjYgpNU3SChk8532G
	 3Kt1QZw+vuDab/tSRPhyjWxhEphUpPGhs4jty2A21wJO2Gz1/IP6m8AzWMPfbN0JPd
	 zjGz1gy0cexQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6273BC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632849637.31799.2745245041413840496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db91cd2d2cc018b9e6d26d11af5f64a42c2742f9c6f9b23895c6eac49bbd779
Date: Sat, 27 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706328496
