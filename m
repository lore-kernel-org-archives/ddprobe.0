Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03474396B9A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784884837; cv=none; b=dZENcxbns3C4mVEK+8HmIu0yfxMAbSq2EThmbQfhRB0PLV4lAE5iWkwNHm8Ml1aXRMDg7+6tyRmtYHx56hhr2VV6dZFaQlBM70J+X+VUpASnD4WzSS6FjjFjCFpp41IjULLfMU9jnI8VVTsU02+smDw86p6M15m7xdMKqZ0Jb8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784884837; c=relaxed/simple;
	bh=gnAtZU4oAzWknubFEXUljlNiChm/l1fYwn5MTnlt0j8=;
	h=To:Subject:From:Message-Id:Date; b=SQGTMMOtZKa1C9gIHfX1M+FrOFIK+yHG2Q8E6U19cj6As4CfKqrA+uoONpBcmGNv25767x+jlOGO/HAT0YYGuEI4YEP3IQ+KbPSFrSSSEjm6xSmzypZWInnQ2hFu1tVdauQ0aJUOi2KdR5uL5mHpULLr1o4T70kzqQ2TfWLlw0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnH2znVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnH2znVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F48C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784884833;
	bh=gnAtZU4oAzWknubFEXUljlNiChm/l1fYwn5MTnlt0j8=;
	h=To:Subject:From:Date:From;
	b=EnH2znVBm0CToLpUCvmhv5doncPIfHi7vxk0MMMy+f1UWyThK6FhIW3o01Lr6hsMq
	 Zd38YmEyKOQIVqD1yMZCMoyVwD5AQIGNVitlmPOSFSWC1irYkWCEzFmw4qT4UADfk0
	 wdxsxrJeJJkKltEcLeWXVn7mMNBLKyBMmaV1j8MPVeYjj98VNroM1e2OGqkI/FEvmn
	 fodEMQn3m4kocA+BZiPzKhU16UccvdZ2leeZNgT+0TiKU4pIPV+JqOu47H9xCbUOex
	 XRrhePAno37qQHyyRPPfP/UX4PFTUCbqS0F/u+XMIo1Ozr28xzNjx1VYky6p5k+j/X
	 gTTmOBF0a1wQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19BC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488483368.20437.896149937000014659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba47c005bbfbefdb6a33ef1d69ac06601693b6b82a7867e1b2bf607f7853abf0
Date: Fri, 24 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784884833
