Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D8F20E334
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773498894; cv=none; b=syM0gCpTtSePBIVcJ/Qi8QO0LcKiQ/y6FOwAC5DCXvMDe6ukYZ+cAHWr1/7vqd8tFSmy+Lr9mcuuYtWJ7U0Ku0wd1L89ujeFPku6ZdhYtK+65iTYlZ1JfBUGP+RQvZ4cQ5x1SXTjzVk0DKkZdSyRFQDbtdOwvp1z4ZrhRPFv2dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773498894; c=relaxed/simple;
	bh=e+zATzpBypRxSXUQr9liTCgZAnBLA/xcKs34us1UmH4=;
	h=To:Subject:From:Message-Id:Date; b=qgDQa/MCx+h9SpgVIGTT1MVCiyOAWp3ILJ+dsWjgF+HdQ0Wv+Xf5mkq+9v5PoerSTQUgnXtrGO8NoAX91AVTTVx1vvw+5uq0RSC+0iRtiEdWkE2TCTyM2Z1r2uLRZO2JqPDntgPxOwVXntmvLU/FJLlZEGaxOkggnAOt8DtdxyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXJLKUuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXJLKUuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DEBC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773498893;
	bh=e+zATzpBypRxSXUQr9liTCgZAnBLA/xcKs34us1UmH4=;
	h=To:Subject:From:Date:From;
	b=PXJLKUuXgodX2A3ixJykAKf3+BBvbMsbAZBsrx9WAYpzSx815KXdl/hBYeoXHySH8
	 8E73+8GqevVWkPFuZH3lJT3tbvN7XuHKFFhPUP7c3OOPwgdjirGC34HCt/DW6sACne
	 j/eyyeAD7ViZyZB71BJufJ5mXhn2l8WyJVx3Dk8tPv0pi9hMeMwYydw1tsuSPbtFEY
	 yjRNkblOaHPwUsAXS7Vho1T3x+x3wCXap/3rMKQH5TYaO1+hMoJVtxyPJKDZpkNqmg
	 1BLOgxEFUKO3HguQ18wLbrKVKeoNhIn+Ii1NE6cxUWPWSjLuiyypIpr/InIra3EUbr
	 mi7pc0eTsbSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9110706DF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349889357.29134.11701382012309471916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e214eb7853d84948a0ad82bf8109688bf3d6a0657b0a7b88b01633ad1bcb9700
Date: Sat, 14 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773498893
