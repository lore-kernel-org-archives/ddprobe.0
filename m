Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A1184
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746933594; cv=none; b=NlAs8UYpoNmIa6IGizvdY2/Wxp7YPpH2joLYpsEM34CxfOC2ZRO1V0iCzDQaQYTtG54jg/WPAkc4NzIBNBW8cwc7Pkje8vLAadJ9X1M+rGEbBQeofnUwTzlw7b166IwhPeDikt/7d8Ltndkaxnav4KYIiz7KDZtzFAvD43GVI/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746933594; c=relaxed/simple;
	bh=L0YRAmUySkuSjiy9PQLjIL77dufDvJ2KZBT1b53ksjo=;
	h=To:Subject:From:Message-Id:Date; b=MVxEi9d2GcdE2uQHcrQUE/BR59ETpz9nRM1/cslqLE9fVOa69/7ls4G65KoThaeSOliWsUJkg6YRBGRNwbKjXmmM/ViP6XGzlYZP1/Ey621tuR3k3Lgceg3OHlfyue15CRNfPkG/ZpSSeNb8UR/NPNlVtXJYw8aQmWJH/lgj6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkUZ6zm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkUZ6zm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746933593;
	bh=L0YRAmUySkuSjiy9PQLjIL77dufDvJ2KZBT1b53ksjo=;
	h=To:Subject:From:Date:From;
	b=HkUZ6zm0W5xj2qrrr/fgppxuofqn8l87pVFLj+htX3YBcU0PlP3OmZUEq5WcjmaOQ
	 mahxKmNoUb6fUJ44R3p2jcm+KEaFOYhRdsX85fhdpu9wcbsjmmMoKUqbeFB5dZpqpF
	 CQgDeRcfU91L9dQ/fInZrFojCyjUpRR/GDHVoe/lrnW4Cv+IceMUb/PVm02k0U2I51
	 +jyNYXqfSGoW5rtXp7fYVJbcdpla7P+wCL6nCN0lpWRHC/wfyw3OaDrkLV9a6Qz9j0
	 oqd694EaHoCFvxFkr2XFsCzB3gsWeO7DF309DNUtrHZHu89Yk5R4N/Gd6YyCRsVmFm
	 78ebXJkHIE6lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F36C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693359358.16050.13647759150490257642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2b637ac575069473f673eff302f14626a4d66daa513a2db39ec581002420b9
Date: Sun, 11 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746933593
