Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0610429A2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768126434; cv=none; b=k/Hi+PWie8d8uMN/Y7Vzt0ZUv7dXtqHYdQuY9T0suLN/HuR/12f8sksYO4LRNCbmWRFaKY5oY/djzk15qauxVX19ADLPLT+9zIh81RQd7EaK9K974moHeiHMdC4lGUoe/yyU8bPWaRq3o2CBrO898sdwrRiT8z6xQTaKy7iKGFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768126434; c=relaxed/simple;
	bh=wRXyPdXSjT7+2aKyRdRFqIKW9mPxyuPmiQ4L4ysWc20=;
	h=To:Subject:From:Message-Id:Date; b=pj8MhKrmWhm89g9n6ymU53MisQTfYQbOELVNQNlhHucOCaAvmr5Sx1/qygbvTETjhtowD3RHj46TPYEPR3fkt2uWTdlsR7h7+est9jB/b1nqQ+dZKijow7taHlpTgDzLxfrXedeO/6W91KmVwncf8YpcIO7Le2opH49lk4nCbCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwa3/giP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwa3/giP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1548C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768126433;
	bh=wRXyPdXSjT7+2aKyRdRFqIKW9mPxyuPmiQ4L4ysWc20=;
	h=To:Subject:From:Date:From;
	b=Pwa3/giPyztdZ0T+PgAIy1KlA8zzD8ODAaSwPP+FQi9y9a3RlwhHRJUnzPTVvt2VH
	 AKt6ptrkb+63oxb0WOpQBOlo8wnPVZRaydJNm1juyfVlTYK1ri7G8ifvVMLW7MgZkw
	 aUbcMsd47+1XYzMV+lX499SYnv9rXXOV/vRYlfG8T8Sv4gDB/Q4BsmhPkTYRato2lj
	 tIiuThxJ2TB97hxqLAR7IDx+BHDOSBRhWrzQb9hMdlGs3T6zxD1+JGyHD4OkmB0zV0
	 iHdigrDSzxfIWXExqnzPxk6grQMOKXTmudNuKBc/T8fRT97HDjdHFiEN9dZnu6myBo
	 w5s5ptzAfhLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90876D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812643358.32427.3027321868418564117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba65a37a082b33fbfeae77f60aec795b69ea07393a88f76b0c851d12110e3df8
Date: Sun, 11 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768126433
