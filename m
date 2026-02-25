Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E62C237F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771995894; cv=none; b=n+et1ZROr6cDLNQtQn4NjjgCwPVk97UOGPNrhq+3VJktnQK15AP+9UMO5c9ERBDRdZ8+Kdres51WVQaeYuOmSB+QZlmY4Znwl2jG6PmH6HUy/cCjfP5M1i21or7ZrtqrG94c6CiE8pEgCvLiHVx3r/FNHuwGEsGqaOFHLXQnPSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771995894; c=relaxed/simple;
	bh=qzgK1rLADqhra7v1gVqNDAB2KE/nmJKUu3N62y+5LpQ=;
	h=To:Subject:From:Message-Id:Date; b=lT/WnKIA+7vd2GVpWMdEWHxBdTueU9L8sIFf/quzddSZI5cb7da3OqrbhDTkBAwQ5iqfwWbfbn6DDYI7RQbOup2JXusNoZTZ3tWTiuA/JGhSUDh67BqgFYwBC4JKfhdZ0qc+PRNHbxh+KtCnJgmFNlJPNFKI55MjMO3/AbyPQ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp5uKMTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp5uKMTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B259EC19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771995893;
	bh=qzgK1rLADqhra7v1gVqNDAB2KE/nmJKUu3N62y+5LpQ=;
	h=To:Subject:From:Date:From;
	b=Zp5uKMTL8FzGfOUfYEXcYDFOP/V4SyG7dAAYKbqHNm5iBxuboE9XWpGbiJ1FUlE6X
	 L9Tj+DOc0bUrrQsO6/8oqHI6YNfmMUoM+cYTEBweGK8sBIqTOK8D2X6L99T16Xxilf
	 8Gwvqxy6JsTitpGuPHpEQXsJMcBH3ZmNIzEH1vllnkNHlDykp/D5p6Cwpy+CbgnjDK
	 J7hIeAj0Mk6B9lejKdTjCKAFBMUWPPt8TJCSGSmUvfKSN7gsQwOj6bT+MdVSWGzcbN
	 RzJwdpchvX1cG8k/v4wutaGigOjglOkzk3I6kV3njgxm9Kiq3rrGT9s0RVmNe/jZJo
	 JCAxoGwvG8xfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90867F55459
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199589358.14384.2072554716290592926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bd6fd4eb4b7c76453d6c93c300eb5ff784fe630664758df5d99ca81314bb9f
Date: Wed, 25 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771995893
