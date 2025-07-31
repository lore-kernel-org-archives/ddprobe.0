Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1DB1E2858
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754002795; cv=none; b=WYwb5Y2T95K/cvRxXeSrc7Xe4ETyBwqumcKq6UwxLjRSNlW70ZSxioNcPY+4D2jUw2HZ/mdSHdUH0Q75FFDoSTCFB9NnxrKIh1DJchKvhudQ+N5U2RbCRw6SFntOlFLMVrLAiLc7WkGrOfOTNy8bytuC1RAgBcCWSsPT2/tRY/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754002795; c=relaxed/simple;
	bh=q6BUuoPyMEM1bbK817bh+lrDcJ89Y3wuUssJwJDNiEI=;
	h=To:Subject:From:Message-Id:Date; b=XVGdrk1PN5xFbGqqTr1qeUAXHNdOtQrZKkUMRxdcpLipfmXYUqwwdS5kOXyhRXdacNmcbYRQkIcC0GTsEdPtpQ7dDnJp7VyqyQIPwDVh2Eb7M0C4XvN8wkydjbmj6m6N7/rSQdhy2efN9vrk2esHiwhM0YxRVPg26/NYBO8r6Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXxFejy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXxFejy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5433C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754002793;
	bh=q6BUuoPyMEM1bbK817bh+lrDcJ89Y3wuUssJwJDNiEI=;
	h=To:Subject:From:Date:From;
	b=bXxFejy4d5l6uhBrr6Z5VhDyuDfqQoqnJIyCCMyet3Y/avVH1kkSc8Eygi2G/HbOB
	 lJB1sFeNdgDo0eq181rs9vKhT+dPrAw9RDfQs/vjD1S8Y68hVHAPaZMgZCSUd+MwbW
	 zj9w6ZGIf9Cu3dKvoCxHezw4R4Ru9IpfvZDV3PLb3289dJDLbTGLiEzM4CSTS5ARuy
	 UbIMqh63Qs1MbK0ZGh+QO+tljmT8c69466xuVqIko3xbXDc8Wgy2OU7/oWn572SmCu
	 dV4qPGStd0ffin9Pm/4kkbb/q569snJ7jRQuRj7tLQ1WlAl1UbcPGp/AuLXQ4amS0y
	 SxK+xISQiXIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400279358.8500.12948020146007376909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb28a0d4e7ff1071d1761594a8ebf22831a7ffdbd4620501fda4ad1c4f764e52
Date: Thu, 31 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754002793
