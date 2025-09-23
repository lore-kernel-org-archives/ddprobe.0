Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DBF1D90C8
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758649194; cv=none; b=h7OD1GqYukyHfkTss3qnKKtektuIahKHt/MFT7woJuYqUHxRMGarRIq43fm2IF8vmcuCgJ/bKpSGSiNOHk2VVp7flQsvktsxQPU3UhAN+F1FImfOq5a/zg2fk9sDTEVbyyROPQgNNb4bCOPmrZ4WbuPDruGZ5MdfVRWIqdVunVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758649194; c=relaxed/simple;
	bh=urO+A/u+v7rlQnGKWg/RzSvjuwQHlx+zS+3sXKt16xk=;
	h=To:Subject:From:Message-Id:Date; b=fSWjsqN+MwP4X8svtAAUQwvUE8PIwH4iHk8RiZ/zaVAsUa9v644e1RRdi0LgYcH/JtFZOfzuy8l8bfOP0TFJcqLQRAmL9vuHAlzGEMn6xxPfAVFWVWcExA1Ayc9xvuqjOMFoNG4Dg8jcZcDxUCnCU2PDqjZqMruNyVXIoenjR4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1stjhAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1stjhAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6537C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758649193;
	bh=urO+A/u+v7rlQnGKWg/RzSvjuwQHlx+zS+3sXKt16xk=;
	h=To:Subject:From:Date:From;
	b=H1stjhAEkCZOhg79IVP82eOGYs2rjJ/jwlh6Ii/3Cp89xPpPLU5sT+CVxT2rTh+GH
	 YGZKaGGadEXuS26SzkzOXPZ4HC/Sdkkoei3udVQq12hRkZYd9mf50H4mRUSqMHoc7M
	 0Hgmn9i8ZQTh305eum9A16CgbJN/lpxose+ToNHpjVWKoUSWDtGeU6m8OQL61d3CAy
	 T33ANEZ8pEO1uQOnbChBpHqanrWjut2DrK0+5CY6ueIihsAwhCCbYFuyUFHAK0LtWa
	 qO30omwTxmJeqhSkHweiPuuUp7LxwUuVJYS14ysDZxdSDJ2mkL0/gjpPMZIVtIS913
	 ufupVcJOzGxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E22CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864919358.27400.2758284740451581894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a160b2c393eb4473add0ff55606d8c0b09861e6394f2422ed6c900d0237247e8
Date: Tue, 23 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758649193
