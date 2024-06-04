Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CBB12D215
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717535183; cv=none; b=cjBxyuDFhGJQ7g3WCziVjBhhljPxcjmyxjjl8u8g7qFFwLkAkOqHeNNR4dFYPyaZI1Z4zUQXqu98/OYdgfveHmj+a182DPS1bMEM6m7XOOgnSVv9vMW+wgWg/kYg8QSNXeS1YrQpaVQz1/rklb0h+XZNMxckit17Sog+ftktJyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717535183; c=relaxed/simple;
	bh=W4+b+bT/Zp4RKnYhe2/v+yJEXqNNGUBxnE/DGqmZHl0=;
	h=To:Subject:From:Message-Id:Date; b=CyZIntiC+fLjxj22lLIt4JowGRMH2itNZOTPJxPH/c1C3dNoLH73TgjiKvWfmN9VGC5jN29yXifcSaFnQ+MFoj5jwUf30X2xvKnv1JZDNiiwLTJ9+x0XrULVIW8VBdrbq2dXxiSywNWBryOHLggIvIliwfIXzld6Z1U1TOyXP9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaWej4Wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaWej4Wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82A3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717535182;
	bh=W4+b+bT/Zp4RKnYhe2/v+yJEXqNNGUBxnE/DGqmZHl0=;
	h=To:Subject:From:Date:From;
	b=eaWej4WgdpGjiLGBd1+37rznO7Snay87Fx2YdprLuP7q4/fCf3plvj4thnxahYMFG
	 eLcKg9YlvTVJN4S44EH+ev70H2F12doSZgNJxr2maKPmyK23/FBC5wWZ5+3/EYAYMA
	 PHSbq3BX+EhtqIZVQVsVghy/ZuUkxW9ItAXLEK8Df/xvx406czVTCnKkxwAyPdLNLr
	 Vf0V2u2Oh5FlbSp77su8HYB4DqX38lkbBAYC8iyKc8gRjXFroI/fVuP6IWPx4guW00
	 VoUcpaH0sN5iizaTwl1qZtbpVx1R4CSyy6Bm9KqbH3OQx9FLX/AT8Hz29IJB+Gmni3
	 GqfTGS3Uq175w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32E6C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753518278.5238.14848862518288474664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3bc2ba7ac8c75a079b2ab5aa533c2c9f526a5d6c267eb4081cad83800ece4d0
Date: Tue, 04 Jun 2024 21:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717535182
