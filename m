Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B3C23EAB4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785034; cv=none; b=dBCMEfGvOPtWg9iHITdmVQuZI4JCsTMvOhrmJVTxS6roo3I71hJoLKa5etgJJzKAmX3VuZpG7ptHbtU3DqumV132s9IteY5lfipFPdWcjek39ko1zppAD5jhWFRECh+EBhUE9062Fwd7a5gtTzZ/swP65EtueFm8aldwdDRkvmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785034; c=relaxed/simple;
	bh=m6l4PxVqIo63S6VPeWV6JzIcdbBf0h5URJagKs7brLE=;
	h=To:Subject:From:Message-Id:Date; b=F0ApuqqZIKZN+mPjZxfxNFRckYBwimBzmTX3iyQ5FipUcOQzZ36bGo39sxBrW4Sa0Zw76qN8KSUInykjOtfOF95plXQ/trPGwrwF5MguKWSKZ/3AVnrg4jO5BHKMlzfRBVwCUhE8X6+/7ocr4U70z5w+DL2VnrHoxP8ttYg1SQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnZ/txGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnZ/txGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767785033;
	bh=m6l4PxVqIo63S6VPeWV6JzIcdbBf0h5URJagKs7brLE=;
	h=To:Subject:From:Date:From;
	b=QnZ/txGg0fLkeOG7Mf+voSzQ69zznoS1G3HuJSBXZ+539VqpV9S8M7H8L/urQAd/H
	 3g8Whng0oxckIiEqjW0ZrcNX3UjmazPYpgKnu1zJSbw95+r2pecmH0+0WBB7tyRkKx
	 i1jFdN6FByABkhcXqtwlSnmGaPN0ZzzKiwEWWVQktqDsVnf9CVCeKBkKk/cZQqvdLv
	 OOUMTgsEPDZkGXZYPPRaaSZgKWq42oXDJA8l3BINoVF4V3X0Vb9bS2SpOvjBOmnpm9
	 l5vR4wtOIEplFXXsnAt7QX5JZOGjpmxWif7m++mOZzZJjD+8sJMj6doQwoUvrSnvUZ
	 zoPanFKE96CqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91471CD5854
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778503358.1044.8046675767049112317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f037f0be45db659b7b0eb5fb0939a040e436a2d3f4863a0ada7d79791d6c30dd
Date: Wed, 07 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767785033
