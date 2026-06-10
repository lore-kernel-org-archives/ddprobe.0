Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA7A348C64
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781119594; cv=none; b=Xp+H9YFlu7HtUuVscy5c1cf4PRKg8HK/V3OpCa9WoU6gVtShMnEIEL1gjFZ89i+nnZhwvNU5oO+IQOI19WtTUc4GIW4cg0Y1eO3b8krPphqh37aA2wk+bNCXTzvNKxL+945Wj7xrEcP476owZvrl+2wmnFm+B1mlFhRxkhEA22Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781119594; c=relaxed/simple;
	bh=SkabSYCw/uln6YM1zlqe/tMU3z81MhbjHvSEVsfry5E=;
	h=To:Subject:From:Message-Id:Date; b=arl9il6KH99mJwRWa2cjID4RlVAhB1hASzeIYZLaHpmlLe/Kx84kgrx8ZmIlu2BhCfwltQIGxwsFpZ5cFQfTqXoRFdHzERh5PxToFpb8PGrAMpxiYQbHe3nUVUu6fr6olILO6PkztvD4BfIWMx331R9v27O7n/gsWuUNGcbtHgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWdBoK56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWdBoK56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5120C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781119593;
	bh=SkabSYCw/uln6YM1zlqe/tMU3z81MhbjHvSEVsfry5E=;
	h=To:Subject:From:Date:From;
	b=qWdBoK56A9ccyekxwBAV7ubC1ukCPh5lfkX5vhapgPxycryxoUTmTk/BpMZmGCBqV
	 xQIzaoCLtbKWTO2MfcDxAXa6Dxlgr0iltLwucxu37BNmQ7bJSFP2dWkdFhtanUOeHV
	 zio5yZEZ6o+CMXq/FPHSMearoXneywa4el5wSHjF+9NrOmJyD7ZrD3EPtaPKZOkRng
	 SoWIpLPQ7TQ3ddLuDn5YCivSADUxp+RQQ7kGylW/rPYviM4oKde72BSFCJ/4ETxAJH
	 di35oTsbUtjJLF224Dx2lKwG19wNPifhYVAKbjMp7f2YU0FK1xZ4ynAAZ1iq83xxtw
	 fymQpPMzLGV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA162CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111959368.3225.6810329127080326578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82688002c96e5faf6ed842e5c17ec070bf3fb4ebf82ae62110e051eb4e833263
Date: Wed, 10 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781119593
