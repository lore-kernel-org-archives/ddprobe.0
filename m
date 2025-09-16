Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7A62857E9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758013194; cv=none; b=Xy0RpAbUU/Xqqta8ZNFxgHTxMywMvJTWboIe+dx4f2bEiA+LDE5XEhkmBh6r2Lqb5bu6OjJvKO3P+bi8R3DZYotcWilLq9MCCWgZUDckxO/KHlqb4cAddszPYTsBQ7mjIaJpUV5hhBsDoonEmcLcPi3JMDVBqTlNtvJW8Efi9F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758013194; c=relaxed/simple;
	bh=fBs+GEqQAczgjIbdgDc+X6CiAJpDlpIHMbWi8hfRzmg=;
	h=To:Subject:From:Message-Id:Date; b=BxToAVjl7rv5VLi5YFKsAdY+E3fq8MHcW37hTCjKBUb8m3YTSj4YB7l4UDEBUxNrfSnecPEu43+3ux/uvgrvCVf+obT7tVUCAgQftWccHg7dv//AopTHwMgwjGb2MimJBM62iyuGa9KZpV8+mCEPqEfH26AbE3VoTo8JgkumFGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdBPI6OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdBPI6OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2667C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758013193;
	bh=fBs+GEqQAczgjIbdgDc+X6CiAJpDlpIHMbWi8hfRzmg=;
	h=To:Subject:From:Date:From;
	b=AdBPI6OIEOdP62JYga8kZrZdhD8bqjJZXT5eR1qllFhIbkc7A9tSYYN4MN0xNd3WX
	 ZocN9p4zaz4cfy+SuraPqr3BazxPwyrhNmHb49uEHtVuAOJHnkzvnv9o39nwZlMgwG
	 gb8+kfEEVNGn6QqYIpMeijCabvv7mrtKaLj4VLm6rF6hXTfMI/ylstRxLojCVPrqB/
	 YKVA9jUxJjOou4Zs1pvO/QSKY+mXtXf6gyQaduerdwRfDPv0+HbsRdEdPyQ7iH4TUk
	 8+QDLEreNx/FdKqEOpLUAmdV0qud7jxu5yyLMMmE1OSCiByUsRc4QCkQt7WFB2Ewrv
	 K5NCRtkKgJ4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040BCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801319358.3773.4243670025426646334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b9b6ad26a46ceb6d2dfdcd50c9d4e801ce36c22d1c087d5a80c13ef31078d4
Date: Tue, 16 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758013193
