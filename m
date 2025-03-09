Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC26328B6
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741494534; cv=none; b=jwPHm0E1WvNbJbYYuSCAj0Giz5PrNvScyOsEF26Qj3QxrnNnzK3lziwIYJp2zcxqCF/faQa9pDU3GGTS3OoR+RKWPIz3E5UY8w1vYgtK81KvphouaVdHrUfnj2EeHAC76d0oiH66D4R+6NBUzsLWdQkBEaaVlLd8e0220Y3RSp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741494534; c=relaxed/simple;
	bh=ndLlkRJzw0l1t77gqI0n/ZihUyCEyfDikljw1vqiOGg=;
	h=To:Subject:From:Message-Id:Date; b=phOS8/GfXoldG6hoM1ebTJO55q0Fyio/dGmVSl1GnZ/hsuGVG1kEwEWxK33yYyO9Zzz8rTEB/yP08m9hW575cPCjHMxowN47EfAKAv4hTMatDHW6C+meNvt/bpqrcYpPG7vOhWmjPne3haxYdE+3nRSy2N3BjZ+oAV45mk/1rpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/BSKRzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/BSKRzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC32C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741494533;
	bh=ndLlkRJzw0l1t77gqI0n/ZihUyCEyfDikljw1vqiOGg=;
	h=To:Subject:From:Date:From;
	b=m/BSKRzjBgOv0uCX1gnqQg9t0PoS8EusDRfBvOimvpRruOxMdLl/95PwRtcyH2m3X
	 VgnV16jmIt6YmbN460ZifS6jwVcjx6sOIAkq+l1lZ5O1cvj1ep4+MJhM9OKWNPdnHW
	 x5uPDSYc/Ic1Rr1uhjN93ZCgXxpW51FI3rvQ3u3o2zcrcd6AlqLdCBAovEw91fn7+4
	 OJvxX1NiiM2igErOqx2RZj9sFmh9r5yjF9KsP2epf0IlbAYFuRnz8+431oC/LzTj0v
	 NjlTea9kCiF15a65dPm5ecqp7FBiEY2PPD/cVZgDxsC9m8JWC0LnhMrHYHEaHbdUbQ
	 tMa8e9qNGEitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959ECC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149453360.3172.14157137510008715666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d83186b9823a0fe9cc662e50ed4b65896ce4fdeb0b4a4604a61207a2f085b89
Date: Sun, 09 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741494533
