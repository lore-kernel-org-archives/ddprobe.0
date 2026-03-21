Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D053134752E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774128293; cv=none; b=kFDz0K8bcIbOo+OqhJ/E9gtp3216DFiJUvDXcsjx1LYg+F+rJJCAfYBSdZssaxRkCqfR/xC7mcmCIIg+COJf6Z2eTUjwfmX3CaBl4imh+AL0bj/tjOLmgVpWsdetlSVrojFBkmLpn0phYStNP5SPMEUnq91alfOONoWSf+rbW/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774128293; c=relaxed/simple;
	bh=NRSA6W+YV5f2+Z62RATdD0BSNGedNqg7ZnjhTDbpiFw=;
	h=To:Subject:From:Message-Id:Date; b=pEboUz2qa9M289sBZs6hbXwppRCQqukEXprNGv3tgc5mqrU/zc9Unq7J1A6z3YtLXmE8Plqc6vgZP0KHGAACAOSAj+NC/eg3RA391T9k27UVdTYHXADtAeWXDuaqhgDUrR0efUchiZ9MmurhIE3Oe053M/LwymbzecH0kFyq78Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+8WGVdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+8WGVdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B333DC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774128293;
	bh=NRSA6W+YV5f2+Z62RATdD0BSNGedNqg7ZnjhTDbpiFw=;
	h=To:Subject:From:Date:From;
	b=e+8WGVdrLU6wVrzuo8ex2PDzrdAzyKMJZ/9sPcflAZzxJrCBur21EHEGIP2DxOrkh
	 hYWrpw9jh1r/5uu8wTjqxphAPML1eAg9mOgtO1oWORtayLpg7ai4+6/P28RVLFJ6wq
	 s6kxN/5swFH6p58pY34ooWBJwPGhyu9vuflbzy4yLKEdZqE/ZDkz2tHgDeIdb9foeI
	 kFFZz7sX4hLLmk0//kWiLQnTHcMh0Ys344Gc36BCgIYCY6kieMClfQjAEHEXPrZc5v
	 pwXOZXvtBtWe0L3Jzur0grDoyB1E4hpCOrGb9VCUCxszoRfazx4JO0y9tI8w4KmEyt
	 7ZbRZJGiLxIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00C7109449F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412829364.21873.10794173666308444793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904b2eaec6b2deee97c6e3b9ba91ba3b732eb48dd7340d9fd94cf9951db2ac35
Date: Sat, 21 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774128293
