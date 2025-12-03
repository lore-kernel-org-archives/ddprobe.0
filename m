Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B32D63F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764769374; cv=none; b=bNn7uZTvuGCQlZg7IUE35UPYL3ls9BiAGXbNM3OuqpdKniznsEdJuBEhhqgl3gE+DaZSMEAd4sFy/e6xHEs0TYOKk6mppyFqcUYzSCJyYCnPDe/YG2Q9EX8QO5C/6zXxjO/pCOr0U7V/nDyfqDX+sfahwS0x4yjrXCNWsqW2S7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764769374; c=relaxed/simple;
	bh=RlrMTgjaXso0XevNAFS4NTEBwqO7eItszp0lgwDzdnU=;
	h=To:Subject:From:Message-Id:Date; b=uuT+z1l/zdsf+g3lkv9ooVned6tE0qDv1/pmKhlCJs1Dv0w8zi9dEUJXYI/D3EzEPgmG2hPkrtdJy0qjP5W+1A91c1YoSruiTl8T1fobuxjlPCVV2BC7zrzx1ESy+c2fvW9wt2rTFYbTa7ykdbbMngM5v3Cl7Xu6h70X2lU30AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtnakjHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtnakjHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764769373;
	bh=RlrMTgjaXso0XevNAFS4NTEBwqO7eItszp0lgwDzdnU=;
	h=To:Subject:From:Date:From;
	b=mtnakjHVoc3nuyEk4YES8Za/b4Eda5+9JVTC1bvdrZW0RzxjdntB5+/agfJGLX9zL
	 JeJLkYi1euhJ3gZ1W74QhWoRzsBGFiSLSaRjso00BmEm4W+4IEQcBiMiCLAkTdR+di
	 IGDH8GsT425UFCNO3SXEHLIfhfqjh4y9io0BmcTg6MoLq3aLQ6LcgtxEawccnQEeFO
	 ftXVoh7S2sckWb3sjkfKFwA6VnCdva6DdZ/5F+w4o3B85S6Wncs2R3GgbHgPxuNOCQ
	 1BWNMNQRtU1bDAeaPCsnB1gWsKsL8h+VqC33+2uvxuk3p36pftM/D7P3ifC+Afmg/G
	 DCRqXAFGqMErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91103D12D5F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476937358.10273.16687252342278809899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04021482df4990153cc2a3362d62f8b2b7dddc575a8bf7ab03e7ef924df11a5c
Date: Wed, 03 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764769373
