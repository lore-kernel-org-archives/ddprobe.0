Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3013328466C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755814194; cv=none; b=qQFkDEeSacwmvVdBzfee7/DxmDl8Wd8epDIKaV+9AtsFPGzlgPE9wN/roSbuUEyo02pu5BDClaeqPt8gR439eoLpA2KGUAvN81pjhWoM/sM0PGIKM31AgIENd+Oeo+ZJQbSDLgbDGw2eAQO+iZCLyOhZuc+pG+LPEbw2wTi94/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755814194; c=relaxed/simple;
	bh=dGg+G7bAcSRCDVx+xuwfnkM7jT8x2OlYHBS0rxLy9Pc=;
	h=To:Subject:From:Message-Id:Date; b=LCsTvloM4ecAmPAX/bpn9MPigg3PVIYOv7+ofYMutOE1d0IFlkCcYlyFgDrnCDUPaW3kyr97PmfIv4LnFNWF9VJPgcuPXpYrb6uk6j7CLtFpov2ftPK9uLy32srKml86p7jEJZFmIwlMLIP2pR+SLqC/0Gdbrgx0vUrmuZxflho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr8cmzoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr8cmzoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755814193;
	bh=dGg+G7bAcSRCDVx+xuwfnkM7jT8x2OlYHBS0rxLy9Pc=;
	h=To:Subject:From:Date:From;
	b=tr8cmzoGah2m27+MLu2h2vX6xtDIqhZkZ0vYFuOG3zDn8GcLoqWkBr4bUr+OvKr3T
	 +k3LIgN8NJHVB8Hiz19S2HZAp+6L4XsjUUtDX+z8QtTZj2ka6RfynH8it5tJ+g0lYt
	 6LmM5kyTqg59IZojszDejh7U4DhfctI1kuIxMma33KjrSEwLCgK55ASRTcTrKtquiA
	 UE0629qFGyQxYP2Drz3p6ANIM+IvRCnqk6QkQznopvffY1prRYdUgVrt26zlryxrQo
	 Qdtv47hH6AAf6JKKorwt525KEs3/bJyWzlidoC2pSpm/Q6OsjPjlPgHCIexVQkcRoH
	 Q74AGRhxk2Dbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6BCA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581419358.23018.7589895760658649268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64d5a2841668873152f169c5da17f21130a12453c9e6cb0f6c66b28d6e8b22f
Date: Thu, 21 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755814193
