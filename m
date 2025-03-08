Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4AABA49
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741447134; cv=none; b=k0FuXY3r0PhFmUdG3UTWUNvRlnomPC9PzKVmjRoOIVyTMejmdp0vj/BlhjTEvDVPjBtoRZWJNu91e7sRrgkoQALj3f/zPldtbYdPTSAgIVse+aPaVgBt5T+PYPrs22mxrobuSyp80CuDctkIs+nC9n7Swax9Wh6LtcuGBcZLzps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741447134; c=relaxed/simple;
	bh=utRLK/MboD4HwLSSJshu5iWjQ0KTJLIuRUwCq6q4py0=;
	h=To:Subject:From:Message-Id:Date; b=hwx6Pj0QMJ1XEY+AgpNhJw72aV0mEpYB5QJdWl5iVwBxdCPUw24rhD1xND3cnJL04KxNgKl5B6gDw++93x2j0PQNfaFNaNygxm5Tf6GeX9xkmf2wwXaYc8qPHbHHuJVFwydD++dtv+X+ONytCrT/TRfzJ15f0wAwBUSDQFfnD3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsoCb+h7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsoCb+h7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2992C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741447133;
	bh=utRLK/MboD4HwLSSJshu5iWjQ0KTJLIuRUwCq6q4py0=;
	h=To:Subject:From:Date:From;
	b=RsoCb+h7TUbWw9Gh6AGGl1hgGNENmXL8a81pDU62hNXDmDU1hn9vWa0c0t28Vd42S
	 nwkkKr5jPdtB67nOhLsIO6UvhpmnlElN5LvMPNogyB+OnDjCFZLMDnBufzPNEz87jM
	 Oe3tC6eYZCd/YNSVWgnjh0bQrRl+zcXNqnJ/1BmSzPd1lnZ3kT7IL0dIKFGhPxi2aC
	 xmCdATeWrn5Z5K2YCt6Leod0iyLzuyWGGb4MdkleQpWiJteQ869gqHbLelwwypxOE7
	 UGIGYUATfuuOLZRBm8JggoJFCm/V0ZzdHEeeZ7PN5O8hCJkABCR2Pmr0x0xBLLGkWv
	 2niwFbgAhAqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B06C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144713357.25304.4755331604172041682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55280a969b63052d58b241458ffd7d7f35a0dff06fa3aeb1916c59d313d6e2e
Date: Sat, 08 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741447133
