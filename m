Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBBD1D90AD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644194; cv=none; b=a10LdyvUIvOEqBDj1cVbZRttzY8aMeUqaGClzpuF/SvnX8t+jvAUno26nbk/59WgCgWHWb9CE4nFAq6+W8OqOjpctN1zyXvZaeuCj+t7ljWTPEKYigPoWBRcV4MA5OpmuEFcU8KM0YXF6Z33nNXXYv0q8i/9r44aAeyobESZRAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644194; c=relaxed/simple;
	bh=+x3swxR5uDDhCEY7Xt5Hwh7BOPO/XeErJJd7FL1GdMw=;
	h=To:Subject:From:Message-Id:Date; b=ZkNDPWBU+qLlbRxjdHe2XRawC5aRLpbevBuyZTmzA32o8S9g89Vhtrx1Q6Jl7TEA7dwxK1QMnYAAZ1VeNGEWwe+mPGdrZJy6EXDOlpXeD/HhojvjfWVYaNgLY2LiSoEg6ghY4j2m85fWdk27k+EFuKBsi8Up3F8eIugbHLk+ihI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0+iCAvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0+iCAvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D6BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757644193;
	bh=+x3swxR5uDDhCEY7Xt5Hwh7BOPO/XeErJJd7FL1GdMw=;
	h=To:Subject:From:Date:From;
	b=V0+iCAvtbeSRODQ2dOoR0Q2TMx/IpxDkw+Ha21mD/P6mcrmy7YexGkMJGyPLaFVUY
	 2Pf/mEZhE+Xd8a5FpGutQfp3Y55CaqE2tIEYdho0voBslvFs1aOMrgkMHMQSyqkGWm
	 SB9ZAtlqMi6BegIANx6T1wvhCuu4KdJ2yXVBgwfGrbw5ThiUZ1xKhBrvzAsyjf2sDp
	 gm2a5siguCBwLqTLEgQtu/rlsknQb2WJ7VKAkrZ1ZRdSUL81C8LeQmhS5AhqIktLlj
	 FVFQT7W+PPc3Eagr4gG4BpQqDYD2jPs7Q5okGAAiNL6kt4pzcZF2o31hh7dQn+kRrI
	 BMPV0L+bgwLmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C6CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764419358.21339.10690980344233741762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088079d88e3d5dd7554e9075a23b4272898b7c4d069b2608ff43ca14d8cc5bc4
Date: Fri, 12 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757644193
