Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1F42056
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732240554; cv=none; b=LIOtFKGtbUvVtoNg85GfRxQfUXsAoeIx1uuvvSWvD117A3XC/Za2zliNqrvZDMbANWAtgrRMmQs1w6+BCvIbhWz2qCtXqNkwSUGA/89BPi44Vx1t8K2GVEcGXtH3KaM5ylRYElSGTR9jC++JlPbd0TjkKWG7r6ZkZS1qjgCFD14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732240554; c=relaxed/simple;
	bh=DgNfujR+66iLIdiEZRgtqx2vDUNAHTKrn7gPKg037qw=;
	h=To:Subject:From:Message-Id:Date; b=uRNS4bcpbFu6B+9Y80GIS6zyaNxBYLmPuKyxqbTOXs23SiUwXcjkzs1CBv/WNdoP0F0o6NBdjLwhl31DH5mcg93G0UIuOpr4j9UcrPIlYV7ACul9l2vv9tSt02r46+9ofHlCu2M4qkhlMyntYqud0pzu/t+xbYAE0FvVwC7qtdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXVvBFmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXVvBFmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF063C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732240553;
	bh=DgNfujR+66iLIdiEZRgtqx2vDUNAHTKrn7gPKg037qw=;
	h=To:Subject:From:Date:From;
	b=tXVvBFmhJeaOSagvRA4QMzCDFRluVyoROlDv3bwmXLIO7y49jjH/ryenC0QGjQmFn
	 /hE9RvhT20pCAXhlT5yaokKahPmLTAN4C4R9X0p/TjrYDv+T9oEzN2Pacf3yY73W8M
	 zxZlXA5vXxqOF0hp1g3D0IiPbzi3uFXvl4psG/mpm1JBbpJvCws5oFAsD+CPmdwk04
	 O8Vf82NcCQb2iZr2t6cjb+LNBXdPQW+njDFC2EhuCMFbP7y1o7qNuixXdGzVvxkclF
	 w7tKVPuIXCCuuh44Xd/EtE14dHO8TcA8BZLH6+YUsLmywIahxY9707P/uZh/hAU4d1
	 g5Ptzw+N+EtcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99839E65D14
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224055361.18271.13242072574229984679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2bdc572ba71a4f6c3723463c4e0bf4f5b77baa1f4090fcc3b2c634e3255675
Date: Fri, 22 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732240553
