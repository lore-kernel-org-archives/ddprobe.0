Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6139E28EA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714806143; cv=none; b=TFl6KirxdhPK0fMGJyqBLujJxwumLG3vSmThdCb7+/5e01UMrWHeOj0viIQ6H5Gw4ayw6n4CnPf5U/IKgQ7lqJ+F/uWtAGHqMJKz6R4k2tb6O+qvTU96e5hfUS7uXUDxdRJwWysXDLERfbD/+K3/4E4gXkgtksuEnbe3QKPu0+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714806143; c=relaxed/simple;
	bh=pLC8gVqHK7xfIT1LAn61qfFU5Jmhcp5lD+9VuJ4lL6c=;
	h=To:Subject:From:Message-Id:Date; b=bl2VO5tQ7jqaUPPo2pelH915NCwK87FAKYBtW/0j4HpyjVVrCK909hgDjvCXnHlTDtVrM2K1cLvX0aO85SFIcKR6J8nJgj93vlS6d6YKZD3isFAZPoNhiFoGjZ0FjL3r+iH4TSCb2LIur14EvDZ4UKhFBBRBbUnBFsXry59c0xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm13f2u3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm13f2u3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BCDC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714806142;
	bh=pLC8gVqHK7xfIT1LAn61qfFU5Jmhcp5lD+9VuJ4lL6c=;
	h=To:Subject:From:Date:From;
	b=rm13f2u3BAcw2UJJBEqRd/lhTkgVeIwM6uP66zp+1tHDsKfbJ9dcYoLnHDngQiuUF
	 fZIMM/K2L20twONu4ZRozsr8YkvKZY42k2d8ESLzA78I10lH2r8jB9uoL8kwP/mXog
	 G7ScAm6Bl3YivNgTcOyXJ70Dy1R5NzWXXPzsajBZPu2dqpXn8MtBe/KJvRKqVnkmOU
	 cCccCu6jhKXTaNz6jFgjsjWhz5+1jLRI4TyS4e88wlnbVWGdekk8XBYbjzkRYSSXDE
	 SwAwVWXLJj+Ug2/+DZPAuZmblHYQaS1Gf9HoiPpS0Y5Ch6qEokbz1rhxaRiHVlOWxW
	 fVTvP46WvMm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13E3C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480614277.3742.7279960925290214126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162c7f3f2cdd78c199a317b19775805809f7feb31f872de870bde72934e8affd
Date: Sat, 04 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714806142
