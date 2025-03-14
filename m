Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9BAA32
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741985335; cv=none; b=apBkVE3UarKplFYDRvwgQo/vfxlW/N8DyEOp2IjsJCsQ6KoXpC23uiTfu5KmU1slK8Nju6p/goXsnmYjAX5qqTmDGOmqLb4EGOY6AIGNfQh1B6nx+/qWfM2X3SUfbLBBn9BPwP9VTt+LJ/mCv4B6opLQspqrI9RhqrBbtIfM1K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741985335; c=relaxed/simple;
	bh=ITSjCkGEShAqcatLJ1s/1ss4V/+hsMSE6sI3dGV2bOI=;
	h=To:Subject:From:Message-Id:Date; b=IecgJt3XqlTIc9w56d4cB76e+vp+zAe5ZISDG4we1th3/cRlTYU0Et44JMMcRtP369vx7xCOyDvCbdhu2j1H/9jTZ3a1uWmtwH5yGb1SiDzjm/bTupl4ExblzxxskR9F+xfylec+7I9AnVac9vnRaz07jb3u4P8wo3Qha902T24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgVeP/bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgVeP/bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6C4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741985333;
	bh=ITSjCkGEShAqcatLJ1s/1ss4V/+hsMSE6sI3dGV2bOI=;
	h=To:Subject:From:Date:From;
	b=BgVeP/bDEaE3RiyFdzy9qfQazCc2rdYIxrqO8EMWe4lXJdCYa9GdZ8cvmoARug/QJ
	 M2wNaNqkr6ONttjI+s58W48Q9k0K6UUsv0s9QJnLHpA0tjwZB4HprdqO54AGHYn/T+
	 qk/T9rlUMv2uistv2FhmD7pgT/7aGPQU8dW8J5cq4WcoESj17y58NdHWO8zAmcQjD8
	 Lym+iGRj61x4o04bYMier65ybONJadiLyZ4TVtJtMvCi/6w8L0aS1Na8uTIDFm2dgt
	 dGwcoVYF5nfugsGSsRbL4gnrf5m3MMOhH8NpeqGw7HqJPQXdmfvFL1YaggQk2CQexT
	 vb3PDU9ID2Kdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969BBC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198533360.824.14338722261301815769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68442611207f8526f2766e3b03976880e711cba66dfb3f0deccec83e308ff8c
Date: Fri, 14 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741985333
