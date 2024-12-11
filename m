Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2580E1A83E3
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733940954; cv=none; b=NKoIdtiPTkuZI1G51ZHQAO2ik88BrgLFY1pTkLhYQxczis8mVibLsC++3Jkq+TOAcoU/mVW/xAHYxRFJR1gj7c8gGubgdf4aUnbsoGtaMRtwYD5eQZQWjXCQj7lgRJgoVok47a87lmic+Q4Zj5MqiegbIRz2PzCk0QIhcszjrDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733940954; c=relaxed/simple;
	bh=IeGs1jzZZRgkXGr9fiYfCbY1DU8MoO48XulU1Y5u574=;
	h=To:Subject:From:Message-Id:Date; b=o5ItzUfIlPuxZ7dNJHzqO9l5gAQ5hfTg7+T7jbiC2vcLZc+PUG82uAJIczw0fayRNB8m1otY7syrew+wnQ95bmy3WajOiOmytGCDRxXEFragXtT8wWqF/c35REao3UlqXhUSf+/cDWi6SaOapK8NgdDm1ZvZI1uAwzqmbdBAPd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XM5LM039; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XM5LM039"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7F5C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733940953;
	bh=IeGs1jzZZRgkXGr9fiYfCbY1DU8MoO48XulU1Y5u574=;
	h=To:Subject:From:Date:From;
	b=XM5LM039mnxbTsQQS2mfMzFkd1uXeTGiGBJXyRq/efqGfDR/jgv6l+0Ug51xlWMVS
	 H3my4ldB6sYxJ+Ibf+DPJ7a/hBsDKmcjgsJExYHtn8RnJUjYpBIAvHDqB5Fx+8TW5C
	 NmaCSWCrF95Qgu/1syyRUEUtBA/swcmjLxLwlPKYFbPkfTHcZzEWOg+fh233fxzMD0
	 shYRRec4uoUX05PQg4TebsmpAqg/m7J+gutIo6lrmbX4y9Apd2ak5OCdb3db8E8wpQ
	 PKUcL1ul9+1gPQ6w3mcCXrt4ldQ9hpQ3KONGdOnhYOoMmMIoU1qq1ExC3s4rzYEaVI
	 JJ6qlvFbT57ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA126E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394095368.19552.2885680317911060651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d30624704805befa24abb9d814d11acab8282b617de5a4df7cb94c244ec4514
Date: Wed, 11 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733940953
