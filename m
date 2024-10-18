Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124D6133987
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267554; cv=none; b=jSGdRtS2CakufQR3bueGOEWXppvnlmyWmGjkJpsjpeOgYzotyYFzU+nJorclWzcGRkFWodZv5pXkf+60SRTzNxIWFzfXTHbfAyKCVWl9OhfmF7CUssSUOyE++1bxdAIUYwZumq1/ACvlG2gdNUelSzT/BAeSWGfqwSqHl9ag//Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267554; c=relaxed/simple;
	bh=YrljiB2YCTbOYvplQedUk4FBzEYeVOE3kpLhA3b6ZI0=;
	h=To:Subject:From:Message-Id:Date; b=ItLNP59/LrUUZGDkQvLgzAzuvoT3ay12VdbBh29FDdscBQ3qDXEXs6ZzRf57x35K4ahqstCmy6PyFh+GDuE0pqRcOzyWQXkLgLCrL1pHPCG7Py4oKYu/GQTEGMAHvCscI3wpyn1+bC1ZHlEcv8fgfm8mws8NE5EJc0vRU6Q0gvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/tkhRCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/tkhRCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3B5C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729267553;
	bh=YrljiB2YCTbOYvplQedUk4FBzEYeVOE3kpLhA3b6ZI0=;
	h=To:Subject:From:Date:From;
	b=e/tkhRCeD0GOgJpMimB8AYG5ZnGQoX1X+WN0mOsOLEpbg3697fi3D9u0tfVGm5waX
	 DhjADvcYDdM0tzBXWE8WLZ2dhQW34EcnX3HN4TgaPGpfNalObu7y0M0B3cj4A+tmIC
	 nD4tB0JFxkEJ581KFDj4/058UJP7Bzrbj+st3agOr0xZ17i679r5UeN4kbUF5RQZ4P
	 vvzjeNZ7/5BIueUmfoZRP49ovGmvq9FC93MMEVNIgoN2jY9jbyKNhdx7iw7BcHboUj
	 JXA92LyXzwK+hlfU+yKH0Dow8x+eUz4fNdYnVBzkl1mYiApX6NMKmpPmMjAbaKni1b
	 wTCGMBfbh7+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADCD30019
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926755359.17660.14930461634537379502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f3b2e866aa229e5b0186699275f3698059b6f41927c3e83fbb68b5f564413a
Date: Fri, 18 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729267553
