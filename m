Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A28B35E93E
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776898054; cv=none; b=pT2Hy/SxYzkIMocBF23Et+U9SxS6fhD1X6QzzCb23Gsb8j449Ml9dbhbB1/gwC7XIsW6khLbu2q4WLmp58l1QlWCRRWIOE4SyPQ/WkQBfTx6d9wDhM5dTNmO79XeU+z5x14VRCBiVfQj5ICJVB09NAu1RwO7diExr38QoEfCq90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776898054; c=relaxed/simple;
	bh=C2CfDLEivCgLIBHyNFQRDr69JdnuLqpHQZz79iqgIUo=;
	h=To:Subject:From:Message-Id:Date; b=TnerxvOyb4l7KlIcpL/2ZC3DQzgY80/aZ662uWslbHnIZObtzVq1S7pAiKxYutfYOjSIvxVgDO3ndSO4fTD1uy5h4UxrRCxBbVMy2VY9ZcwVcqE2L8vR/T3GnbDKark1KwgKf5A+g6JVU4iR3Q/rrtTt9MB/RSR3CGsbJMuDg6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDWZ1mAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDWZ1mAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B92C2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776898053;
	bh=C2CfDLEivCgLIBHyNFQRDr69JdnuLqpHQZz79iqgIUo=;
	h=To:Subject:From:Date:From;
	b=RDWZ1mAqOnfwLoHhyzhMEbW9J+DHRX2Z8LjCOrpjBebLYSohHW04VORXnNNBG4ZDl
	 FH4Ta/2kPHh/uGGzoxeL9HQRwWWW+Q1gwOEt9bPtstv4I/1efIz8gXarR63UKLoCBx
	 L/FI7RsEl+zMO/1eqQ95qpc/Y5XIhVJhpgBwhKhWmMozMn32lrtbgrpo815L3B6eB8
	 /svybuMhK9G1lwmGQgaQnj31xb5FrKTX+b75JeaQpFgqabqzAL7Rl2TFTwhM2UWmzr
	 5Ly59/IuAOOMpEk5koZX32rPAil3VCZLIGUfCYTEVmZWSMHLjTeZHzOkHdKpyQXMsf
	 LFBz3YrFVYV+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B0F9B5F3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689805368.9985.4229451202049838993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f404e013d52b9589ebc2df371760c624c82f29843294a40555f04bb5950f0e4a
Date: Wed, 22 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776898053
