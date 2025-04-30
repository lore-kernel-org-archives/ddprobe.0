Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF7E2D023
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745981994; cv=none; b=o6moiZ9ip87kvZAFYGOlP29CRBRwTcdxaV95/93Ptv35M3/h+bUPgt1A8MvqbfvnE5cal4L8d1diUvKlj4a/2VzPV6hSEi4IqRam5d/UYUulG11pfT6A58WH4wDtCSmNMnwN08FbDELXJKd45HM7Ps46ElxDFV9IToC8BaugUvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745981994; c=relaxed/simple;
	bh=Ju3aMtOiAnIO6giDZz9lnDzPINU9fNywhLLdp/UpTBQ=;
	h=To:Subject:From:Message-Id:Date; b=R/sF6qOimt/qn7QaeRYfjKtpXaSDKnNwYGsqfEgQAuL2GLYCKFtV95AZgPzoYLO47sXcVQU0IPtu/nSsdI6H93H2QQdiSNd+H2gv6PYHqNDIDAcoSVDi0EWEQ9UGnyWPcRSgkgiA0tWUPoU1dCQV+44Nz2O4s/V0GW2cxEY+BEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3WJ86gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3WJ86gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745981993;
	bh=Ju3aMtOiAnIO6giDZz9lnDzPINU9fNywhLLdp/UpTBQ=;
	h=To:Subject:From:Date:From;
	b=o3WJ86grmhhPKVlf8PMmCOfqz55E1TmEjW60uqrAUiAE+BSs6Nk3u+/yo5Cbr9dmT
	 UMKUE4xvnM+HqBr9yDfQ1OSHuHacedxWKt4t99rl6caZ4Nf2YL4ajtuPRDi+zbtLim
	 w3aZRUpqQVnbU3PF/Pyl/Hl8mVJcmjn0RUHz7s0p78wr0phw+dsFgOXiTF0SerMPvy
	 7oaAE8sUa8iHdsWg50xlEUMgALGpdrV8S8kCY22q5Z9i+SfwaUgdQvE3tLYdAmV+0V
	 RPu3JUCpPfICEz2UP0cCD62oU0FJn0uSSrZM0qQ2/gA0bd7tNCfvQG27oZlO9vt54W
	 fYJY8yCGketvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91769C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598199357.22498.7228867301195701022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617ac24d01dc99e360c49309b90dc61c3bec7d2d275157bfb23b4515ea102066
Date: Wed, 30 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745981993
