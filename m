Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010D0C2D9
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706840897; cv=none; b=iMHr3uCcXtQppGujpU1WIIsp/bzLYOlOf1kRb0Q+X1MwQJOhPlklLNJk/6489KZrNgBuPyyl3V4Damm+LnZPvLzj/wO+e7t2qCwpJPq0SmMqbjN7Ty3IdPK/wKB8Gi97ifb2v1gGtFDzLp1Mr5Fi09t1TccRtg4El1/yHRHAXpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706840897; c=relaxed/simple;
	bh=g0Jo4s0cxYHuUrmFre7ss/uf6tO5nh9ZQXEXjbok20I=;
	h=To:Subject:From:Message-Id:Date; b=g6O5aSe5VcfhtNNOSO0w6IrGFT6MBHTI5pA4nOgE2P8VyDYc8Tsh+wm1QMBs13u5Ch02olcByLpXDEtaIzcm73pYP91FJ0/hii2EnpXXngHdMtx7RPPvW5yKmLF9LylycGJd8yV3p32Nhx5KmNyBHDkLXx4p29MMfHnXNV+Qw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agm8K786; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agm8K786"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AB6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706840896;
	bh=g0Jo4s0cxYHuUrmFre7ss/uf6tO5nh9ZQXEXjbok20I=;
	h=To:Subject:From:Date:From;
	b=Agm8K786OwxHwJQkD+kN85r8HTV0sMp5Oc3dtDAU7iBqvQ5+BMxrtqmsZH39BWu9k
	 BDK0BNFbZ8YL3WWgSTCuslca4YkVTOZLeYV4LFXYo2HNJDKoGHJKckOUifACocZjtP
	 E9dK6rui3dP9g3PVEEJkkWyQ38mtCwmGp2Fk/UHA+PxYEEfCgBZqecahMYEg0Xa2eD
	 ZbU7/SgsdcZkMBNrOZJrVZ6cF4h7HjDSpXqrDO2bKHFrnHgqeBOX/aKd9S8biI0mw8
	 T2a6tWYHohF3HzIjl2a2Zrbxs7meuM8yWYmikpBfMpH5hVpkuU/Xzy7ETrVrQVcNaT
	 ALrFn1cdIhapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFF7C48286
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684089636.21194.5351788234952875462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27823785a893821e4b64aca638ecb1b36b39eed2f4fbb9f674c14052c95b8ba1
Date: Fri, 02 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706840896
