Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA91FDA9E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757911194; cv=none; b=Oam3dK6gKmBzcbbVbPbMa5s3z/jmyVOKxjyA50aElJFPliGQ4bBjGEyl48BZ4G2lK/LTyO4lV+YoepIUII/WD0IAP081a3whztSPagD7gwvlHibo/AmKycLXFnTwJQy79eJPP/s/FcI4W0JTwZZg/BAqkQDoqD279JeY0h7nlHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757911194; c=relaxed/simple;
	bh=GMjlNy+Wk8pjf7A7Xhk9zH7OTWrwdkdVciZY49hWaE4=;
	h=To:Subject:From:Message-Id:Date; b=upwFu7SbRdL+fPufGHrtUtfnu7LVBm067Np8zTkXES5GFKYk3xw0/fBA8YCcZnAjISgqELPM4fl8AKi3z+XUsPTuwm7aps/Gupv4Cztmjg4i6dZ0iC6RWPAcl2jc02eKtXpl99T5v5Cl/PeD5FwlWpIs2N/3dVpoNvmTKBYMG6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iktdt+xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iktdt+xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757911193;
	bh=GMjlNy+Wk8pjf7A7Xhk9zH7OTWrwdkdVciZY49hWaE4=;
	h=To:Subject:From:Date:From;
	b=Iktdt+xbBxaKfcSS+8yUk+zWxiaBiyAhDY5kP9/HqBtCkjagtIxUB3wiukj6hUEVV
	 hKIrfzkvQ6urSDmmIW3fWFB+FCAw2M398xbvqbcoEUojGLNm+Q6gy+JmDAKBeZbDGp
	 5RHCsDViErBCwyhLTMCOOlJBV58Me579xzjvp1x375wBNWmn08DmElL0k1vql09eAA
	 lf42+Im2Pgvddx0u1OW/HNK+jzjjZgTDhW2LoWCrV2A58uVOUgILy6ZOBtcejOqiET
	 LL4WvAgcnCTVt0FRoaF+yoehde0aTa92whugfSRiuQFQntZg72A7ObXV9q3CPnbbCb
	 rkwyJc9wkl2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459FCA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791119357.9838.1899188209488833586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63ba6d69df6e4aadc72c40dfa54dec09a1cb582793e4faa8d88fd6810c7972e
Date: Mon, 15 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757911193
