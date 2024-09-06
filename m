Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D851C870F
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725614753; cv=none; b=C0nqaDId0d6py06dW07oHdvd/gwVTgfyk3ylPm/Fc6jvJoiEaHbgfUza0Ry0aqqlV9V264F2kvIJPuAC91qre5qbOLnwB6tL80YXIREPX9wLtIqs+YtD92YCRjPcXh6Kcb6hYOvVQ222vwqSPdl5BubO7hSL+eTPV6cJRwX2vd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725614753; c=relaxed/simple;
	bh=hsAOGbggf5ujMAmtXN23CH3/pH8pis3ReFMcVIDq95M=;
	h=To:Subject:From:Message-Id:Date; b=syKSriRuZTNE8DSPQDW71kEjAlx/YPaHwg/lLnRHX5j/7sCAg4/Oeq3jzKxIMCTKPz+KevWGP5PjF2OidF7dIvh47ZDj3BYMD3xfQXowww+0l3i5RiqWz6lLqpktyc61//yXPEBwNE1goOMI0i4w78jEw6FCThAuY7MCgGWkRHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqHo1Z0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqHo1Z0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BEC4CEC9
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725614753;
	bh=hsAOGbggf5ujMAmtXN23CH3/pH8pis3ReFMcVIDq95M=;
	h=To:Subject:From:Date:From;
	b=qqHo1Z0QYR+fPvnOMRKqJ0WkjbAUkgiZB0lXUx/1xY6/DPKFYok2c6HMStWqZLT1f
	 0KZt5/dXDNl13u3rzVVLMcbI1S3pGQAW/hgSiziZBs/GE8nkQaZZKSrTGvL0BOaFnU
	 /Fg2X/7aXxgcXN9SbmQc6wDAbpSz9JC5y2GCGwJgwqJwFXvCAmkqzWc8tEuvmb0q8v
	 HHBHq1/zOuSEAhK/bb9SFGB7AEBtr1D5jHy0KDVxDEnwC+eh/WfZrq9Uo/trxfoToa
	 h3mGKw6rSVUPbSs4duGAKqDDWwQiLNRFDjakDC+itxeIG8ECsXFe20wGWLdw/TgBh2
	 v1L7BlozappWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E22CE7AF1
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561475358.2335.15502065181007971544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8475b04f5654c9f72a4e8c09fcc49e69cdc7d42b26d2c85c3a0d4c0c7bc2c8b1
Date: Fri, 06 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725614753
