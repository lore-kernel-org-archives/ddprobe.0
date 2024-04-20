Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7257B3201
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713582023; cv=none; b=LDWCr+yRizoMyT5TXzHoPzt/tbCOwJfRdY0Kn0aMlV0QKICcW1f0zCVWiIuzTuqmD4WN7iz+tVMQp9/fBssvm5gHRNsYM7AQdIEloMbjaa1cGDzxAYD25ttmw+eyhEwyxVdUd2Lqh9gVW5b3FOHrI7rL0e0pzNayFo99HIasEbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713582023; c=relaxed/simple;
	bh=89VffNQfNM9KNAR51lojp2bSDeNrttiN3tCjEM0XkPc=;
	h=To:Subject:From:Message-Id:Date; b=pQLWkc9DWBvfNXeJlKGYda9CNy2dI12/5tpAUV0TQzflpvmWE0bjOyQhU5F0FRa/GljE5wYCO0kyKAdiRUqfxQzjAL2/v2qdu8NiEqoO1BBK9o+isjOWprbcoRKQG5ieX9yfHBIbhqGxWaah/Bx5t2kHtRT8SctuDh48s6sqLl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzC1yX8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzC1yX8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB713C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713582022;
	bh=89VffNQfNM9KNAR51lojp2bSDeNrttiN3tCjEM0XkPc=;
	h=To:Subject:From:Date:From;
	b=fzC1yX8mFzS/L34vioi0haTZVH4Csu3MFCb33sy22Hx7QPuGdZ5UHglnb8f+1avSN
	 0/yNXuCAW44tNWgbaK8d8GblWbG5xsrzQZJyNvUIqCV3ftSlwK1pKcycbNmoBxqC4P
	 xpIrsGGQT4u5/VFehAIJYHSb7TPFFoRRwmVkKU7cPNtptaDSi6MawF2zjqAIaC2rgc
	 LfvlPfIw6J97O2wkagCDVss+58fzXh9J9n0XgVq2k2CKm9yQMck+GbZNgUD/NuBGAN
	 H8KtVg9pZOi62n9mooz1idhp0R/qKznWZXaBOvcvQCtM53vsUkTPcQBQ94Jzqv2mF2
	 bReGWpaba0Mzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4238C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358202277.31488.15847121875397506258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c93a733ee136927152b9930920e9c4bbe72a707263bda4efe3a999dccfdeac5
Date: Sat, 20 Apr 2024 03:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713582022
