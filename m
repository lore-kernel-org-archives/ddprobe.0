Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B99139B947
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780133614; cv=none; b=KoTIsRTgf+2Lu/2MJyu21Qs/1U5vYYgZptMIpJmoXYxChiSk7Jr4toLO2RJ0RKwGaLVnFYv6NySikNJQPIieDgj+DlE9U0vWb68+G5tz0Mwr3Gan+iJzZiqHcRNXP7dXFqcIQQYmyNWxUOc08A9UxXTARX7o7MX1fpWf1JfMiJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780133614; c=relaxed/simple;
	bh=8U3yWQVaqXl4Rmb8I4FwUEcYyUluvsSUWR59NaxQDTc=;
	h=To:Subject:From:Message-Id:Date; b=N4/W2nUU+lDCNlLlDTsqDPwzzpeXBE/ZCxQbbUHgYh0sObBV+s95x9NnWUzyLSnEfdZzpnntaJWy6YreoYqrBJCn8+38SxLoJFzi5P5v59r65SaTgtKKfgZZPlXwZ70B6QCeqTp98WZNuj0smBpKfdhWyEi7zFsRYxx5Kslg7s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2y9rI7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2y9rI7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E87C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780133613;
	bh=8U3yWQVaqXl4Rmb8I4FwUEcYyUluvsSUWR59NaxQDTc=;
	h=To:Subject:From:Date:From;
	b=W2y9rI7NxbAmTwfpB0LXON7eUO5t7WFJbxBfSBD2jthCal4picNuR+BnyObVWkTP3
	 si6y9B7uqLxZXleZJD31DBFKMFhRlU95Os6jt3sPL9vfkC3LViCcD+XtB+wOO9s89L
	 KDvbky19xYb+wToae9E8yOyyTA2qESOSsnNn7hAuWJbSn0NvbeGjgX51CsYm8mS08X
	 kDwAIBJbMprRqHZAoywZSO+EPc3w9c5j8Nu0EaEF7pUfCxA/HgmGK/c5aasRcUP7sE
	 bF6poaDpNUhqCs3PYzA+4JRujnjdaYnKmIuU0By2d5s6KjQAlJdqvSKHNmQ911zrUP
	 voHoIIQBpztRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD956CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013361368.4355.7823384889098201633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f4924c09d4eea9e4659582641a144364d6e695dcf23f5d93b043c22d516f05
Date: Sat, 30 May 2026 09:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780133613
