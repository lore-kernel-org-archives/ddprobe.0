Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24432252292
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761365994; cv=none; b=W3Wn6V/3KEwU7BZSf5he7229Hml+5NkQnyuIBuE1KLEu0DQ9VUwhPvEeka1VQ80F057C7215s9rG/Dux0WxQ7YEg0bPm/PL7f97Z/8/rwpwO7uQtUD0n7lcnslYQzy2+4QiVPQPhzkeIF2O6WWqOpimTwd98BqpMEEm0UYFuOOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761365994; c=relaxed/simple;
	bh=NtPc8/Q+AFaVA+vH4NnuaSfI0k86sdnLmeYfHYSvySg=;
	h=To:Subject:From:Message-Id:Date; b=HIt8u5zFny7JvuiL6GScABCTUD7G27dIX72tDWhsPKdRYYMx+KqJozuYOlSzMx7xFBSDSaR5HMy5IE7fBp8yxx4iCBMP9bTixiIcANZEAmbhPvB3n27eoL49U8dLOekzJq+QFaYiVlyCXXd4frhDr/IZgVU8fCBgfBpRuuQMLUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JF0kfNjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JF0kfNjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2D1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761365993;
	bh=NtPc8/Q+AFaVA+vH4NnuaSfI0k86sdnLmeYfHYSvySg=;
	h=To:Subject:From:Date:From;
	b=JF0kfNjMO0p8mlXl4dXFGwt9yVURmIsNfqLLO+ZXih8phy9ROkar/gUC4TrmqUjpp
	 WxFHrvOt9+0XO0RepLa0AnWAy5GXPajm4oA87d14nTMkXb6vMWtFmp6eR1epEF32N0
	 BEUbLQGGtSSxS3N0kXKp6oWFFNmRK/VPoo0sFgW011Utw0btjOVeIbd/h91eNwFUYf
	 6k88gNt/0yl6emfh2IA7fDnJgfgG7SNQsn2QwpUtfFw/5F2OmKLozWkBiqx8vqIeIe
	 xX0/D7qcytcYlKyhEVZNOo+2jhcbJzMx23Mn2xV69F6AG0Zd0lyvXf2HNQOvN+h5Oo
	 23ZZncSA42vVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961AACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136599358.8922.13191239626963959127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3daa21ee8e461fafb569389297a35519992088fd66b642a9acce40187aa367a5
Date: Sat, 25 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761365993
