Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C71A3382E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782729514; cv=none; b=eZpVqja0rzta2UUI9ZDfBGZrbb2Zz4f5Q4GsGjwhJJQ47/aY0ll8HEylYfiQ3FgiYAq0jpb5A7BxKyU+hzutjrbaN+AD7bF0S4HP9nnUBPt16ckA8VvxRC/MukizhYK/2wvRpngKi0YNgIfNHh7by81pP+G68k6nv2n7i4DCZKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782729514; c=relaxed/simple;
	bh=2FMvV+8SFPFd6XxB9ddAy1UoTdtnX0uPkcABfFA71R0=;
	h=To:Subject:From:Message-Id:Date; b=NQGmvW8G8iIhgOtJufDlxBXtKS+58HBFg1nF8Mu2DeqB5f0O0J2LssID2DDN0zQ+yNBeWlymkpxZwhZo+NKB6gw+m8j3GjyVnRYlZnqmjU9Inyb/U/zog5gQBmZCBzwXqLHWOZm4g5opcX9c01zoh5wgNdut5qijEA9S3g2F21c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk4L0Adk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk4L0Adk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ACAC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782729513;
	bh=2FMvV+8SFPFd6XxB9ddAy1UoTdtnX0uPkcABfFA71R0=;
	h=To:Subject:From:Date:From;
	b=uk4L0AdkBBIb0FGUvrlJ2Ca2OLCj8M7RKnGV5zXm9UyzHUkyJdvhdeCp230UKRx98
	 vlQrMoFUUr7XFXGW+bQH0Va3TONJbNGuzZTPxeW2FSU1mARBxWkxITD0nXqAuunFeh
	 6TSnEs135hBrTVnrySC6+FggmQ4bcDndzjUdCrd8UIxMtS4v2yKxiM4hdnLIWOK7pr
	 d9qy3LprDoRcH/aqNhBIXSZVGGK2RPuC6FiAU73bzMcc6Io/mXxrO7BYVowzA5R6wC
	 ZNVrDp00TV1Pdlqib7JHkPYTjSHpUgac5VY8snBADYMzCyqUMNV2WvTScc71ljFpei
	 eP24hKbdVg8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA491C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272951368.8348.14046811889008534245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81365fac06fa2657e4390744ff4e94fe1a2d756317f1605f6b3ce9704423b3a
Date: Mon, 29 Jun 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782729513
