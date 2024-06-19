Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7554D224DD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718763563; cv=none; b=rG/MRFfhSK3j3UQGl0zFqOcx/S7SCXrQNw2Qd6Dm7LgtbAKzRLbUyUxzpM6z8KZWnmFFqZVVzcorUwi43pt/zTHaiLeCoCppkgLxLAQHpYFL6BZD2cyVJWv6UlJi/MHn/roITeP9AUx1+timlfty3clY66ZRN6wQGReKyslgoB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718763563; c=relaxed/simple;
	bh=usgmtLSDgT6kJm9mgkOWlxLjI99xVU6+NknFsF4+Das=;
	h=To:Subject:From:Message-Id:Date; b=oO45PWzFcoP1y2S77yEKWg85XD/oAp+t0h2Rg3kwLd6OIwrR8rqG5HeAMX/xFkXncQoDNCP0V76rv/9KlVVYnLOtuZVlBQV4dr1VkN5bpHX38fv/InmY2ixwH4WKYEMNCgxXM/uGlZP0byNS5pQSUiTiF9uKKsEjyblEgZqDtWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjiilGK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjiilGK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2156C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718763563;
	bh=usgmtLSDgT6kJm9mgkOWlxLjI99xVU6+NknFsF4+Das=;
	h=To:Subject:From:Date:From;
	b=NjiilGK1NK4/2rsEKL2G9ueyCRdPqY7ue0ccMs0nE2rx4JMlisvyDyp77b3MDACNJ
	 AV6HkFmS/cqPJNT6WCXXoDBeMYmoVbEqAb5iP+Vc8Pvv15XIhvP/kEoy0gZhGQriMS
	 +JDxtwMCmdAXlYc/Tok2O5a/UW5SACFpRvzUzUBoce7gOBQxmkYI0HyM6G3MmG9m3u
	 uwhXPwQz/ZR5Qq+EibX8W3xb4eAJCydrrrCBOX/+IWwsByLwi+PyjH7bG3UwHgNC9f
	 sxDGjv9JvBEW62TsQf3guwRIrSWQbQWtnKPYsnZy8IBcyYsZJACBDuyTgOJ4zLO8yh
	 lzM4BRd/6tMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23C0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876356280.11552.841388457175142965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd7cadfc8314e60e88a5bdd0c8a32a2d3026822f8655ec3b4aec90691d1b712
Date: Wed, 19 Jun 2024 02:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718763562
