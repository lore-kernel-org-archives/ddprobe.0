Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683BC27FB25
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759926594; cv=none; b=RN5F8mhG8laCNafA9nUUtRdaH7a3YQ59U71+H6qAchoTogciVlOdONelNf/x1lR26bi7N8VFNNcTr2+7flzy//VU45m4OOTgeAquTnNtGgcT2Q6AFYIsOWBd0tNQy2VV4mDMxadmVLpX+bG1yBipSsTDkIQIuO6ArNud4+siGlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759926594; c=relaxed/simple;
	bh=78z0wGaMCfVFpPEm+bC9rQZNFaUZvOJ/VSmpFyOMilc=;
	h=To:Subject:From:Message-Id:Date; b=kJfCa+Exe/5r7jCWhpfQw36gakuO4sJD2YAPrB4C4jhbnmFOlRPC+yykJqAY3UM/fmGgzocaamujyfC8tuJBTUBDh+rJjRoNc4Jgxg3MPEZIV15lpAd5oZOlp2oSgtiK5xS5hNvOcvlUj0cWg+5t/nZcxuF7CFoDvM09SdJ4aOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBFDH6/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBFDH6/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759926593;
	bh=78z0wGaMCfVFpPEm+bC9rQZNFaUZvOJ/VSmpFyOMilc=;
	h=To:Subject:From:Date:From;
	b=qBFDH6/BL4l6jWHUBoPIiyhPThtITun7hslkCp3bhBiVB+eyw+uQTR66pT/fbdZQM
	 bLHVClgbKtNdECaN5UyBWhvhwPQ+xTPfNAxl/V/aJtBCSzVBFm7Xm0ojBvkzCWbVVz
	 +JhLPh7/KQIKETlTSU3BFX47o6t0ZxZAFzegqWHGBNDp7GAfe1Nmqotvxx+fQdFd4v
	 z+0pMRmt5fA8dMVOjpf/Q1fW98rWLqqX6ZS9ngLK6uYcVAlNs1ioWmYHitz4hMiChO
	 SB6bdEvpPD/NG6xKIWFfgBnJm7G6M47P3inEHv2t7LXJshnU2WxuhqPVt9JwUJKRLj
	 ozQl09/NGl+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3CCCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992659357.23698.18206239705786346641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ef384cbb046aefe4b8d0d13113050e3dda6b2741e18a298c1e2d4c2cdce11c
Date: Wed, 08 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759926593
