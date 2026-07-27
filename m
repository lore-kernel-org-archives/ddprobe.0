Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623751A0BE0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785121834; cv=none; b=U/ZazP9n0YFZmKOhj6tBGT5XXR02CBQXA5e3mfeTqujzItjZJEcw8hh115/EExhg0Ml0heG7mCnwrHg24z3byiY/JuqHH2papXLy8++ILPiZdrWO8hXTyvyduFnd6ACaek6fs2DB5KSDNopclA7Te4cPwSZBwLYwK/d1C7MF/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785121834; c=relaxed/simple;
	bh=WVPrdFGpFa+9ZFJMdO/hej5olN1sgEe3RQfuft9Nx/M=;
	h=To:Subject:From:Message-Id:Date; b=lbQeIqGIoRxWT99Vj0hTUAuuT6rZ0diC/fdcASpGdAa7h7AX3f0zme7+pvhtmIUy2IihJ9+BCczlE6Eskwe8njq0Xr9Hv9AgYUYDs8wZi2ZIofThZEQJPaKovrTbWxUO6PT3wkZF92RIKQTcYGwmz4tDrzzRh+xFwQ4uUP5gfTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LExfnVad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LExfnVad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E032DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785121833;
	bh=WVPrdFGpFa+9ZFJMdO/hej5olN1sgEe3RQfuft9Nx/M=;
	h=To:Subject:From:Date:From;
	b=LExfnVadgjoxGSeNGajblkR8tyRnGUQiRSxDTBObqmjKil1fhdRJYNIKj+y0LyXkT
	 +r2Lbr///wwzG3A/UZ6Z97n2lnGpSXNroumJFKq9+zDq6Yd8pSvDqRsEgie+KKF0/V
	 NwAXpBfcfTiZBak1Y/xrNOIYKdNoroYSvYiNTnLOnYBIafjK7raH6Ymn9GqWuJysPH
	 16V+6JBiKx6SXHwogFHFzY1RB6xuYLWIOfgmJB54MgQCGQYWmce3MIx6OYqxgG2Erf
	 4cEdvSkQPOopkHiY1rvsKaXB89Y3/2xQk1PEfM+6xZP/J+gJg3GlnCQlUWGWEqVsnR
	 bfv5mqwgKSd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BC0C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512183372.18214.698321842808752757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682ef824ea2ab813a1a7c8911ae437c0dc48f70b3b20d2282f7e73b9756a460c
Date: Mon, 27 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785121833
