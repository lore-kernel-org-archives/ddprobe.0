Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEB1C861A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756925394; cv=none; b=EawTSc5INl5pOlwJuw+mEOqnAAAmINkWHtlE1QknfEvAUqFn7IRS7XVgMqctbUaUbGvmHFbPrT4zXIkukOTl6IC1XjM+gs96D7fsPmCsMW2mdP1RBHefsfBVE57IHjkJ8eT7WD3c/2Nd6IZn2HehJLP4V2AgA5U+UelZTZ5R7G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756925394; c=relaxed/simple;
	bh=WhyEWy7vCawBr/MwIW2kRcDFM33mKJ1HUgq5h0IGCz0=;
	h=To:Subject:From:Message-Id:Date; b=Rnnq01G8lSs6Yyz75gfJMmpgYAFYGaRaW19itM1Sj1Q6HdOJcW7wYMvaca/zuyQCDHBPqEOT3vCQHUL7LbgRErGEGJYGsdPEYtJ7vNDUvUDddiM0btkmBJGWXccXm67GRdQx+hPdbWa5PCZ0CMJO9LOJ5T92RW3xPWiq8hN+mcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBGhPvKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBGhPvKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756925393;
	bh=WhyEWy7vCawBr/MwIW2kRcDFM33mKJ1HUgq5h0IGCz0=;
	h=To:Subject:From:Date:From;
	b=SBGhPvKtdL1FgwP1J+KCKf3/F5UghTabgdmdZmnQU1q0NUAovUrKFc1x/HCM2gpo4
	 iz579yb0185tuhOoSe6LGZ+f3scCzN91u/jH4gZk0dE5E2nMlFxE6HBLTUYeljECz+
	 BNmWqiX2HUZzO8KSqWlwiS8TAQFuPaafHTkoq2+XgQr0JxDH0Xq6apclf19NLzHXBG
	 7vkjF04F63OIdEz8K+h1OFLvfJ6gednPoPEUoI/TdtvOns2m6P0dE5PRQY/0Tw8DGh
	 E228SGIQCKiMd7BNb8mAEfe0WRd/JUp87ESiTyFMkmMUSHnrklqoczkIqQRkzuuu/+
	 7epSJvwbMYdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9392DCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692539359.2705.8381316591542372337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330f94cdf89cca1ea6a73677e1fb2427a8664fcf393759d9f10de7e402788d75
Date: Wed, 03 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756925393
