Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329D1EB5E3
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765932834; cv=none; b=ZuOrFWqSHhSAyfXYATXD7N84IUAY01yyjWFMdms0pKaKj8t4TKe4C10e2ZuZPCHgo4GusCbZOa9kcZRRz29FBQ3X4QwaAUSJgGPBbq7KiqzEGDaZywTETX8r/8gU06s7g0tNAvPxI/0jbadTd8o/REq4kx5mkWT90Dx076gUJBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765932834; c=relaxed/simple;
	bh=ckuSeCKrlLuoayI0fzmCQfvgJAdqqGQ1TGUgLJajQd8=;
	h=To:Subject:From:Message-Id:Date; b=DpLWAFhHh74aDVCP19WmDzd9lcr8dFuCRO0T0c6OEPLLRgEs/IUBAudHRytfMG6ITsgPKI7stvohVSFhY50mzaup07EN9JWJ/fSYDUjMbZjCSUhHSgDeYPoTdYiDmNRGhIT10oHNvmTESd5SzDOGtfQLNpcVyossmT4QSWrxZx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCXDKu/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCXDKu/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A69C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765932833;
	bh=ckuSeCKrlLuoayI0fzmCQfvgJAdqqGQ1TGUgLJajQd8=;
	h=To:Subject:From:Date:From;
	b=HCXDKu/6KBzgrkcIwlX8k2A1Kasu050Hbm0YdTzYvZtcMWaqMr8RSqwYYc1JBl9XU
	 ItXHdUZxYvN57pPRSC299BHDje1THOlYI07XYDj6cEbtX8vBqnSM0O5jIXeWiutB7A
	 eX+NwQ3lg/LYjU6CzHXzmH19lAxDt2JBwFIdFFDvKRoOj1ZTqgdxXMwHM02ihB/aWh
	 qRKW4Akxgl0/dNWD98OCaN0yrUzv9bxb/2Q89nBIiLBC0ViFjM7jvVzgK2KdjEeG0o
	 xFykDFpZcWa4rM2SNX4UoY3ai7CIhG4DbYnh3nIgm+cv7kXU5N+JUk0uEmgJsgCBki
	 K9JlhDVFAD6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BFAD637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593283365.10451.4910462215361926313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f9f85eb4797a31c7bc7a77d3d8daa37c9c213a64c91497e710e6be9ea4821b
Date: Wed, 17 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765932833
