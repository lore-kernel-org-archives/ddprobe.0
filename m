Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB1B279DAD
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777828654; cv=none; b=dsmeLEPVI6K1V+cFnllFVEI3Ji7xj2lY/b05gHgKlgM3e4144w3Lv5Ml9Tp9zGJCrEmyJ5Eu3y9YLemr2144+dPEOoKosS5ypWtXYTqjCJE4nAyLL8azBK9CMozwwqAkYR2UBwniAk1gfiECvOssbWQw3SfFJomlu9Rj8ss5PkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777828654; c=relaxed/simple;
	bh=Ipeh47QHGdZTpQ4YHXBF9EMXY+K53O9E0s7ZO118mjQ=;
	h=To:Subject:From:Message-Id:Date; b=C+WDVHSnkVpTieUj+4OnLcpW7Ix2LVrfhuIFxcfmN+tGrtbKPg4hP146+z3U+4ikNAzOF7gOXoUDM+kBEngt+rEEVfweyoZYmnB/z+rIiOCfZfWBtFZId1tNlOSVN3pGw/hlNGpoOSe3xbh74G5WsTuzoaMERiGOfaHGDoDerWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhWS6Sfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhWS6Sfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8754C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777828653;
	bh=Ipeh47QHGdZTpQ4YHXBF9EMXY+K53O9E0s7ZO118mjQ=;
	h=To:Subject:From:Date:From;
	b=DhWS6SfovezlQFzkxHACmuzw5Pttj1NEzE9V40jpjaeT48AtVA4ueQw0twOkkXnzu
	 VRh+e8BBUYUzFtTy24sN0TSf7pDd8viu201UNW+BebZwwJwGvRmUJ8vzXvIq7iTNjL
	 kCQ0oRMNfqUVKYPPI66xaFCZcUfmgp+Nn4Lkt0S1kfFFTDzEDki6LZIWREWuq3EMTu
	 3+RjcgDODLjFMbumVApW3ZbpDVw0nrb+H0VpDO9ADj9KfwfEBts5OZfhudF6BYL/gN
	 dvber1/rw0k2GYE8z4PFjfBhSD+pBb//59/GRCdeCTOYoe38UI84Pq7YnWbazWbCwP
	 YbSz+wOq+vo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA133CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782865368.457.6431171189165957927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75be40306572ba03db3bca52304c853058f53fc5463d48f9f1569772a4d561cb
Date: Sun, 03 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777828653
