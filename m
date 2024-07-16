Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748D92599
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721110523; cv=none; b=RdSPu7wESg3nnrC3HRRNhcQm+JPAsiM+ZyhY2GBit4nABxYzrb66KSCcqolBvvHGl5iR2/1sqqMguaHxz86wLBPHU3OSKB4xoaAsEIQw8q6gLQfZ4ZQRdUgC/dPpzA1oVo8FpKNws8YOASflaF2rr9zV5VXaYoaukFTWnX6kt4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721110523; c=relaxed/simple;
	bh=zLjDQP/v6mWOdMqRlfhAwew7NdSPqw+sdiVIBKwl9jM=;
	h=To:Subject:From:Message-Id:Date; b=FYVjhOulc7uOgXGpJrKTCrxVqiTNfVkY7NKRXJaMyTCahh6ZqJb3g3vopD4e3+c9twLxPMLPOh7lMael1NDuKsGVOLpaHZW5zb9cy250U7odgx2rs41Px5/uThAZTQTpSQPGS3JUAJb5iMeFUK1heQp48+8Jqg1k5xiC5+GDCI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3AOhBgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3AOhBgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF31BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721110522;
	bh=zLjDQP/v6mWOdMqRlfhAwew7NdSPqw+sdiVIBKwl9jM=;
	h=To:Subject:From:Date:From;
	b=h3AOhBgX7Fi7sSZCYeuGzzIc3Dd4uVRu+T+kHYOFSoOEaojZNX2JvFrFhc8KeuXrn
	 mFCn9k6a2e7YSrApZa8fqscvPat7q4DrESlkInyzMORkXvSvwfVIz52rhgsNxfo09k
	 WiK9eiWr+w08/erKcSa46bnVkokPpwFeJ+pXFXLpJPyor5rM/aGVJLHjTaFfOspWhz
	 w2q6eUrrGTmsJCdDWPGEEzZ6aQJzzze74KI1zpwEZqpZYqqTnmw6dQ8uuhn2oVOWD8
	 8FKBVZgjgcPv8MCbSV+rN8aqTECR5LxljI99mYUFLrD9GoQOhWL+J3xTVK0yt2GVAt
	 N/5s2qdMjivYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C686CC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111052280.13233.12907644680951943793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fecc0746b73e9d511118108298d4c0062341051139ff9f7a7d470336e35134
Date: Tue, 16 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721110522
