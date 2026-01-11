Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D880A21883E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768163033; cv=none; b=WwgKG3pivIXoRPVIa3kzelLabNhr9BEl4X/a2sWHxg4zGLjmXwtN3Umjev3vzuiGP4j0LTeXk//FiCIqDjvdwPTB7O2zuVfCyld5DCLKPvfYbwHY3niMpWLBeEfsVkKM0fUJUVfqqFUYe9+3nVs1YpL7JlqfEhCsSkiFjF3FTBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768163033; c=relaxed/simple;
	bh=NrA1MmPsSGuujCOpJ3rE3fjBr0jHTsW9LGoSTAVkcho=;
	h=To:Subject:From:Message-Id:Date; b=Xtp/+0PNCdrtV8YD7PCNSQZ/npLApcEBF/diwqyzqOglKNKcYx+xuuzUIWkMQmpxiJJImQw0VTqp/sQ1QYTuN8/ntb1CPAQu8YfZjkNnyJKwBCwlxTZA0BUZ2urh6dUOFlasXHfkHrnQL9ktow8dTq4s17tgyA7OzmrPMvR+OYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GorvK6SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GorvK6SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A319DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768163033;
	bh=NrA1MmPsSGuujCOpJ3rE3fjBr0jHTsW9LGoSTAVkcho=;
	h=To:Subject:From:Date:From;
	b=GorvK6SPrG09FMZHZQsBkB25KJI6W4nSdcZlHNUYVApc58gqMCSF/v8kSCETkmXNf
	 nqrMMcsKBCqJj1ieyRWD0tHMRwJp0Fb48ZZQv+WGzcL/o1F012GrMHFp0WRVoQLpzW
	 8NdSoCEPKa2dEQ/DhVS3RZRQJWQLzAupWvFY0TbeS0Wqy1N5zX7qWJmKlqiRUTY4EJ
	 65sMHrXxZgmN56FnCZPc2ssIwBGlg3IyGToaIb6ATyVkyiFhWZeSl+kDP70kAvpkSY
	 50biDfL48dn6Bj0YzF0MJ3OIYt5BK297ipWctgtfHVCnu8KYJYcV6zfQciQSqpbzM+
	 NAEd3SkUrIY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7DD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816303358.32421.16145010708996760457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b34db25e2dc88506b1860ab27a175b6b8195216a10d6dc27e0f82f6caae3a10
Date: Sun, 11 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768163033
