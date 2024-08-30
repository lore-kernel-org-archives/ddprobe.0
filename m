Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D83AEACD
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725031554; cv=none; b=Lkms735/MGvfZVQfZ+9iQzq1sTRtg4D+dg9ZMquO6lspFTXTmeXwB+Dkrk0VS7gidQX/4/4miq3XK9iu1FGAr+ASnOfj4NjhPVxyF2ZG4hLMtq2xhoeUa8p6TEna1EekqibZfHPUYAdee73YIQYJT1zpxtUvnMHY/9TvetVfer8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725031554; c=relaxed/simple;
	bh=HNjd9xSKXRQs3Tkz4XdcXxDj4xsV04XPAPc1fJejU24=;
	h=To:Subject:From:Message-Id:Date; b=CuPCZQTc5XJTWOJVHC8Tblds9fWDvd1Sk2Mc8BWjhTvtgG3jdZTtXBPWuztNud9S3jYa+8NZ7XqMprEM6ZMhyjBbKXROybITh8iLr6XzTLL5m6ptaCFileK6tcI+gMLY+r61nFur1ZZEFGQ2+DZny5NYB+oYxbpzZdHpulSnhME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESL9q1Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESL9q1Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28BEC4CECB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725031553;
	bh=HNjd9xSKXRQs3Tkz4XdcXxDj4xsV04XPAPc1fJejU24=;
	h=To:Subject:From:Date:From;
	b=ESL9q1Nf+fvxonAj/U78j8aNjsUvAQF46yqDS8/2k70dr7tGrr0uFLKyBOz3F6urG
	 eAWwT2AhU5IxcY86tIbiVb9ktK9nzaAiD2Uq7VzF80JlNsxFvDhdCRLX6MPnpdLTQI
	 uRAutYo9WV/QvjQzMscZ6hhvVrk/2QApAb1H9yBS4RB1gQ50SBg+MFgdpbGeWWlshN
	 whNhslwW0jk+uBco3emsHJphZa0jJxs/HaGqnXrITtjgxPxEA3QmP1T++3xvX/HhRd
	 kuC7NOpzwkCOXQLKLjmu+CJSZuLgPjaWrD5x7JafCnIdnEKBKqhselU4DXyp9ZWHb4
	 XaiwcS2assDkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91434CA1002
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503155358.31731.10655465276443461445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d107e57074496e1a51127466d13db1d96f1bf4059e55505aefb026d69704da
Date: Fri, 30 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725031553
