Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBB3255249
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742383194; cv=none; b=dEkwi8FVySlx+klHcjAsqvgQyH4pDM2V7zB1AlJP+D3+8KIDyxoJNC6uThbLcguMjDQ/KybRo77ywtEtwF2PzrG6h0lbQCU63QzNiu9GHu0yJsDzkl8YFvFJ4wfofiLr1BILxwYdsChDaOguYlfJtvS1pkMZ1248zH/SlF73Nmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742383194; c=relaxed/simple;
	bh=0KecYGUeRmEULhwn6mTzwA2hIrh8M6WF756jb/a8FgM=;
	h=To:Subject:From:Message-Id:Date; b=ogf/jnEO/DL+QBSVxUb4eCmD1VsH0p0qRj4YBWIWitpOnNFss44i5gxUzlFFfLeSLZNbb7FoBlC/+MTwUCH09Gdteu+8gHVJSVVGTxsKlmnqOLiEBPKAmv6TtcDO0Gi+/NcrehRQHa8c/ZAn2h8JDw6/sfsjEqGlbPe+sF9cx08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyiPiZpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyiPiZpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09D9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742383193;
	bh=0KecYGUeRmEULhwn6mTzwA2hIrh8M6WF756jb/a8FgM=;
	h=To:Subject:From:Date:From;
	b=XyiPiZpwoYv+Q7ZiISnvLvpFDFXiJk7PSzq34q/q4j32ocGPNkX+lkLwS1x1CLno/
	 iCpIwOAFEBiAFD5fR1BLf5JrpCoUN0JXmET3MODtNgWUGx54vy3SEkXxtNpF36ufm4
	 tiJCVmtW32E8ZJJQE0ZiuRCuNvUHtihiznqDjAEqglkMA7rXnfx9GzRcYQarxNW0pY
	 +eomyWoW9Xkrajm3Yeop6rNg5je9ZXl2+jATyjt9kUeIZCNW/att2/EU/7GyPWDOU/
	 Y48NGPKnciHvi09irzgAPxGJXD1+6N/vfxbQ3zO0ldCTr+Q0fhaB8OPXr5eaoqJIMQ
	 CzC5Q1HpNF/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFFEC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238319362.5816.9889941777992355437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717bac2c54388979102d9d542ca9c178f2884c45f8f6304fbc715d10601b1c33
Date: Wed, 19 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742383193
