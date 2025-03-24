Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDEE2BAF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742798395; cv=none; b=p680uLcyEPP6jU5P0+U+8XTuFHZ8FLHo3APDQXAYk7RtTEvlzSJ+whyYlMnbdl0Ot6rtXnsA4YIVle9/fX7CMZohbI9DWQgVZlnu43U1/P0yXkI7XEXx5zbzi8JZfzf+ZTvR5IKgItUvOu0DO7HG4YT9aS7r7Fj4ztvii6k/T5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742798395; c=relaxed/simple;
	bh=o/qB4xJ/c74AIQZT2Iqu5b8t3Vahli1DIGCaf9OYZMk=;
	h=To:Subject:From:Message-Id:Date; b=Q1cWL8lZC16YOwX1cgruHst58oXHu5njZd1bd0z+0j3rtGpIeB+mYNtsKuFg/v09M3SLkM0Sh4ULEtvJlKJpwJRQHsBdwJpSWTQDHitK7F77iICbk8pRY4371Z9Ro5ME1hXP3kKF+HjDumTbXl8hA+BvfIfPGheb98R+e5fX1Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpHRm/YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpHRm/YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD77C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742798393;
	bh=o/qB4xJ/c74AIQZT2Iqu5b8t3Vahli1DIGCaf9OYZMk=;
	h=To:Subject:From:Date:From;
	b=CpHRm/YUdL1QWt7qnt9xh8/llO7qroOvcRCBWdepSyZek05smXUwYbGHR4Hxghf86
	 PfosoNkv+pkJyuv3BuJ2VsGX5a9E2b/ONZ50WnBhxzCBxXFLLJWnVzQUvTO2ikCRVG
	 fNcFL1PDzhIEiFpIZJvCjJ3a7mnxxMnV2SSsbiUpolg49Leoz6RqOv0OI4xtskQuTl
	 osPE4ZhKYzh+KXz/FxT2lhFjFVzNXcmc2GSjoNo5oLheRMuCZxyHukj3R4PZyPKB8M
	 VmGuVVKubzX3dLFPmeokBY8zkSCAjtt8b+G8g9C95KF//oetUa21EdiPdWpZ5E+Tyv
	 KkOvQ3UpQN7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A229EC36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279839365.26402.17902969678196605542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237354760fc87899a281c362731997ce8a82dea7d3b17e5e68b005180c3b759f
Date: Mon, 24 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742798393
