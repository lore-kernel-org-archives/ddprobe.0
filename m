Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17192F3C00
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758803393; cv=none; b=SDnlNJnQrRjqQcDQntfIE77+D3i6cEnQnZyuMUcu47H+gWcxy9ASsPPWkkYcTBYJ7yk8p+/4noxwTKsNmJ0a1W22lVJiM/3kkp8egDX8jBcAc/xbOGeTgN9GJdlN6iZS/mykX5Yrea0m7ChKVtUQlOSFPJtdBEiHkWzaPxSZQ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758803393; c=relaxed/simple;
	bh=bNY6XMayHlp2a4Ivh3EZ0XueO7n7Q8L5qeGphUiklCM=;
	h=To:Subject:From:Message-Id:Date; b=HS+/8GtDETy1PUsqpKADcwmkSyY8/yzQcoYm1kFyRVRwk0ILrFbYzPFcfrphd1wF5uB7TX/YdAYb3UpiA25hj7NKYjpnZVy8qqdSFn/Z6LVhtA93uFj2CrAOns/RkXcBKjkTXv/OkwDliC4eFE4kiAw21MMgkGZdIhozy2AeWAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlZENSr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlZENSr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C40C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758803393;
	bh=bNY6XMayHlp2a4Ivh3EZ0XueO7n7Q8L5qeGphUiklCM=;
	h=To:Subject:From:Date:From;
	b=KlZENSr3a5bk8Qv1UY2UluHMkjupthsE2rYEnkjo1PB1B5y5bA6JtHvVeqeq5D9Mu
	 ZO2HtOFya6KGVzksbJ/adrCOuetz4NI8lyF+cTHyNNVtoa1Q91ejLLT0VywrRsKT3o
	 Aj9NbityBiFNPId8IOod5yQnm42SJTiwaKoWkRc9VOk8/BjOz3Q7uGMu07Wlrh5G0y
	 QGFfOYNBf7W7GlRLbZr4q789N/Xke/RNub4frln8XeCDr8BFjHJjbuqIcnYk9YrfAE
	 y4w4uTtdobUrPkgIH+KVUFhKi3F4xzliixITC+RL245P48cI70Mjbg/xvDn+OP4lj1
	 O+APaL6UuKjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2BCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880339358.10725.14023128018911893922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efddf60607c6a5c2b4de9de97886fef5510cc5ae98e55f8bd8841109507f4b40
Date: Thu, 25 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758803393
