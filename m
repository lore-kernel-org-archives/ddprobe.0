Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F830C62E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774203294; cv=none; b=O9OI/5kRNntMGuu4GVJ41hoNiN3n35Ii2WdRP/i4Z2jyAIlSXEqpvnLXavA35O32U3u1QVy927l4U4VEB5i8I2G1pBAbVH8hmcvSEF2yxRXc5XgOWn8lUVyAjm6aBbOjLXjTZCLXuCF2YueW/u5Da1UFY93s6zw2tJ9tp7qSoPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774203294; c=relaxed/simple;
	bh=+psGYkVdcDcfECWzLqugdGzgACXBrEGFoJSDDZT4q5w=;
	h=To:Subject:From:Message-Id:Date; b=O/JmdpYctQHedwphyJRDLga24ycohWN8LfuKD2YIdosguwhqWG7P80GVgCnUUSndgWe4HtCHNGWIaSMsi0KFv0hDxAqssc/Lj8tu46q9aoOVx2qIUyKgyqaNXeoWdclPGZRff0cnzax9HZo51X38GpB68Kn2eEUq7N/P5n21wlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EV9FvPJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EV9FvPJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA59BC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774203293;
	bh=+psGYkVdcDcfECWzLqugdGzgACXBrEGFoJSDDZT4q5w=;
	h=To:Subject:From:Date:From;
	b=EV9FvPJaYlRxtxzSkGmEvRjoJmNxrjy+VGJWOfkkiNgc1AYXUT05xUniMlICbcCH1
	 nwwAE1vuNKp536YL5P82UPYI4G/xdIGVl/aIVQJkin4lD4AE/iTYNcSniJOkw2cV4L
	 pQSSiQSkF9XdtDenNYkVnxODoTt29QxloU4x4zKL7g2QOxdJn+G7ozsnBoo2J0wA2H
	 51/CA5vaNOaZ3yfKdHPsQIWwMjp6OAjIiJG5nvZx3CeEhMRV+Mvv110E4R9aAx9E2E
	 /lKNnYR31hAIeMLvmdCohW+1Jg0uTnEAtGoQzYofNCreptyMZxLQarm3NjWyeiQgM+
	 kY9xtSUewtJVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98053FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420329358.959.10686167274265242900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c927e38798c9d1cd22103042a6579449326e741dded50953ed911c02549c6afe
Date: Sun, 22 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774203293
