Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056EB3F7861
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774527894; cv=none; b=P5KnGhWD9WnVLj2R8+mSnGCRrAruZcmUP/DB7VM6giKT92r78CZyvAWKkgDw//Yih0cNrphQRA92xW7vO0VpvQDED5w3hpHpnE2BcELKrSpBGwN+fV3qsBgPkOOj5BrBJoWUne57D8V0ffOcCR9BbbiuKiy5SVGt1a7dRe0FRs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774527894; c=relaxed/simple;
	bh=AAU888wm4ovHcxZnt/PYK1rDadqr41mSOqAqeiHm3CM=;
	h=To:Subject:From:Message-Id:Date; b=lNnemWZiLK0UN99TZ8ctv+QxFmLEkqgpPiExEnZVzqP/bSAu6TE/ibhfQnikLUM4fm8QvT80AG7eSRI6jyGvu1+4u1SiCmqbNNYd7YoVimkufiaYDovXiWW5YxOKlBJAQbLVR7f8XHXnbT1+jZUDRXlf0BwGLT3zcFTpx5/8d5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRyD55a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRyD55a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B9C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774527893;
	bh=AAU888wm4ovHcxZnt/PYK1rDadqr41mSOqAqeiHm3CM=;
	h=To:Subject:From:Date:From;
	b=MRyD55a4izBcCw+Qc4AvEQzRyMIiD9riiDd0PJ4tc1oD8ZZ9Z1Vg7QbLS0UGgSbmH
	 MterwWWCea4JiIFCbjjo5r0oB6KaIEc+9KZkDB5vkCftRM6s7iwcPXG9/05MAtiGl4
	 1kaGNt2FP7KQbHBVjC449kC4lFSNBUgQDj179edT5B/1GTywYt0HYUeO9HUqdZjP2F
	 2f3I84mzWsZQRsdnoXPF1I9v9OyEtNPTW8v2r7hn1kPwH8bFUs/y+P34c6G4Wsy6R6
	 nfz9JYsAgJ1vF9TJ+sYqp3WyGgiBOxrtPymPKYg8jwXlFO5TpLTA2T9pnnyILHff2X
	 iY5oyV3EnNY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238F10A3D88
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452789359.2316.360616353235391328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adac884f0986e0977a996eac41075c31c6a5878fe35073f2cddbe6be26bef6e7
Date: Thu, 26 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774527893
