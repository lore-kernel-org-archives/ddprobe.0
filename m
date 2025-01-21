Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C8D49641
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737470754; cv=none; b=mOO1A80wRMdeI8oUkiW3XE2NQ6JeQSFyUuRAe12OY39cJetPKud2rm2UVJJfES+C7qZHkBJGoaqk9rKBVGBN6b/foiUgdCLfPy+wUzltnJ9DzVaKRwaw1R5DGzz4LTlBhBRbLUEODNUYSG6gTBj1z7JQT51gwGC8lhC/RC5tUpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737470754; c=relaxed/simple;
	bh=v3ZwOaJ/bfUjljhEAJELwZTvRHdahAkmK/Ws0r6UR0o=;
	h=To:Subject:From:Message-Id:Date; b=DGGvdLV0EF3d5xkoOnKc8Br2Hjbjw9cLweIfFMT6kEbtUSPVqJ3seYFwlNwFTstqmN4bqoK08Nc9ob6HqbDYMg9UcXoDyrn31lRuoOcLe7ocn3DOO2ewq/q3tA1h73luoNVzOA3vlAU8mR6EkDOFJOf2yfHUTyjrI3IQQyrmXLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGsGSFqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGsGSFqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB820C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737470753;
	bh=v3ZwOaJ/bfUjljhEAJELwZTvRHdahAkmK/Ws0r6UR0o=;
	h=To:Subject:From:Date:From;
	b=RGsGSFqFcdTgnmI6Pf6iRqpHfxuZQYDHy97tj5jXMHkeIlIb8jy4ynltzC0OTK1x0
	 /rv9iy8MEFGAtfVHIfq/M6rwqX2Kgjdla8krew/p4MfDnlXL18oXtlTczDnFNz/vyv
	 KYQSnoRVObX88mQ4GAjrT08MkNggLO8bdR4WXWWwdepp5jnTZbyFubNNZvtftqfnkB
	 GArM1n84ut1L2ZCLCnisrzWZvvPZukMa9V2IPjif1qZWFYiJR7ehjFbzRkJjnSwH+Q
	 hBQWPYJfbqSHd32uKGTEatgbA4s0RLp8XgkRytrBJSv4S44gO5D3OtqTucBvZV4QQf
	 O1xx3iX66E8ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F9C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747075358.18702.4995098669857720186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cd4d0010f5345976ce85dda9a78b879698ece4a9c06a927592778fda6ed257
Date: Tue, 21 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737470753
