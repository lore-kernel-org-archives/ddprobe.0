Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A222D838B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769556234; cv=none; b=szcPbwC5YJZzSyz0mReD0SMTUS4eJV2NEVuVOHEpUIJuj+y5Zar0l8IACKEHTBrN1dHEXaKA73op1vEZ3hz9Rm+UjdkZV3g23Xx+OcOunlLGvEis5Wy9Gfw2VO+XAiGuR/0n3zMFiodM3GwHKh+tQDQh581xiF9HSuhqx+Nb+nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769556234; c=relaxed/simple;
	bh=2YG0EV3kYaf9BMr7B3yEjU7WL33mJ1+hpA2vMMn/lWU=;
	h=To:Subject:From:Message-Id:Date; b=qz/aFfubioK1XLYCe2z6s5IfQVhrliQMzxBYVlFGguE/yaZbfeELfpMPAl2iVzq4WiDVsTtnXDtUDx9Dj+feEmq3/bA5nHHFS/4lNGWheomGLjOTHJdgpi710TCGEeKJBCW4dTLYoWg9wlj390EsiWt/9I2ZoHXAMV6WXokufGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhWWbcWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhWWbcWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8915C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769556233;
	bh=2YG0EV3kYaf9BMr7B3yEjU7WL33mJ1+hpA2vMMn/lWU=;
	h=To:Subject:From:Date:From;
	b=bhWWbcWSQJ5W1GCp1HIqm7IJ1SDGTr2XssbYuXcSDQgMYx9ClfTgm5DJK82l8QVZH
	 RAhAoBHcQQcwUj6wMWELL4uHBnifq/4MD6RFXxzbZctFr4SmXc5fl+Ohz3WBjesOFx
	 a6DMbBwiNRoLpa052qY/z0bNgQNAT1QkD3iGXT2w49U3WbFn7uIeeKBFQXopYkdg6F
	 M0hAAd6a8SIMbdJP/0NCY7yVvOUMINGXlFRuohx1RNmARVSH6pXMfEMF2hKLrxkalE
	 EQnG1FYqh0bqWZLzO/bJ9CI1SyTMoQ8sAF6cFCHJDYJTGwEQ2VxmNmVkE2x1tzXrGT
	 rmt3tUODRsonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96466D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955623358.24100.18306436716391303703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a7f59eeac9eb4382b8f2aff6a64367a1cdee0d6b21e608609f056b6dfd44cf
Date: Tue, 27 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769556233
