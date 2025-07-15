Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291382D375A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752557394; cv=none; b=WFCVThFectMg22bY5mlDbEkBJKMD8EpqNfl+TAZzarBq8zGza4Wf/ayxOFYkBgPsPbnyP9QlmbuHP5kpJtadnEvsg9U6GjyFSDITGFP4Crwxb/KMk0qQ5aSqQXRF9ENLk+GZmgjVYyA/Iy2Ua9kYkTaK9+X55cNcu5/irzWAYbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752557394; c=relaxed/simple;
	bh=SWFqPhankl5nFNE4Csy/3Z18h1HY3abgdgmRo0iOAIw=;
	h=To:Subject:From:Message-Id:Date; b=EEIDa3j94/TTfIDLyAKvbjZf1KRpRDUIkxDvnA3Tw2kJOPtxcxW5H0UF69KTdfwoBkRk6T3efszn9p87deFQT6DzSvugq0FsjTRTOwB4ZHrHG3p9atVZZpq9FUE2pbMPAFnzodtJuNISjpQwRTtC493MmsBsn7vLaTKdsnof1gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFmQuLnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFmQuLnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D72BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752557393;
	bh=SWFqPhankl5nFNE4Csy/3Z18h1HY3abgdgmRo0iOAIw=;
	h=To:Subject:From:Date:From;
	b=hFmQuLnp7GXcDTXwY9xdiiTck5M4lGDKZgIPW5j0FOa33iOqJXsnqXaLiuq8P21PE
	 Epko3Il8NRXyDVYdqHOx04WtTyDsIaGFsT8FVFb1J4jDZ/DhDNSCDxq7pV4XLjfQEj
	 +BTEdLjcXllgDx8EBPKFlj8p0i8A2GSpDU4bK8n8jrkxTfTV7xSkwxsStK7bexhyEG
	 LycYWvlvf+YSe8MnCXSD3c4lMbv6Th5z/ERCAwYyWk0uASjf1UiP62OvdrzvJvEDko
	 67VaQCO04THqiJ691diEHEqZMsUFV8JRIO15mwXHk+E/D3pwEaxrWnnCGx+8XltZRv
	 5od6DGCjME6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F630C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255739357.25351.16854977480343698356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c5b33851e8ca9239d15cba4929ebb36f8e3c48564e56680a7adc2d5b26e82a
Date: Tue, 15 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752557393
