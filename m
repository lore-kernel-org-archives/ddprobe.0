Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30160136358
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769285634; cv=none; b=tfDjEvRwJzxHoniNWnw9JIjZYndv9XuDeu71xxQyee7ndltP+OGpYqjHV/5DKvxdTkRjxxaijSXWV3qABaGXrZrFhLNa1Dl+QHiqqwj+LYNknd107XOaR+UC6QcZFVee7SnHDCXlM/5Jwqn353E53ysFSQ637eITAqpyeuf/nz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769285634; c=relaxed/simple;
	bh=q+0/wL2jIg92016jyXNCjkxrpAwggEFk3i+b6n5o8p8=;
	h=To:Subject:From:Message-Id:Date; b=ZG6/cMlJqWkKUzw3X5YuNN9s0wPS2Q+z3qMXFY0RaEQT6GRF1/YKabxeEzxz+ksz7ioJJw8KX4mCMp4LsbIyjhqW8Sxtx2Vyj9SNukPbASimNw59Iq0fLWXAewU8y7ZwQNtTCYx6ntfRVSUG+JbtrU5paOWJXnm4j3WDdC2APn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjjnrYgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjjnrYgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6194C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769285633;
	bh=q+0/wL2jIg92016jyXNCjkxrpAwggEFk3i+b6n5o8p8=;
	h=To:Subject:From:Date:From;
	b=pjjnrYgbbCKVMMElhXRIgeOxT6HKkhHmZJKPlwetnvU1EAKnxxgpcI7md3rRYnskc
	 IIUQ2PfnZY1HWtvgug9qkLQVDwaZZ0pwTuxN7PaVeIIOTqH8OzEi1552bFWfBtH2Vi
	 U9eyMvjO8l3FEsoXc5t5bq4VyM351+VkU/isaSVEQgt7IEMHh9glzsol07MFMekCjV
	 MmrsIfDpx+5v/xGwdZZRe/2B21H5X0f36C4YnKjkOU4heXfCYBYa+tnVg+fEsutvKT
	 wg3mzSquXUWqhUt7Zxs6cCv0x6Z0RqWhYQhTokHYSpXXxYOLdkTvyk/u4X1UvG7J/O
	 lprxkEJFx2M6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92664D715F5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928563357.10275.16905920725274463110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcaa2a7ce3149714a47968846aab4fca9733e05bbcc56b02f24ca6c48259a00
Date: Sat, 24 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769285633
