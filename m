Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22267142E73
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749712194; cv=none; b=mnm9VblFheCeWpOGgXP9Zx6WxQfuUEsxNIdvu7jx4l2FXgaDudOIy3u3ZrhA+ibfmNsfZFd+ERr3201UItwuQCR0nji0nC2Dppsq85CWLK3GgQ2YxwLsWA9lWnsyrGwwigqyatZWwEdBFsAOJodbCRiKmrFfBz11PlrlBk4R4II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749712194; c=relaxed/simple;
	bh=9GiopF4lWyoNL6pbMGsU58b9z3cdq6bYDKWzDVk58Jw=;
	h=To:Subject:From:Message-Id:Date; b=jv0dT4drMxEDO+xsTeVcYQkB3hQ9OSx+BrtODZ42UpmG1aLzp+kmjmp63MTCKPzaYIrUMQnZgzOJzp7PtQ3vMvKLym7m4kYUfzXPWvJJoyUDr9JKMCflWqz7Cy/DzKMsY5k9pDYEX1IpFbGfb+zg3FHn6mxGXEE2AqykXSxAHrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSxcL7A0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSxcL7A0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B16C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749712193;
	bh=9GiopF4lWyoNL6pbMGsU58b9z3cdq6bYDKWzDVk58Jw=;
	h=To:Subject:From:Date:From;
	b=TSxcL7A0VMbI3Pcv0fw3tE5ho60TTJ+yyUDnekXrURewq8ODVZNzJYposobMIuzpR
	 fpeJYu3MnLanSAKHWQJCxNhkX9mXJ0BIbAc6Vp4z6Bvnn1XSGkMKRiC4mxyGYQch9Q
	 S58tBaEFXA5X38ocZnkP9fv1N2WKUa9lV6uHG59W/YcgecqU0he+Twb0NWtIEvva6L
	 y2EBRU/AJM6zUVkwZ6q9sTORzvlgQcrOC1kSMsKpu/+KYCYhsYC2BIdjH6dDhVzZXM
	 ybkxwcm2HAA+plNRbJTcqfYS3sP7mNIxxpZ/dESvWxdB/EsjeaxAMOr/NJtSvDRCDn
	 KxTOKxNf/jFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90183C71143
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971219358.28974.16489820663606181304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7382fe3860d1aaa8a7cdce30ab5078713b03b55594725e85ac9c2bc9cf60fa14
Date: Thu, 12 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749712193
