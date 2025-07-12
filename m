Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB2DB672
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752293394; cv=none; b=KkzwMMCiRYeGHqIToaV0rujbPS0u+jMVzvdQLgJwkiGXZBWKJH4zC4vfem9spidda6bFwQS8umPMqiU+sl5xvYtgYyltorg7B/zzPihe4MEXiHis404/g1wvFNRPQj29iQWVvvxafSHYWUFhSTwdnjV0ZsbAJelb1cWIjI7PtAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752293394; c=relaxed/simple;
	bh=wSuhtkFmH6y2ZNeJrOvvVbDdkNaqiNG0AmyLPLU0Djw=;
	h=To:Subject:From:Message-Id:Date; b=V/E7voPU8oFmkpmS9NmHdEfwlxEXmx4iC5TYeiHyB0my5p1zdBp2qGF702O3dWkSvUdASIw1KIhweICUWcm4mQhF7fIur5bR6xgUnUUs3I9Bwt2yko8Rsh9s3UTuWJFGqKl9B675Y1h2MiZz2wpcj+OVpca+EWMnFJkxQq6JyNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK38fQFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK38fQFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F33C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752293393;
	bh=wSuhtkFmH6y2ZNeJrOvvVbDdkNaqiNG0AmyLPLU0Djw=;
	h=To:Subject:From:Date:From;
	b=aK38fQFgOWRwnwbY2cULYH2otJuvM90/hxqwB1sAevKskRY9EyihKWxm+fcQtzR4Z
	 aITagsMOLHTC4BuhrPFoorr77EfaQmC7ZJZNo6KlD3HYINXsxSmkcsQZxwfg3D3p+L
	 o1lbJN7knKx7v51jD/Rvxc79y5R/sSYbXhFH640uENuvwnk3d+rz5XOiZYhoxr9TFO
	 Gp6zHQpvyVICVzPKV1aFt8/ZmrEWWMVt5nQJhXrASNyU3gVNcUQ25rrd+0W/NG6Tch
	 D+QirFx3o+mPcVX46sa6ZS4GBQNm9w9B0wiZgJ9b/qxgh9vC+qztwcmBgMMCNEeDN8
	 Y+aiHtCRcm8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F802C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229339357.13969.12443793007402269218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e424ee69afc95f04d27686d0807b903a0de27237a1bc2f5ebe52c3f1d93771c0
Date: Sat, 12 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752293393
