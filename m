Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC2F45039
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783292314; cv=none; b=eAuEcIZJ/vdD03AWpwMRyy8Yg3mRsAKgYkWpH26BGOFI+vgKqrZgcCNPS/MXXyCbRtIdo9+ZjYHl2anDU8QMGynNwtwIpM8UkYqHau9ULTqQR0WwrfvDWXGC4shhU7fmgU+81Fwcqw+jbi4aCwnMrVwMas0+E/IbX3SYM857rxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783292314; c=relaxed/simple;
	bh=dtE7B2USZ/zE71k70vUzSYHcpWjpDW9K3QY4rnUnrb8=;
	h=To:Subject:From:Message-Id:Date; b=ENq2yGdu2wCk20hds++2rjPgwn2VP+ojRF265GUvV/UZQv1sKHTIeKJXMoS07SVy5gl1/6Ikp7Q1w0EdiCYMGvyLwHj8Or6bl4vLaW1OhEElCOOlsqWP0/rE0ei9wwGwY1crfOkorTpkHfWqlKaoo1diehMNquuLIsDXIZjRrlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFFIOxff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFFIOxff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE059C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783292313;
	bh=dtE7B2USZ/zE71k70vUzSYHcpWjpDW9K3QY4rnUnrb8=;
	h=To:Subject:From:Date:From;
	b=sFFIOxffmND9KCSBLsT8GLWaN8kl0IUPMcLXj3+EvXgArUd8nXKdI6rNBlvepffnQ
	 88rfMPYX7vU5B0xK2fwBoaA0JUtIdEN/4H9r3jWMfQf8CKrfkyTpubmR15dCFf7xfL
	 SM9Unfja2A9NKSgn2i2t+JiTYClsIVSWKHJgnyKjjWPeV5pie0FltxU1aPHXA0wyoo
	 mzJl6e3IN0h6KIRJybvIkPQvmEBy2AtdUxbdg6/a4+aBnIzgOTg6PQdsl1E4d3wspT
	 8CnBrMYyXo9XlI1j1ajirsjMt8OIWEzXZCG//gsKwkkeSDJ9SdKG3CRwcRCYp0UyKT
	 Swkbu3BpMbOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329231370.17972.9502689556063836863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bf320e2a2cc916409672728ab4996b5410be21b3fb6d5f4d4a605756d91d68
Date: Sun, 05 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783292313
