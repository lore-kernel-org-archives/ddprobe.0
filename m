Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C4F328B7D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760725794; cv=none; b=dizPQ0gXoF55IeqAHJ1HvPgl57iEMYhBma6y62SDp+Tu/JzJA3WqZ5NkF4ZydwOLtPiFQi8vtAD6y7jnM99j0sfLDpSt77G/3ZDzCtLTN4upX6c8/q4Ukf+eh/RGsRUj4Ga0Pt/0WB9BBaiMq3TOJXr4w+9UqzLXzZiJuYs4z14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760725794; c=relaxed/simple;
	bh=66B8dSgt2N6NEpW90+N4AlHsWgsd5xqe9VaL0sDXTUY=;
	h=To:Subject:From:Message-Id:Date; b=UxCDyqItXtAMPEd36kdYzF54zE6XPyoFxHwVqauKtvXGFUfQRO54IQGtCzRpLGJiyFi951wh/wc1RZ+TPDS9lOsvvHsJ442zwX0ijr7mpP1g6weXsp636Ekzh1q/8ZengVrx8O7QcWn0jl/55pwYhs3YseT14ABogS0j167X7J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjuMulBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjuMulBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760725793;
	bh=66B8dSgt2N6NEpW90+N4AlHsWgsd5xqe9VaL0sDXTUY=;
	h=To:Subject:From:Date:From;
	b=VjuMulBBYSqt6Fu47KSKpTQO/ppC7lREbffwRHqjrAopuQv6iRYn3/GdN/HgaJp0o
	 2tGhngQ3dFJMyrIJ7CfpILIq6YpqKrFvM6bAR8PdctpNmw9f8qHyOcWMYuNOsC8icu
	 g/tXOZ5H6GVbDYOt9gjz8AAGUGTcsWCM4jPEnSusZel2HRPBvVaB4SxHHoyS85o0bn
	 BNCoCBPC6a1ZK2ZuWxgN4weiJcFI0RVi/Ovc60Jaq2CbRlWMwFJLmUGBV50aE1csI1
	 C8p1oUTm503VxN+bF5YM+W2gSt1tp7d5GLF3v6ZJsFdGVR8KHYFggIXUa72cUniV58
	 dgrcZNY2O79yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9294FCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072579359.7730.17563616377277699326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7c6504e21ad3ab6a796bfcbcd2a0fcb2c53edbd749b62b3c8c733884bf9555
Date: Fri, 17 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760725793
