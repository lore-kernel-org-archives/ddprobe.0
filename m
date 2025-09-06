Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FD91E25F2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757172594; cv=none; b=DcnCncw0Vf+3Jhzicg3bQJ11p5SfLoj99nTeFOyyoYc6BrHY+DTpGK7hXvK6p1fKB34BMR4QIp3s9D33vb6yIUoYra93I75ff7Z6ijNGmwJp5qf7XNWXwbQVcwWIES2FUfPRG4QCGYsHCJtdyQN0kqVM1q9lHL5A/+T7gogG9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757172594; c=relaxed/simple;
	bh=4gLwMh+fA8ZC+vCEhezv6fDTeqb600AS+bK+aD2T/c8=;
	h=To:Subject:From:Message-Id:Date; b=UdQ/F8J1APaY/MtdJ8yxuZL6L1/x53OlXT2gYSJudKvR1O9oBGAG9vgzvbT7LSNobVFmTw86BSI4JXuYmItqi21LBu914v9f+u0ELMWAZnxcmssMjTzUTFHjWOCHII94p6rvPy6nIeE08gavna9OtiqcQFrqbSITmI/xH5eN8xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVban5pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVban5pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7ADC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757172593;
	bh=4gLwMh+fA8ZC+vCEhezv6fDTeqb600AS+bK+aD2T/c8=;
	h=To:Subject:From:Date:From;
	b=eVban5pf0nV8/9/SW2Gbh8L0567yGHQj1EP9stI3uU+iTsk9usHKEx+mP3VkmLS2S
	 ZDtJBegj5Cn99fVhIL4iM+Qqr9BGrlN8Fednu04POfYBaFd5OP+9ic8g6E8bQPSvyq
	 lN9/kQLYWfzMbxR/eHVV17qYcO0A0U7IKuTA0l8R34Xg4PTji/vA/c+FtnCN6nEGB4
	 p2IPXBHoV+JBTAJf3UA5EcmHJsW9VytGBiwLUQz+HtbAedjUFc5ooy2cD5HNvfjXET
	 oEyoIAyvKedMDS9GE6UDi3qXnMtsourhV0ckSpYilDjrv8uhwrZD3LhvEqIkq10B0I
	 ZGSxOJwi9Kb4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB3CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717259358.5880.3733166893547036198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd84d854d8a04981c439e19f443cbfb9c08f91a064b951522c2293171c798c2
Date: Sat, 06 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757172593
