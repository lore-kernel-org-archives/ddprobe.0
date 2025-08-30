Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9A0256C70
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756523994; cv=none; b=Sg/AwP/QHQv0zXB0a7dJ8S3RmqgF+yIyaaY3ysB7sqxUhLV6XjOidbUqHHok/ODeDhSKWDouocWD+pjveikNXIDfiU0V50MBPwNeLW3I1p1NitaLNxjMCn4YSJdJwAB2caqquiutxUADhIPFvwMmw2sX6wr9i+GSi8zaYmONgrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756523994; c=relaxed/simple;
	bh=g4SptxixDKQJOYJi+FjQnXcSiLaZZqLcqQCiMfCXubs=;
	h=To:Subject:From:Message-Id:Date; b=A/jT8Gopt0kdlPTZ8sDPV5SWksSLoISK0AD161je23a+z/LBefGCJFq9EuqFd5YEY7y3jdBA5ETRhoiN/nLNiTDd1z47D3nYnr1t/E4NqQ+CVGZ+nQWpBU/c5rHzq+gdnpe+1RlUbAj0HxJv9B8lZbDUGCW52pjOQMYgOPCPnbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js2X7w4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js2X7w4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0959C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756523993;
	bh=g4SptxixDKQJOYJi+FjQnXcSiLaZZqLcqQCiMfCXubs=;
	h=To:Subject:From:Date:From;
	b=js2X7w4cncVWRg+laYdHgXMDliM8r6i7GmsGdtTb5t+uxKAgTSJknDuDGKDabBq4x
	 gwjYKLW6c86dZBpNKWj+0T6mIsNCxAAQaqxNVDJtLowqjYzZKv+QbvY36lEcsCufY/
	 Uczw+6GI2UofkV9ieVirdWZbNgZMzIOLB4WNIR/8kyNshtM4a2pZcZl01QpMGBpnOc
	 QaHFBwZzihpGR18C1lV/om2PxL0ASLFDOfGenLNESGA+wARgo+h7HIlfr/ATlK0ssC
	 9t6XWGYv+JFqPXtuh9XAG12lZbU+Z3mmYz5W5IzTpTfduxcCUP6l5knaueyLiRhtUR
	 5JXcfXklzQSNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C4CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652399357.14774.1172760928816523672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b97401df2573f9cd51eb48b2902e34fdfb8241d2ae41ecdcd2e490885d83952
Date: Sat, 30 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756523993
