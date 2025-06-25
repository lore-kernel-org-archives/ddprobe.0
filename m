Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351933594E
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750839594; cv=none; b=d2X98hC7OwWf86T8L//OU3oFSzfJbEJuJqbjrGeWK8tlRJS/oMSZTt6Y8xSP1jq0prJEd+ZYfZGTZhXyBUK1gLDFRqd/1Ao29vlLhHk5bfYkzKksM40ZxQgpgslxzk7XDSJdgcNk5XPPom5yfKNReZcXTpP6EZmEndV/S2Tj+54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750839594; c=relaxed/simple;
	bh=I3GL9dHtAWuiE2k3VQ+B/Oc893ll7/DRmQNWkOPkZ+A=;
	h=To:Subject:From:Message-Id:Date; b=EBqA9vMhisUY+uEQqphD57bOJTbzC9bXd5YeSGrVnEExNMyN6Wb4SLa/GHmdMYwdL5h21DVMj9mJIYYN0XGlACzQHaa6hhKI+2Xvo1okkZwuk990NbqDBoOy9jKMGtWuFrRI08wYV9z0fLhKitScQbF4pqQwBUVzCOB00+n0IKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUp/In51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUp/In51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB94BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750839593;
	bh=I3GL9dHtAWuiE2k3VQ+B/Oc893ll7/DRmQNWkOPkZ+A=;
	h=To:Subject:From:Date:From;
	b=VUp/In51T0yod2d6bAewxwlShZohECZ9BhTvyMUiOYHtgczRSUy+iZf/k1tL4F14t
	 XxywOtvlpukMXA2CYShKnpOusDpgZrvbEEHvpY2wqbSH15Y7kfTHq2pOGwYFXX4MXl
	 pu9G20TPAJfgjj7HwetOyHqCoX/fgipeCvvWND76m5NC0b0CvnIVJXl1DPV3iBHvot
	 eqeanCEgsZEBhFEtpqmPo7KV928akq1yfqtpRXXq+XEFU9k1zKPZNf7ib44pCdXxWF
	 1NrpZkkVXBy29g0hPl/ynT0KShAs6oHRl3CZ/DDMLvKNIZQfrS0KHL+xTn3aQgRTuF
	 TvXL9F1ZUl8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD4C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083959362.22203.10193792930678000369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f573c018d6ba03e94c150952ab964abfad1fe24f147e7ec81f35c077daa4ca67
Date: Wed, 25 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750839593
