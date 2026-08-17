Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325383F164E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787009434; cv=none; b=AxNecpDjLnO+Ht3llRmJY50rl1M+03rXlC2kVNo2W9Em5qdZjE8SseRu21JVAwwChE3f27RYah0cTDck1YUD/LHgKMYYZuIz6Q0tjejQn1AyO9V/MhsVjNRjyHin20nNMAgNjjYUzOLiDXMdnXEFolkl3Hz3n8UVQ5HOxPYbV0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787009434; c=relaxed/simple;
	bh=BEWrF56q8tvu7A+CoG8lnfLvXSu/mP5bRd2SfmnLqEg=;
	h=To:Subject:From:Message-Id:Date; b=J+GgMiE6TeI5bCZJee6xn0q+Tbp/ei+LYXDGlQOOxWrCFhusWbnHPThTwGY0TFVvDLF/+fHkJ05hAcAfTGIBzTog/6gkS90LhZxB+JWjw9XwfmMEbftL+7sbuqQzdtDFXRrYBAV2Hoj3zV6qT+/FOxWB7RlGmIMiVcL6tBdjxBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akrFJAV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akrFJAV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97E0C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787009433;
	bh=BEWrF56q8tvu7A+CoG8lnfLvXSu/mP5bRd2SfmnLqEg=;
	h=To:Subject:From:Date:From;
	b=akrFJAV5IdS1fPAc/1A/lUwyVacBhc8/LnzCQABslRvLBisODh1FZYs4YosIm08hr
	 w1DCwjcRl7v4JZTP82bLnY8+iHlYoxfoetQ++H/w452ZGA90BOEQz9w/4+dPjtVOci
	 4kChqlIqeO4S0FxIzLaI3i9IHCgHGjZKtvEeUI1UvtJHSReF3GgTeK5ZY5env4/+5b
	 EoPJ10rRB94btvFtjLLFEnVyM12Ji4xCzwXTKd3rttq/s/XJb2R4nyAaG5+UlBHCEc
	 35I3ODZanIOsrldW1mhKCya4lkNUAvA1ZQTAV8wvtWmqnbS3IIe5bf2DOR+y8Nyg4u
	 McGLd3HZK6hOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49D7C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700943370.24049.2561151913786850110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bd1addd60051b164d35af5597b5e31235df2e41e55b348ccca6f8b67c5fd33
Date: Mon, 17 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787009433
