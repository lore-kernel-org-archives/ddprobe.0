Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456AC18A6A8
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786579234; cv=none; b=OhfTg9O67vHc4XKJqYYobs5548qO0VVG6Nq2lq4ScBVhCaPrM5U0owTiKi1sWJNf0NomdpuzAqkQ2RVEo3oPTFjhDev4qFqS43pR/O9UNM+hNWpa8AUehmlURWVoD7FW+c6Zmp3vrhQoi6E0OFQzczvFwe+qvJbwF3VQTQpidG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786579234; c=relaxed/simple;
	bh=h5qbZNkMhAFf05TyxtHhJYh8/fDH5oGCHalytsQWw6s=;
	h=To:Subject:From:Message-Id:Date; b=Jh7REcjjiECkkneIQRZGb+0KmKogQh+La3ub/KJGkeudV6QdShzyFTAgPPu01bqRlpPS4L8ALzj/T7Ru3hGVVsn24uB/JvcrfiiETcj4ydGtjVCCXUZoUHPtF55ql/VMpeJBVucdSTCkhVkKS7fS4FgzVkO3tv4JcPHCKeXS9eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ky2iud7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ky2iud7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF69EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786579233;
	bh=h5qbZNkMhAFf05TyxtHhJYh8/fDH5oGCHalytsQWw6s=;
	h=To:Subject:From:Date:From;
	b=ky2iud7E1k2BWL0Jhq2EkOP3QwQVzUKy6U2aav4tgeNGJrkifBJ/eOfO39ARZViqY
	 Iyoc0N665ZVuHCAeQecO0VllbPoO2HhfitDW3Y1SSCop5ukQQZaAzft7EafijcoGNI
	 w8tMNjZ5rLiCpgaSalhuiq10d1ZS7vp6bB1swz7J9zYShbBuXTSiptE0WpnxdN6P8x
	 cSf/vFWUq5J2MVyBFrW3zlbizER6HzCGBPHMnnHdLGQ4+cQ30QUXPOyeADyd4hatOn
	 Z87uU5HSt8yMwZzPnh2P3aMCfHIyXdaaWFbY68gIn+cdYuffIzIN+3ylqjhmVH41eb
	 6dU7eSRVOiunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FBC5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657923369.7743.15794184960488360203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d5845101cae506b30d03774dc039744ed8f371f6ee3c74474e96253c9d9164
Date: Thu, 13 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786579233
