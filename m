Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBB8346E5E
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789334434; cv=none; b=cvxp/jREhOWoQsIezURtmafMD33hIVSC2KxLJRBPDVYU9+4p0LsaOhyDXvOCoQoAS/4P3dRw+gqQY8gkb0kLJEPGEfAjPScb/F4O4szkWDZV0WMZZiXJfYsYXpPILO1bwt4qVUkhr794wh2HFs6htb7JEyLvBMeD9P6WoFhh4g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789334434; c=relaxed/simple;
	bh=milooIV5vAey2WkTB2wjTv6tkBQpLGzMPsioN2s2E4c=;
	h=To:Subject:From:Message-Id:Date; b=G+VgA6nM6gXgX7ZYl3SrLgLHLGAS4GZEqsU8YCQyoRtIUNgscUs4SGI8gv+7Gyj2OIxSikdDLm4rzC2PvPlKKpUMtLbmHMfhUPVe5ziTy0QEP5FPTL64B453UAv3ERmAsUK8uOffbBVSiNH8KjgKrl+v+7dlsmUC6Yej3g52V70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g86rxx6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g86rxx6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE07C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789334433;
	bh=milooIV5vAey2WkTB2wjTv6tkBQpLGzMPsioN2s2E4c=;
	h=To:Subject:From:Date:From;
	b=g86rxx6p/1sjX+qHFXSQkctrMzyghr/dSr2VyJJhAXXNx8AHYWyld47cciUdQse9g
	 kHvzhbZ4kAvFY8v3vqajGBLTa0N22wO84nYAYFbcItKiGoE9u97tBnxF2tTPLPjJXJ
	 skoPesjTUqui0kFoSHxQ0G/k14jMt0dRcL80tXOyfeYsbF9fN5GLUV+2Va3VjT7x2h
	 C6oy4p9f8R+sf3iDeiYOsCp8vsTC6UiCcPZZ/pa6OuOLCNSaq75gPnrRrrlR2Utv4R
	 XbVHEIORumeHYsKvEtb1v/TKZzLybviAb7N/bF5P/e2mJKZnlv9bWjcaQ2laWejBmb
	 M8HnNQWQThLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0121C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933443368.2756.14907434905094249917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67edb48c19b09bf8078d9fa2dbf02d19e23a8f74cdb18442adf42b9cca77fbad
Date: Sun, 13 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789334433
