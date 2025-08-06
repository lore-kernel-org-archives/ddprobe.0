Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BE428A1CF
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754473194; cv=none; b=GVQZZCBGW+Ix7XSpLAZ+k4EU4V4oMX06YRJ8nVBFXUGQC+ILOXrBJjgHQbzX/bH7f3tJl+6AfYH5ldYfauAY83gVJj4MH4raKF9LVVLDrwzSNTQrCtcB70XxWaJFkhQuDGgWp7zP4P2SgaJ8ZwV9nO27bMxIizEQ//ISKVIzp5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754473194; c=relaxed/simple;
	bh=sTOijjbz1hgrJL7E+F1pKoa6I5XB7nSp3KcMyHFt8Nk=;
	h=To:Subject:From:Message-Id:Date; b=dyUfbR1G/RReJHp7vHCNa2Lyo4dhm8qXyVPM0K0fRBaXLwcov9lmwKbeCLBA+Bd8jhXgN5l4IOyhBIti0pA1V1W32/vz1AKNj9zG9YfbBASXtL3fbsGP0Iq9abg88Ebswoxp4zt8i4C7LS1Xk0WLOaMDhVDP12alJqvYSlFlEkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWLrL1uI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWLrL1uI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE8AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754473193;
	bh=sTOijjbz1hgrJL7E+F1pKoa6I5XB7nSp3KcMyHFt8Nk=;
	h=To:Subject:From:Date:From;
	b=kWLrL1uIg3IgjXm6PTED/9TyWQR86pUG12495vrJ0jdGBSWCLuBQYPams1SWonz3i
	 yyURwyKL4O0J6PhwzD+WwbhF5nY+yYshCuNgBy+v7GpeT0ownI9khTjczTxMKcxblM
	 x4RSUuRWMFXkXseoqJ/tc5cmGZNm4nsp3h3hWctBoi4QAJjR6ljU8VOX0Okyl8s7y7
	 Clb1FnqBEioJ4GbpirgQAg8mpCd0NUObZXxDCD6RrvWU0BKPaBUEw0HFcBZMFZ4yWF
	 ZrMDrU+itSPvTf290kVNJuPCn4uc9Gu2+b+1EQCat5I63SkQy5PiLtp+JeIsIX6xKu
	 XE4snKcFi3rvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA27C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447319363.28115.521913249309423946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eca73be665d3f2cb469b402fa3865b2bf397f3f14790d536e2b1cfea54e2e65
Date: Wed, 06 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754473193
