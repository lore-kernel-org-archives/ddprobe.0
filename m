Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11638158543
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728212154; cv=none; b=gY7rRsRJUKXRJHcBO175dfcTF0y3JXIZdziYYqbiggkqNpfe1YwjYWJHB0n5tK+6KYB7J5MJCSaqy9ZPesnMRBTw8Kn6vuWnq0c5BBSmIdLyh3xj/tpocRUqAIJNTo4k/mBIEKVqdlc8PUWeFVsqiV3l+i6PdOA2ZMyw3f0MzFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728212154; c=relaxed/simple;
	bh=L1G0ZjZb1mmvXGQhktUbYuiha+I9KXZUgM50gWqDq3I=;
	h=To:Subject:From:Message-Id:Date; b=XJkK77CWIzu8t0+3hJ0zvcaep+QV/5dQenT8wPGDEzTCwARiB8GEhFjrTv+T7wIGe5rv1LbVaFdLT8X3sf1qXcxq37ww5cKM0zLu/aOwJEjoTVim7dycmokjSkLXpy0Zs4TiGm+lNdRjkMRjDBWuAKu0Q+k1hPlGFsuLG+iOrTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyWQRCsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyWQRCsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FCFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728212153;
	bh=L1G0ZjZb1mmvXGQhktUbYuiha+I9KXZUgM50gWqDq3I=;
	h=To:Subject:From:Date:From;
	b=kyWQRCslngGcVoDGhuLNhNf6kUw54s6TutpU8LvjDV6LX9uFfl00po9eQMQWs88kr
	 s0SEOvYD57o9V41YRz/F9sjh3Ar/mUQT/PBLRC9JCW/vzNLwOsnwPikqZhiz/z3a9l
	 0o+B9ASMEZ97nBEE0RnJFhIyffMjjrnk8K3B72fJRrqgbZ18zg6fTx0Ewf29lpckwX
	 OfqeiAUVGzr+XZwHSp0Es+CX3POK4cHpcKDPddXBoVxFYanT9gX1Y11SiXlx8skfb/
	 Y5bdlRk21vBxjmHDn0R4vA1M0gZsBvAny9NRGmNP367ItVEG966Su4iPGEV9djdlmv
	 mCw0EmDhp6V7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98874CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821215361.8012.6916181820049995199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f82a3fb8331b58c3327af37b0d1bffeb3f3472cec359119f7a8b87a59f4035f
Date: Sun, 06 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728212153
