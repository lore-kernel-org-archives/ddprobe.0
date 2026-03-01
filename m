Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F1582899
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772376894; cv=none; b=EZxjDzH50TZTnbfgw9oWO8LSkIa0J3/VZjieiG//Zostl0KaerAVQu482teRymrw4RaRx0TAVARxku6CikdxPHVV1AVwHA7EAI2Xn4yTVBjOZXDWTygRrZI3/KUKufw3nVL3ZeO0yfYzfbj/B9ev9M4gXdv5m7DRUgdq60k7Ktc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772376894; c=relaxed/simple;
	bh=U8mr/8otz2puaf2uM+9VOq6mrhiOSjStRVIa6dEJty0=;
	h=To:Subject:From:Message-Id:Date; b=XNHF0ojz6mlQ7b7EVgOK7OjnkDdbnI+fSqytPLw9GNiEMobIJ2ea9WTClHW7DuVl6SyBdtos1FOF+JI4FPZDvQS7ZtkvSNler9KU3MeOGkYfIxYU3TVDNHTCkyHy8d9DvOrIUrvrdI+vN+Y0q9/f6YCBlbr17fj4ikAS+Nd9VgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKsV9oHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKsV9oHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11DDC19422
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772376893;
	bh=U8mr/8otz2puaf2uM+9VOq6mrhiOSjStRVIa6dEJty0=;
	h=To:Subject:From:Date:From;
	b=hKsV9oHVFglUGGGzAgXJNM9cD5OtIqea9nTyvLEwTzo6i3Vo9cySyiuTOqY64E4Pz
	 Ds5+ZRaFfrQK3Z1rv3twvQ6R7cIi1PZDVOhCo0CPZ1MleuEyJImb4uGY/mV1BDAaDe
	 t8boFmpb4TZN4xdq5W1ziq2z186iyiWpGn3RLyWLZQ74/hH9jtTvz33En+5+eUfhwK
	 17PTs42jezltwgNKRpntLcZ3K+prhwwPDdjR/QsbjWVLLz+BHDiOMwV9k2+8EgbBJ/
	 +mKhYb9fTor1ZnN4KLUBWXQ1uLCYHMnvMGsNpeUV4Gb7L6hDTwR792VgwsaAruuNrP
	 m8lRPfu0fqkeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0AFFD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237689358.6042.5777718006822262898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f421154b1d0195fd451a18ba3b393cd5e8455977942c9b91c00428219ac6ab9f
Date: Sun, 01 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772376893
