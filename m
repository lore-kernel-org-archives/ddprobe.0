Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6056D13AD30
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717717643; cv=none; b=kZmruiJEakxWJ3ieOTmiQuxoP8xKfTty3My/B5W6EpfHdYDNuCbK/PsVtyD3io3R7wsQWKs77UmrHwG8P7dWoBaNuH1IiIyL//mrXQrlshIfUQ/aBx53jToeCM9FPqkKDKV9PiIjAJWzpkDOTFMMD6LCjzMJd9sYoaw1LaecBIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717717643; c=relaxed/simple;
	bh=MYNk9439R0IMyBc8xz5CbyDKwKDsv4c32NvIC26kJ1E=;
	h=To:Subject:From:Message-Id:Date; b=ctee5Yfk7jgZmpT/UeCwqZkh8fHYBSwZgc4atMYOid4H6yrZkKl4LpaBNmwybO/hbCV+mCrFPWr7pgDvheOtHdjXdsi/KTyx3J0+Ql9kBK8q3begdzkjQVLMXPgoAbk6SJt6nF9trFjrnVIbo3elH/bUYdnL3JTQHfkRQ5ySvYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbapUxup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbapUxup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F19D4C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717717643;
	bh=MYNk9439R0IMyBc8xz5CbyDKwKDsv4c32NvIC26kJ1E=;
	h=To:Subject:From:Date:From;
	b=SbapUxupGyCC3UkplBhkwpFvkQKK0vQNsGmuFWVPyXnJV970CUEo8UHVr8Xpev0dj
	 +jD0ZsgRLq2oYBagEN0z1/yEty/3uJSC6/LiIfaqWjFB9mRUhfx5fjrscHxVJjxQvM
	 G7KoG2uPOeU9ByDqS+XgIKAt6nrVDKn0aLpZTyUVWzCY0KxA0o89UBQJCgap8+6jMf
	 U4WYPIAEFO2N82jjZccgLhkuFePocU9JDWrzmyi2RLUBrBMC6NUNuxEFVli9bIn52V
	 qNv9947zOXpMxi3DzI7kvNJVhkq9oUVb78PuLG9wdIqjFFQNjQx0P1LczxWJeTwjD3
	 uqCnJ67/rNB0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6278C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771764285.9332.15354356666809832396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613d9d5ac977509c745ec1d2028b3d2d9fe7ec77ffd326d537d0e841c0c84f50
Date: Thu, 06 Jun 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717717642
