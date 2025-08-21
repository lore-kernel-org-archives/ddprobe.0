Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6932DE706
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755779994; cv=none; b=uogb7gn9bfU10zlz4xLTgOF7my3gWUZRjwzmIBHsm4ABMc/rmaAU4VizA3ZmaaYUl6ZjLbiCnZ21fLQ01Ctrj4VWMZSZhuCeJwj8pA08JxUctU4U3GEmTaE8gxNEubg9tc7sbEU5W7InYKNgOa2+x3Oen5yH3dToefuj5aV9atQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755779994; c=relaxed/simple;
	bh=QhNdgxq6xUig51Xh2abJBtZ6SttRdLoEgN3MqfPWC9I=;
	h=To:Subject:From:Message-Id:Date; b=OC2ZW63bIDbPeRCEU6XmfGcF3dhVywfkVCMtBC6FvdNumGBW2DJLs3LLoK8ETcC6/KmAa7zFFRa6m5E1NejjtP4B26WF2nTi5k8QsgyklBNSAsg2Jhw6/2ZymlXc2SOLjJlEvQFOKUG0/lL0kF6K3kWOO8CeMyTRThovezJCSa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqmOjkV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqmOjkV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC4C113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755779993;
	bh=QhNdgxq6xUig51Xh2abJBtZ6SttRdLoEgN3MqfPWC9I=;
	h=To:Subject:From:Date:From;
	b=IqmOjkV5eeJTeutm2SphUzwsikYvGSoYYTeCU8jy3cxypEr2OfJd92EF/0P3sd4DN
	 x38u2Sn0Z9jqjOd4h56H32qfZE8ZmyGM1N+DTT2wU2wUf+uDn5GDktZGLT9qHzliNF
	 0Rdxf2UGf+d37J+TvkRIYGH+E+fYqOhxy6DbXE0lU+E1wz8A5xQ5aUCTuMsiKseion
	 rM54SKId/tPZUu5mEXbJDTlVSHMBHiw5NNvkFBGkS/txwd/EQ9Mp2Y07rS9gCFT4zr
	 lPheWVe3bNCdoi49QG7GcgaCXv7YuecpI9qpFRUBBsUSqwyiKgwSYQIDFEgZBtNbUh
	 u5Yd2R/Ab2ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CFCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577999357.31465.3870626521974766240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b556042b730fdd26171f3ef6c0e66855dd3fa4996072a6d8a21bb31b442fc544
Date: Thu, 21 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755779993
