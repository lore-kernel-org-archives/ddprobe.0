Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617C01E2858
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782636514; cv=none; b=EdBrqLYU3Z5dqwXSNW0VlJwwa+/9NVAtjbfT003N/362quSvxV5gX0c4G5KVeBCL5nsLeAD/ZepPJ41VLd9Bnzfi9qNS6vXJWuEnacA055sNSSYqemXIUDkmVP62QrxOPThG729NBb+63+Rg4wWdMYJDlVPKyarJHk41APTFqBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782636514; c=relaxed/simple;
	bh=sbQZQCLedMm9D7zyqHNm6lWjCEWmAQX3FWCDzI9voiA=;
	h=To:Subject:From:Message-Id:Date; b=a7RGK7cxgdGKHBGHp2M/FQzot2X+W4chhnThwOtNOakMurDFAcY4fzAoa1VwPoeBfHTIxhQ3+Zaef+tuHpFb+hCkcIOXn2fNGVevAp8/mY455pF4RltO7lhUKf6El38oH4cGOsNx5Lif6CdXfCOVAGc1/f4uFZcZRl7NBu7ia/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qczyHDsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qczyHDsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D514CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782636513;
	bh=sbQZQCLedMm9D7zyqHNm6lWjCEWmAQX3FWCDzI9voiA=;
	h=To:Subject:From:Date:From;
	b=qczyHDsxJy68obn1ipdiD2inP+NiDNmyDhZlf6n4LejDUHLftK98cjxI+qdRaQytq
	 efSCQPLLK3/f9ayFZROMN7izzmYuOr3U0EEyugFcyyDmKBJyjajqTtowc4UE53nzSw
	 TX67hpsS05lR6PMfT3p8hRfm3ycVUC/9zGpctSoeHJ58tG5VK6LrsbrVFrAqzIsdtZ
	 LzG+yVZPgX67FspOfoSYGmr0H4rlDYYRlxhNwDQ5ntHACzgBOPj9HrUFyul30Y5C+n
	 ezNyRLK2lT4JfJMUh8CxsWuZPxNIMiCRgMSOEaaM7NwuCBTNqFx0ZfC+yzIg0ti2Wq
	 rvQx9A9TVWp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B539CC43602
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263651369.25380.5130880716457266583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15d9f4e6ebd12e816f5cf76f7e48806b7df6da3208afd59572a6646bd1c538c
Date: Sun, 28 Jun 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782636513
