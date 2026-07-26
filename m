Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF051F1513
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785043834; cv=none; b=qSTHjrmvwfCNAH/CpaaaNn0J7g3+NyLHez39CF0k5HmRiAQR4xEtfL2TYUjN4sGUqyahRlQl9WGwDcqCBwPrEszy6HHJJcrdfHqY3YgBnuy71rbovAnr/K+zMtzoHZLcnwqi8f1AsfHzq6Kkg6ifFqFUAG9/db1EGxk3HSRO7Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785043834; c=relaxed/simple;
	bh=tSl4ZVXQL+nynobxjpz7XSw3PeAtjO1X5UY/lUH98Bo=;
	h=To:Subject:From:Message-Id:Date; b=H+MW7sqIooMUgXupUGkl8kWQWOW5/c0Yw1dH/Nd/w8SO01dcq5sA9x55/DUsN8cN0i5h4x60QVIfEv6T7+LwJFrlWKHnDKIq8VO1ZljGlrZvJSknEN7Sr7nFXdoPuY0IUNad9rcwM3gEOPtUGu7Wh6m1qF2YfRmXfpjTY2GY/AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3lPq/9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3lPq/9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A42C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785043833;
	bh=tSl4ZVXQL+nynobxjpz7XSw3PeAtjO1X5UY/lUH98Bo=;
	h=To:Subject:From:Date:From;
	b=U3lPq/9JHUBCp8BRZf3G1Aa+9MN36lr2b0P5V5K+JAYWhzZp4FatOFOv80lcE90YU
	 Pl+c39YfaRomGTZxVIa0gtLf4T8jjT3yuEIMrVowNqB6DPFZiR8YoVsvKpSHjNvEfn
	 rYCeHd0AGNa3xXw5J5tIfw24qnCw8kUQzpQlan2pX8TLbAWQZGnx4SD9Kg5eUDpZiL
	 //q/sVa1Ww/QnKiwZb0VfSxI7vfRZ2xIhbARct7OHwIbjQugFwlkdBngWv6YRyCss3
	 /1vnXMlB6V9NmAi0RngxpFMPEMm2Kfs7cSqLDws7KjKSG0ShXHG+pKGsqptLxVNLuf
	 nONKFcW73o1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB42FC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504383368.10108.6082261923211663174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d076f0e6d11ba1ece71893ffbe6b0becba627e6e305053f4a2c6f7f86a4ecee
Date: Sun, 26 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785043833
