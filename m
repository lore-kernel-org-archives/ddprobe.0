Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A0620B813
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748269194; cv=none; b=RrEnYnXniXmu2auFOcHfexBFGIiMdIflLAjh7Q2IJGmmTOSOrDp7IzKh/1SewX2nT3r8+NmAOWtmGzOBpTboNG9AaXsBaZrCPfaVnm12Hdh6laUr7A0pVb3q1IGqbG8jDHbcqEZWKRUHTPW/6cF9oOOqOQutF0uXYVZL2r5wXEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748269194; c=relaxed/simple;
	bh=7+reNs2RQlGJiyPEa/QDnBQ1C8ptVV6a+QyISCBHR7g=;
	h=To:Subject:From:Message-Id:Date; b=ZUFijx7mfu4l8Mpec93+MJq96/qwtVYNneD+xsUNse9XCIKbr+WSvUESZWwQUxfdhr+tu5DalMAZgWTXNTB978w7WElnlmoNG17T1/N3UBB+x+8T1TSaC7NsjMybIppW6SPl1TNGZ/ljbgQsuo9iRtZaNHmgXgLenHy4hGzwyMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWFiO+Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWFiO+Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748269193;
	bh=7+reNs2RQlGJiyPEa/QDnBQ1C8ptVV6a+QyISCBHR7g=;
	h=To:Subject:From:Date:From;
	b=oWFiO+KpBV2YkpJ2snjO42D5/0MhCiZnanlOTdoL2Fp5W1E43/ighUIGFuoXuT0Oj
	 oD9WcHsG40j56t+yIFCI1roQj2TV96Ik1gqJZUUH6s4FVIL3z+/ECdgFzPi3qKODfr
	 Xz3s/oaVyJ00d2hpkOzFarPzbz7DCTpNeJ+aGQqNrq3h5c9vhCzaLctW20F9UlqtOU
	 PB0VQ/SMd2Qw0metrkLv1dz4g0WhZjtDmY6joe+ADiX5jPV3BbjKmxP0RUPizbSbRb
	 BaG7+59wy/Ene3q01nQsaVZkwL+QQ51Xem+is/GN62USU+ydqRctfwLeXzLXD4Eo1Y
	 WeNRSX1slk7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B8C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826919357.20922.3505143528282978364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9f164cf79771080b488da1fd9fbb2df0d9901f1f1307ba4d2a69e9298667e9
Date: Mon, 26 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748269193
