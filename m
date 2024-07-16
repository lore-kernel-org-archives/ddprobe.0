Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEC413BAE2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721171723; cv=none; b=DZ8RFxdnygdBacUWloANqHmE86guvoMiYIp3R5ypBLqZCbRrDXO97q3EP/qC1TjE6cdojOS7XhAFDC1LjOTjEt8nJfjTGNWid826URthI9b9O3pgEBnot44/5xBAOfne7QJXYAEgxRx47xl2kWonp42TvoEbnN7xowPgU+Ie2s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721171723; c=relaxed/simple;
	bh=l4meGgytbmGugQnwbfx4lR/XxOWZqQUibHfZazGuuHM=;
	h=To:Subject:From:Message-Id:Date; b=hwduNJMjBv/P9QKmoPKEvSNP+HISQb8TkSkyZ9SbSwxydm/zNTgDFF0qrBTxJQQeV2LjT1DU5jZkgU4HIQi4/s0lXhcJL3YunnSSMxqz1N5O3aNUyOMouiM2J+KsuA7G1ryxuh05H7b6xo8L1jDd49e0+c5jJTROKJyS/7pcbCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPBusxpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPBusxpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EDEC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721171722;
	bh=l4meGgytbmGugQnwbfx4lR/XxOWZqQUibHfZazGuuHM=;
	h=To:Subject:From:Date:From;
	b=JPBusxpUBeyq4vvVvexB2OKcfgUqisWfMOYobUsV8JuRPlXdDP0og/za8OFu8rx8F
	 12sJwKOBgYTGjwf59s/zmsA1ks+iM3/Y5GsFddbPz7Nfn74rWNAmlVKtIAr7MDfdkg
	 4E4gOrx1UUCLzMUtXzyTbF6PLNgxndSyy6pph7KlJ2ePErJK7hQY8yl6WeCaowSWeU
	 czvpvOSHXYDOgFMDQ9Cny4h6N2n3ireWzFwquQBK7iiCy1Sx5eK4WHHVPfhNbWAIiC
	 mC4Rn0019uXMmQuTUapyc7PnrlVmYFENUPINuQP8hxAsPB07kJiFRc2HDZ+KLw0G8y
	 NaYaD5rZBeNsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C133AC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117172277.19326.7655150460126900444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ef99a3b7a78fe4a1abf66fb97a4c813d2d5b3dfa35b9432ed77811af48e1e0
Date: Tue, 16 Jul 2024 23:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721171722
