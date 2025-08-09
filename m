Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28513288CC
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754715594; cv=none; b=fcQQXT+iHknH/rTVdpwYG82a1EvttdRaM82eLxs0Ja6Ceqlt2ODcQM/K/qaTD0Ua2foEf/p7luFYNubRAxXdD0h1khT5yBAMCaHkezKoq9wejumtyQ8ghV7nu9s1sFdXnD+0AiqKcK5CjXbxNz2BG1EADvI9lb9ZnhKzqbnfO34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754715594; c=relaxed/simple;
	bh=sYw3Q1bh0ZpS+s7+IkvXokIl2dxPg7B9z6zjJTCNDJU=;
	h=To:Subject:From:Message-Id:Date; b=iUX8/tvXs4a0qGZtcI0/hVVLvT9XP04YfrRtOEtVWy5p+m6Z0u1FhisfB466YsrWaSkgNUw47kV4AUbT5YYdO7oQ4dxW8bOp2KrHshGHVPFaFJq8KulaaB+kQUQgZ7QF0FOJRTmDO78wGf47MRJRrdnSx3CsTD45UvdH1aHqZpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfGlPlmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfGlPlmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7A4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754715593;
	bh=sYw3Q1bh0ZpS+s7+IkvXokIl2dxPg7B9z6zjJTCNDJU=;
	h=To:Subject:From:Date:From;
	b=NfGlPlmS5DkLC/pTg9oqriW33wykVyN2MVmpun/aAINfNJuu8GGxkiTl3tD6Iz5nX
	 lpk62KTkBVFScxklzZLnKPvuyOosStiIyWqoX8BAyjSystnXStqA06WYd08VwTA/Ei
	 oHc2kb2B2vUBjPF0A1wP2x3StkQIAQwdQ4mH1EwXsUeuhfXTvSgTJ4/BkU01usxOPa
	 2kKBXLDT8zIY7udYjs86FGl2LslCaST6QLBbYLP4//7nbiHdUK2SS+rlwvTBvVkv21
	 bE6eQGMYS8xPz8jsVhBlhY4K6BLQQkxjvY6S4CuP5gc5p4OyCdBF2ttDkedMSOohtC
	 XZ6j4YIXVv+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51BC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471559357.1237.2844494434564854702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b7d22a17365534c62dbbd14377b8c4627a8b718d6858b9e051b85b2a818017
Date: Sat, 09 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754715593
