Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AAC156F20
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732865155; cv=none; b=rX9k9xzCG6nI8ikZDdMe+ks5W/FiwFOQp5IrXRWaxbIi84wnH3a5jSN9OTSGmoWZFV7vIiV3R2yEx7y4tgTvg7HoX0Y79Ui0a19Q41E4+4ESGYCs307ZWUZrTIREWky2IhM25B9yx3/VBAN++YfQ2o378nysqnV89/PkZZRs1Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732865155; c=relaxed/simple;
	bh=oWP/jyurwUFa8RS3rbH2LpKlxwFLvoe13ntUMf9/NBs=;
	h=To:Subject:From:Message-Id:Date; b=Zeej7oMCg3SOit2kAcI5/AVXd9dRZxzUt+q0JHPKCNKyEvhKxkvKsU3PdGLZT6RxRK8MPakyyDWFDi4/q6UcLHDLxavhVDFaXSDXtGqnNPqLxZkZII6SNgW2oqaAjlVlRYlbFlQvaL5gOnCQOPfoWqbgeJVsdakCHoY8pAfNS9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIkk8fKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIkk8fKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DE7C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732865153;
	bh=oWP/jyurwUFa8RS3rbH2LpKlxwFLvoe13ntUMf9/NBs=;
	h=To:Subject:From:Date:From;
	b=uIkk8fKGQY2bmHA4vb783C0QxX+B+BshrXfOMH5TmUiOUKZYp5+mYEZGam7Y6jZkO
	 mcLTHvlhajuWVE6uHYryGCoU7SRMvDWvdebiT5cwkG+8BMhOQWzhC3Vuw2ANNM0fMn
	 bECM5+Y7Mb64pfjBiA+EyxId9jLb4LVyoWnZ5Eih5rwk9o8QI6fMa2bha0i/P4lBud
	 k8h3qG0gfukGm95p34QzndS0LBe1jY78crexLEYuwLzstD3bEYk9COaVpdcSZ9IkIP
	 6hacx28wf3IZmBxduuhlEg5tISzlW1vmnIrZO+rpUFHsW85GWfrGBkbwjeQyI7hyYJ
	 VYzpiAq4eQlQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48DBD6EBE3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286515363.23483.15381784360590586667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9132c0e983f69d9a2d6b700eb8575f47296f98ebb7e45e921d98be96604f07
Date: Fri, 29 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732865153
