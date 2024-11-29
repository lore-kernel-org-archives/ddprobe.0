Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0259B19A28D
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732882554; cv=none; b=TKbjQEghQkZbhDdZq8RO75iMJmgpcdVOFCsDq78H2ynJmUubm1kr+vLW39hHZPsmxouUYeVduW2foMLylkFFfusECwPI4kzfhDmbbhDYGFOtpFjydmV3wck52JSnb7GreDnIO9JBxuUmoRaiNrykI8lqMIVjLFpN+lJz8bTMjjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732882554; c=relaxed/simple;
	bh=oI5GR4j5Db01a1YWYgiJn0WRGd7T/ptLUdvpw+bYQj0=;
	h=To:Subject:From:Message-Id:Date; b=hQp2jj45A7N8GMRRsryIEs+XCESQnGM39iQv/GDXmNOjVLLQNqNg0nDd/HuqvtSj1gKBbGZvc3iEpbYAe7OdqL22dqWNeHUIo+AFl5kGAB7w4xdkwwerTS2rKAzcEH0EuU82Goi8YP+BVbAQv7gjPnd+LKEDqqSQEwh+C2A29wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpWceG0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpWceG0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E28C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732882553;
	bh=oI5GR4j5Db01a1YWYgiJn0WRGd7T/ptLUdvpw+bYQj0=;
	h=To:Subject:From:Date:From;
	b=RpWceG0zo4mLLuQ9Iw3VT1s3uqp30s6bFohRaVUYRrplGv/N3MI7M3uziZ0fGL4L9
	 lHjmL1xl5ToaE/+GI84u7k3CqJrOGeF8M4uX2mw2LahHqFu83RPJgTXw2pPhu8tnL3
	 sFdX5Gi4cnaT/NUiXM9bOj39vLmE6dXn9GGAMlbJLNvPAUSeO3nRNDudFgz0dunC/o
	 SkS+3TgMmH2n6u75vlHqDLpBwVL4SoYvtAr+MmT9DQ3McAp/xRjwrMlTNnVVThMZAr
	 iuY09jgrZTqfb3NkXhkmx0vrm6HXKHUeUEayMRrJBbTwvu+9tkOijKCbWDMplDgy+9
	 lBvsiyJft1OPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BC1D6EC04
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288255365.9565.5244177561759343929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3d53d8a9b182f7b8bf07c7c7495b75778803e8b48afce7d45054c230b89037
Date: Fri, 29 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732882553
