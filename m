Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261E21A447
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643194; cv=none; b=G1nfylfPfWOpdniK0xpy+cUFbzwriotScr3X5TL9HaAS1w2klhqHZ5qf1ZzxlvlVqm0OaEjKLKoX72QzyuPCHrrds0Rzant54qcvTc4Eo3NgzAeAAh0VoQSX2hWx0Yxic1KlgyRmGuGTtx/0ukutARNjUqGwqzNVj1HH07l0pdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643194; c=relaxed/simple;
	bh=dM8pMiFuCBVdQK2kY8iat1rxrhq5pnw82Kw/olHR9ww=;
	h=To:Subject:From:Message-Id:Date; b=G29tCpwWmhUyh86wOEfJX7hA1fJ/07cKKNRY4C2ozMeuuOP3/4TwKISNgXoW3r6XA3qirR4CIBGQl1+Khn7SVLLixnIPbQH84V5cExGUDkHADHUejQIr5EfwZypsYTsOQbSSJghjsoCvb1GnaRAvupA8tk/HR2IzwC0QCTEhjWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqQ5ptyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqQ5ptyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9122C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761643193;
	bh=dM8pMiFuCBVdQK2kY8iat1rxrhq5pnw82Kw/olHR9ww=;
	h=To:Subject:From:Date:From;
	b=qqQ5ptytu6SY1PmwKzihENz0ILRm3SG8M+g4pRTOR8x0I31H8qFahJmJTAwDbjIlV
	 B1fYDJJwE2A70MB+YXKq9yaPTzIjQLEkwuved7Y32PlbhbyjN5AtF2E1W2j6W2hMAP
	 1qosrf4ScNbkZnu3TUBgvIiK+YmTAz6jbxP8PTRdXb954vbxN2l7ExKsZsd7JwbS/J
	 clI3gp02XV2GWusYmjWROYr7Mxrt1nPNl+OlQIHAmkK2UP4m5OWFF+98M42vIml+eO
	 ggv6kst4kzyrAhkEtRFucmR07m04MfhsrKzLm+4UIQkubtBPJ73csZE4me7faH2o+1
	 l35mAreXGEXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D05CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164319359.20238.13738272796024724121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5b3bbb74afa931ce5642fbddbe81d96cff396ad94900f826db10965dc2d2b5
Date: Tue, 28 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761643193
