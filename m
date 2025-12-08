Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32268320CD6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765214574; cv=none; b=f7Eh0JwZWj7+9CgEPl1MslTnXg2usSOzgR7uW/cSsZtRMO9k68ePq+9NL2RqM4/t2Jo8O4wCRd7RGXqE5w7PSn4FhPqxbXMYFLaR7psc1FZWWSalW/LvcVkU7AuNa/CxphDBq/Ur5meo/N3m6H/jdvubPdq4hAVG48c2bnVVVlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765214574; c=relaxed/simple;
	bh=SllIuq89F4WKlVLqFSg4TMjp4ntCYzE63QlJ5JRXkwQ=;
	h=To:Subject:From:Message-Id:Date; b=XsOOe4r04oZ2j6fttciOUzAwTSQ5dqsdfif0MfU35sxkILmYhVfcmNVR/APrCF6P/OWxhcjpes8+l8m14PeVcEyQM2cu7S/LslzByNEQ7+Yw4IuifKRE++vH+KDkXH1C/SVqBZhENbVeDfBZrfeAbi5r5i3DzlNBj5QVttTSwxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1cY9lbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1cY9lbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765214573;
	bh=SllIuq89F4WKlVLqFSg4TMjp4ntCYzE63QlJ5JRXkwQ=;
	h=To:Subject:From:Date:From;
	b=u1cY9lbbNksNQ73wtp+RYxmvFxSnapPNaHPLXdGZK7B8YhicuwdcxNevwO4/FOcqv
	 wP4zhEYLhqLc0esC1wPUBZVAjm/tcrQZfUv76NJ5V68jWiMndxWlugrxVkecCXB/HN
	 3Q2tX2QaP7HiHVoL02f0zIdbymtuZu1cftlBVwlHpx/RaVH1ke/V2xN2+DdbcX349t
	 vRZPsUieY1qfB7uoK/3i8sMxFUZ5b8lyln431PS30oqAkgCpXgfpr3HNAiZiF+MjI3
	 3wubSrHH7TyJjRG8doUFZQElf+hG7/qCIWZRKMc+w5kmHlmcdYiJIDNulm5eMSI6Dm
	 TCnUgwhg+3aBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F17D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521457360.21217.14903413953011394416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853a5bebcfa6e27460c25283e72af9c575ab600c3e27a2ea58d4772bb8130b8e
Date: Mon, 08 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765214573
