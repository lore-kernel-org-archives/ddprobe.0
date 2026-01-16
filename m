Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F2030DED8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605834; cv=none; b=BRSxr1BQf8iLlFtNXxBk+w4UawvYZ09/87wPywnpD/i4H/ASFpgqg8X5N1DTUt/UrgqwW9YT0/jMwgskyGYeracESX2ZXwvcHpViFVV/Q310UCLSYDHYdSfvyTMTxnHigCzxjhEUe22ZXaspquvvWehlHlnnVMhK8Ycej9MtTW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605834; c=relaxed/simple;
	bh=hnZEAXMfVYXJQIMK6E3OD15/UHga0RgSk9F7AmvPfaA=;
	h=To:Subject:From:Message-Id:Date; b=tiso7yhNsqami+qUnq9J19RQcP11hoDkAnlRiES2VniCufbtJ9neAu95GrONDjxQsy/Y3NPNmLQUXyHUDxvTKChwaUADz0n/leMWm6xrssQYLm5z2aY6szMYVMUiQgPiMLghg90sluAFkd8nBI+YWsEhakvm81V2Ll2gDcT8c+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JepAPM35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JepAPM35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AFEC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768605833;
	bh=hnZEAXMfVYXJQIMK6E3OD15/UHga0RgSk9F7AmvPfaA=;
	h=To:Subject:From:Date:From;
	b=JepAPM35ojH282EE5M8Z6Y37d6srUAv+2Iuuf20yyfGm3U4foHMBBtK4FdsIePhRv
	 DvEW9oPhWyDII3LdLO22/sqBOfQ6AGxypJL1X2EGVVi3yX8qyb6Yv6Se43pxrw7J9M
	 ORXC+Jz82t99n0ZqaAKJqTCPTtEbRyjoaYzRJsBGQrNzHfPhaxGp5JUoCS13z0Cql1
	 wC89ehg7JIjaixBaaE//njOb5ms6tIZ9ygVYvMmIlAvFWx8kc9J3rlp8xoDUSVqAYm
	 mPs/0niW4kzG1ITGEbCmvzLhBolUxOtpsTKcEQgrvL2uaU8oD9f6f3pXSpmPpmguFT
	 0wTFCAy+ANgHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C54C98306
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860583358.28467.14825204044223472934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de65a081e121dfa2f3b3f44536be3a2197bfe1f2990a949815401d2854db76b0
Date: Fri, 16 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768605833
