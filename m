Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201AF3148C9
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756393194; cv=none; b=nD+IO9jvQknBgYW483qkq0Y6TWj/yqeAbUgUlY24uBp6ub30mAeTFsjmdsGtgUJJrTlF7FcAr3mEH6xvtdQQrhx8fF1IdRwlRONrCtFRx+5GRDq1wfV5Cewpegx/slHc9OhviBk+95/2ODDw/kBQmnloX1+ktu4XsQfPs/oDoM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756393194; c=relaxed/simple;
	bh=OENqEHcQZ3Dw5xlQ2PdVsTb6w6a4kPg+stKLC7fYku4=;
	h=To:Subject:From:Message-Id:Date; b=BEYpZaBoTWlXO4FNtr7fzwnn+2jqjHYzxllnEB8A+zkCcZkLLZHmiAi4FJ0ZWg6mZtFCAI8Wf8owgAwQGxiKTrziYRcs0PyY+aRl5X1mYOSWe2ib4xqhkQHvGI2H+OMjg4qrF4sVFTMEqB0g59YELZRy5WwhCM+048Tq8pyv6Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXJyMGGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXJyMGGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21DEC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756393193;
	bh=OENqEHcQZ3Dw5xlQ2PdVsTb6w6a4kPg+stKLC7fYku4=;
	h=To:Subject:From:Date:From;
	b=DXJyMGGaZvj4wsob32B0cgxwBJn0M4TALRnZOacemjqwqOA7YCXrHPwFohyKtbl6P
	 Zu+C9LZVymJdmiSv1YymxmQ2ezZxsH7hw6biSHpeuLH/QsHN6ezcXNr+f/cM4EN8UV
	 3tK9nVq506P1WCac+opzUB1IcvRgXzu65S2Brm+CPXPbUv4TMNtLlAb2NSH3qHLc+2
	 S4BFIsXZQbm7YhMWzOtwhD5FRBTfysHcAcKopYEvmuTMs4dpBINphtYpSIoCR1P3y0
	 g0z20YI9v6DODYd4c7NP2b42DAILiY4/6D3gSptjxlZ6mNoaZsETTHO6IKD5YCSYS4
	 1iwpSex92bsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92377C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639319357.24869.4951808049322847620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a27f80086c2f1d82d66da81763535becc20af4dc0970354612634840d19f39e
Date: Thu, 28 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756393193
