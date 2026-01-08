Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F7F17C77
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767833634; cv=none; b=YCSwQ1b+UoxkIOSz1Uw57n2lD0MjrmfYStKG5sDAPhDQl5XM4vwArMtXcuZNxXu1M72mjezJNLGCNp7uJXXY7y3vYvuOQ4nxPJL57iyCj4XLa/ibDK+QvOLhMWtNIlz5ZhYq1gVgm4T8cocjzBQkHxvH4Y1PvgbMXYPq6F8bYIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767833634; c=relaxed/simple;
	bh=scqCeh0Lz3MStwLqmkZs9rRmIsgiAv2runSsHgxLGhA=;
	h=To:Subject:From:Message-Id:Date; b=BoUCpyINOxb7tinIcR5zj9JynLfYB4554KmaHHCuj8bWE6aSYCUd0WcE5UPSZR8+UFjLNkOwb2frPPDvlheFPirdUg6C+m5Dou1XwspaEPwY+xrwfk5nAIMVcwficXIJMmOk+32Z7R1vw4hfe5qlW1lvTOosC17qXa4Sw7QCRTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgLLqCGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgLLqCGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5809C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767833633;
	bh=scqCeh0Lz3MStwLqmkZs9rRmIsgiAv2runSsHgxLGhA=;
	h=To:Subject:From:Date:From;
	b=XgLLqCGyFMDqHXH8IqufUaTdkIelp2j4AOeuNP2w3IKBrol4BLh4DdcKuQE3k1PXw
	 ZweHI8zITZ9/eKq/d7b6cksEN37RQTEOX8ETb/oaxs8uRKlEPdV05/JaUtN5nf+SeK
	 xozhzB1230BIHuKmAgshIcTpm5r+hTv/BBaeIJ+MnEngGSv/6cyX8BbDujS/6uHXBw
	 gZDhCJr2xA7wAe/66xVo1m5YKc3zWqdSo+5nJyAeuZANh+1Sloh9MUR+gczTlB03NI
	 S29hoVixsG9rKHiQ9FqEAR+kX6p9i+/FhY0qT3fQ8jU5cYnmaPr0zvFkfJY+dTB1GN
	 iLmIo+JgQcy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941BFD14882
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783363357.2683.17187838576370857454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69c1b7d53278c082c6e82254704e6e70837fa3c333b24b328c0488a8ccd9708
Date: Thu, 08 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767833633
