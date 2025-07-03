Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240511C6B4
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751531394; cv=none; b=VhveX4MCPRe6mB30Q39eiToeCrlCZ4jBuLrjQ0zf4NjRWQF/9tztsUSZJocxeTIkJMFtVkrVmCTTF4F25g8MoFbU7eots+0PoIo/Hzvs0qmVLLqsZTiQjzocNCNuWk+ayDR9JtOtdtj/8Dg1rKYLTjBeVx8wzAqO4vDH7Y5k1pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751531394; c=relaxed/simple;
	bh=h0RhL/Vw7B+UGl46YGZhltC6zowuCOU1NNZffpPmtxM=;
	h=To:Subject:From:Message-Id:Date; b=t5S1JNZFlP/B9plXeqSYiRioYJvGtRPti9ydbdqZwJQN40/CLNu8TN2epQZdSGLZ5mH5QvtUl+NeHvMUwHJvh6J3V0KjDq7bBBSYtIGuch2/6Frpo/Yx5F/X0GJwCEs6dakdj7PtGJE+hFMJz7/wk7kfWJBi5ht60Hx13dy8uj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqm2sXAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqm2sXAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F163C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751531393;
	bh=h0RhL/Vw7B+UGl46YGZhltC6zowuCOU1NNZffpPmtxM=;
	h=To:Subject:From:Date:From;
	b=Oqm2sXAVsQq4Zn+ZcH44nuqhX8bYVt5iO03vHIqfU+UWCeGigOZOXcJh+JQM8/l2A
	 hswsQ2Au8HlHxaX2YMtA2FzZna6WQhVk7le4DAfE/QV//U5Yz2gg4r4laaE4JX6fU7
	 i1x17x5zlhVOiOH7wrryfwTafiYr2WCt/JY+VBKro4lIxPTIX7q7P3t9wqnP/7jGRU
	 bdcGQYGzTJyMUo+rlB7JRUT62QflkN0TvPrd28UtbByOAjGo8aXbawkMSzQ18E9P9K
	 vT/dKJNKiMhW7IDaLznD02FWqHeeXRN4b0j5mNjwreiWp6RU2Ex3GRtO+CPqYYFikk
	 1Vu2lM9Ut+VjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC2C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153139358.14096.1092060002327818084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760ae7907f64dff1a618e6b42319b33945c894219e7d55e87209982380205c96
Date: Thu, 03 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751531393
