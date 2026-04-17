Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA30636BCC3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776448053; cv=none; b=ZYOu0DDI3fjJhjeFERLjpVGllnm41bGdxBXj8PQ0UymIjdUA+rIebGI8JbrFwhx1tDpiug0zf7y3TjVAU06b67CwTkS98js6l1I6Abip1CVBfcnCvgDPeaedZt3/mAQv4wCdV3ozzla4Mgdu9izgnAqCwiOzLvAzHHE1Hgbn47A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776448053; c=relaxed/simple;
	bh=/Fy0c84im71j8a0HIccdFbUZAKORjyxESH694+Hw2uA=;
	h=To:Subject:From:Message-Id:Date; b=UliHJeEjw30e0eKDFA20iBZJwyaV1weay8G1TB8EemEY/6epHdNl6Ok3C/uNH58ZaUwTV9/L3P+tJASj634GCj//ns649jdth0dqChdgkK/Ab1eSlCaEZnVHA90D56nXZk2D/O1A66Qun+F0th59ebxWKiIn/lcy4dgT4//8iAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rN1oftL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN1oftL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D3DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776448053;
	bh=/Fy0c84im71j8a0HIccdFbUZAKORjyxESH694+Hw2uA=;
	h=To:Subject:From:Date:From;
	b=rN1oftL2qUM7sl3YpU8rAyW4uD5vwL2qgcE2sIKfmXe6kR98LaF3tRIwnDfgrhLta
	 xPNGRAv616x26WWhU565MW00DIweHt8x6c61ngmPNh0mQ0R9fLiy5STBhPopd7f1br
	 IYM2f+e26LpjuD93AAG4rEueF9nOMqwHbnM6Evi1piHpoxvX8ILuwJJ+kBmZA7cdH5
	 1UR7kypUKYOMsIijEzAwoXwgOXuyql8kAMoejg13duewmCo/viCxEczAegZgV9Jgyg
	 E43YE4gtfKql2V9MBcvYw4Z9EZySGFKI1zhQLDb0xfAS6xKsH/dt9zxHbZLhrjztjG
	 vDJ5h5xe6BtIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA567F8DFF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644805368.1572.18083738747908620964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdff61a0690ea3d3a5c936695c21a96cda31546ca046626122d52e168e9c814
Date: Fri, 17 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776448053
