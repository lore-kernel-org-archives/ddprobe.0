Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389F713C838
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720905023; cv=none; b=c6Ro3Q+RobfZnNPcVGEpzVb61MfKOoQ1mTF3SXLq86lsQJRVCkypnJl/nLGztyYP/j1O9BxbMNCmVWJMXy6+HoNFgRd3mMmOFhxDHgjrPQ8Auo0JM1ZznZoWxGbCtSxp6f5rOHS4a96wI7T/ACvjJi0ug6NbbL3scQKvJRo3j+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720905023; c=relaxed/simple;
	bh=BeygDEr8z6uYKNda2hmxwRaqUzMgF3IxIqF10L6ID6Q=;
	h=To:Subject:From:Message-Id:Date; b=RW+zuDoGPf+ZUEhodnx+Shxuq2wyYD6zyzejOEYRxR1J0lQfmRK85vK8GnO7TOmR7euH774UDQOB0DiKKbILPqiFtWRskKEdfAukuSwW+UujjyWMw60cyI/oE+L2KAPEydyg6IyHCEdDQhprDK+ykEzpsTn+eHhnAI3bvE5y+eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACUZxJO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACUZxJO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B63C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720905022;
	bh=BeygDEr8z6uYKNda2hmxwRaqUzMgF3IxIqF10L6ID6Q=;
	h=To:Subject:From:Date:From;
	b=ACUZxJO3NGAWFJ7nf5eVMBC2ewFGX+bDVLTpzb3fqv4gCrFtausjGZijVLOOezyyJ
	 e41dZhN5E+4TQSVU+aNw6Jw7jhYF/X7pPYC3+nzUN0f5J6yI06cOZ6tJZF6CIqA1pR
	 WwxWuql0oN0uSFKxppLFPYin7sRmea/2jcHFnmrLXuH8mzQX9uckjnVeeevx0luXT7
	 pXcSLfPfUhmbK4SDDmELCD0GbgaKQE3Vpl5wCdkqs4VVjStpHK/s5mxFJPohT8isjo
	 uy/yPDcI3GmHj3h+PjP80+rgtICmh48MP9FlIqFYdtgWbh0ltpYuUxfRb/+Q3O+O/8
	 At30hPADcMKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA94C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090502276.30933.8617794684327997850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5726fb3694ae91c0d9f5b44241b828ad6fa890aa0e05786aa899066915f8bc
Date: Sat, 13 Jul 2024 21:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720905022
