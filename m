Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674234BA59
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758132594; cv=none; b=mG0TWYkp/UcBlexLFNqFb6diVr+b0+TVOSOaLtjcWE4EEN0nP7d+wOb0AKwY6GzOAvWFhYejilNZtx15BlWYLYspMzrACmFzg5pg5D3Bh9OaxczO7e0K9TlBrUfIW1r9MYrJZ3bnRAFb8LO67x/ey7/OPEFGok2jJMFrSbi611E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758132594; c=relaxed/simple;
	bh=lYvaKuADp8u0bIqNUKwgjXKSLyBqp4pbsSJwpUecaVU=;
	h=To:Subject:From:Message-Id:Date; b=EPW79KaIyzIpc1V5x2/UAfbieTkqUMfva5DKyLCs2NnYfHKgqlxhT+KA14nlNLtb9I2MQHzmjcggliv2JfR+1t2m0THlaPQXzjg2V1uDfhBJGw5Pd9FEM1onWCfKECHtN9OUSzj8e0HEhDAMBCumUeDJl6+A+M0Kr5eKnG0EZd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITcwuKQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITcwuKQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C11C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758132593;
	bh=lYvaKuADp8u0bIqNUKwgjXKSLyBqp4pbsSJwpUecaVU=;
	h=To:Subject:From:Date:From;
	b=ITcwuKQ6y3t6jJo9LjaGrnLWiU6/zQWlc6G/O8eHgEJL2nLt5mzyrj8Yu6Oo59Epf
	 8M9Z8et649iEeZnxwoNaHYI1t++RWVJRAH0o/01Xh6LY95uqOSSHczkTuaN/fWEsQl
	 2oXwNCoJ3HuVqHteYY8QP29Ri8lFvF/ZiG+wXX3sW3Lw0j6ulG0HL5CUC93dIGCNbr
	 y2ORaN4bC9LnR/Zuv58ZqvS4qevwu1khCd7Ou/d0p/Dfopzsq0nQLfuneKdC+6O1+6
	 nzEEdkYvs25XPYg4K8I3h7To+Z9bY6C4aWL2d5UpjRQI7GZ2J/pi8dZwnHdYxOLf0/
	 9PKwxxexUdo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667DCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813259360.18714.2122304432358112004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9d718cea3566dad00a08ba584c83023171e58cfc1efa851b74747a6bb5b38c
Date: Wed, 17 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758132593
