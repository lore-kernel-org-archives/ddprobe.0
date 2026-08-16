Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D513D891
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786860034; cv=none; b=kle9+Ql7aBWjXfNC73cBRFF846IhglsFSRxGD1D31BujxYREV2b/IcaebSGiuu7wASt9+lMEai0v12aX22l4iFw+t4nwpFt9ENTZ+nMKqi6dwNL0c1hYQ7M5k70pIGI4SeW+RwMaLLETH7eqI9mTNxwbo1k2YHVY45eYZdmM0fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786860034; c=relaxed/simple;
	bh=vC8b5MU4ylrrc1zaCHPyEPsB1inucqTsW5sh45ecbMs=;
	h=To:Subject:From:Message-Id:Date; b=prAQbCPjQmwpnkwpLscVcPROhDnEi2ql3fmxUOIBgWHaygpdJBqYn/P03z83nr8rmh8asXdT8GprIAthNiKfoY/OnZ0T2ni9CmSHJwN/09w41ET/4Ba/vM9IUZyY7EemtUTWgpNyc5it66eG6ixHKxhFexZfGs47uYueoMzKPJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDBZz9vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDBZz9vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57ABC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786860033;
	bh=vC8b5MU4ylrrc1zaCHPyEPsB1inucqTsW5sh45ecbMs=;
	h=To:Subject:From:Date:From;
	b=XDBZz9vwFEPY8rUrqMCklfP4R2SkGOTtjwBji/TwpSrru4NqqCrODe69DwBmH262+
	 aWgWspGBR/z3qG6yZ+MbvKJD0hl8UsAKHeJRD46uj4NeFOaT1Kd+AaLNMu/xdJSKke
	 /OwQWOcpRVhVY8hYjbqqz7T1x9gPJhblvb7SdHGnMCNFaC8I4MKTc7MPXcX8kl0Sj8
	 TABTbXunH0EsUzGdKnKK9Q/+ATi+dR8r9uEVPPp8agHWENpxFeT4H4kddtc+o+ucG6
	 FRl1zkW334cnP6mjjNK3YkfXJJ2BkbAq+NrAG1t7pDYlijY7JUI4e30l86tND8nz+h
	 afhF9Pm7t2AqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6EC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686003368.29681.16238455711427671752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de7f401eeb4b7d18f395e2ed36172f30769e34196a0d37685bece917ee19bc5
Date: Sun, 16 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786860033
