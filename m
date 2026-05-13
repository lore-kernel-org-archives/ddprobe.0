Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BBE48C8B0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778687434; cv=none; b=PaGzmzpJMU1pVETy5OJqbFdRN2tR2fgygpvgHiM6oIYnpTuaQCAaZfvVQC8qgrN6y6ghyXxPPrNr+gAq9ddXXCYq8hFTDCnGJPOz1qwYAvTHs7jAFMRDRFLRz3ZlHTxiTTdM5vEa0KHk6IkgOU1W3gfkqOr1shr4ADfOawojWkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778687434; c=relaxed/simple;
	bh=ilEcspyY0EF8P3r7CtU7cYAToz1PoKfQHxP6R4kXLSc=;
	h=To:Subject:From:Message-Id:Date; b=Q3MufQ5529ZU4GE8BvbKxHNtvdarYOrizWttp4pI+gFq4Joi71immCRPILxV4EiDTU0esN8VjYhazCiDxQPxL17+bTMpRvoizTY3yzf+bU1NiIrxuseraRCIQztDgglX/iX+B13HawRMUH3g1ZYyRp00+HS8JLYY1j4t5tfSanE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir+inaLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir+inaLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BCEC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778687433;
	bh=ilEcspyY0EF8P3r7CtU7cYAToz1PoKfQHxP6R4kXLSc=;
	h=To:Subject:From:Date:From;
	b=ir+inaLtdvYLrfoYXzCpjYEEPXOpKTHwEaiIDWCjUhu3zvZIEMIEmr92UyjirZtRa
	 Ru6spmoYxfaO5Mkq3twX/e38/Y5CqaNnOzCTeEqzQEX3f8SVyJFS7bbME1FgI3ZHJq
	 tSfa1eMp0bNl4r+g8JW8iRnKlTwsfX5nlBRocKfTkWRga95maFUIUhQyZYRNWo8MTA
	 dY1k7klhVthM6nR626TdIYgbiCN6ZWsHOoxFIHM0YC9ueRbGk//AQjwiKO5oSxcN09
	 m8YcLARRpJNK8DuqdUirAQWbH7copyIlTRIzXSFmBZTvEZ4aveca5Nqzj0kZ1RFoFq
	 7koG/e9ivTeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB904CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868743369.14327.5277159240580721579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43433f3a52b61c70bc29be73abddda4d9df8bc02c7319ce188b57193a98ef068
Date: Wed, 13 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778687433
