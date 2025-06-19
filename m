Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472AA1B6CFE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750310994; cv=none; b=kR3oPIY2galNb3lRHiByadqA+ObuFK6IftrlMMpzD2KtwFd4ePOH0k3deodu0o5117suAMtpFfAAPw1ZQw6QpwaMgtg75kDp4XktRtoywXn7FHMMbkgqV8nMcE+veOp4i0Cio/0sZQXCxCByXXMKF5uHRQEuB2ejP5B/XrQaVWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750310994; c=relaxed/simple;
	bh=3LGfadIlFMN2GwIz6R6gBV1pqC02zNVWfkpbgpoTrzs=;
	h=To:Subject:From:Message-Id:Date; b=gMdQCkk9dibV4X+aBXhw/gFNLzK7Y3hdb/jk7MaenmGf+y6XCABpQcXFQmPwzBlkWSD+F7ngRKBOb4VEZPsQrcuiuGRA6/h3Kit1mo84akqAmWYXlo1UyiyPqySVwZ1mk/bYsKrDU71oAndF/3BBd0AdGlqEQK02bCY6toCrOKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUE7IlW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUE7IlW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750310993;
	bh=3LGfadIlFMN2GwIz6R6gBV1pqC02zNVWfkpbgpoTrzs=;
	h=To:Subject:From:Date:From;
	b=rUE7IlW4EhDiH4j/RrcWKDPUn/u+PVGnOYdn3NysUF8s3gQCsA61xJo4txCRXJEmr
	 LqqNaAkM8qnh4KbyXXAlLWQXLZGN2oSqcOrX2dVzdv6h8yvhNPXlleomQKBu4hkC/T
	 ni/ggPAaeUAi2a4QKIO8wItWjKfbGaELafRLuWQ0peEeev+76iwnaX2EXXm/PgY6H3
	 0NFsnG5Juk1RGQ4jQpPaDWXmj/Q2Z/Kn5jKT8Gak+hHunlaf0+a8p7nvssI9JgY7uz
	 aUgBY0W/BzF4mwbEdwM6GQKioZeHm0A4NPSV0fft2LzBtQaJ7JmD/eCVNK+/DnWrHZ
	 weiOGq6tIF/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ADC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031099357.5312.14838499705989192144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5ef67bfc742ab035fc37dccc23c591ed4533ca9e9a5cd42e90ee2779305fe2
Date: Thu, 19 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750310993
