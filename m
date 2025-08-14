Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F62E7659
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755160194; cv=none; b=NTUselm15c7IqJVT3J/cgSNL4xLeMKA5m47et8UiwuUtGGgFdKrWNfsBPpjYXYETmhIQ0uoEnW8U3R3+bWn7X2xYToZIQ2prSha4v6L30kqKtEhxzptCzlgoTVe4nsSZjnC6OQYpuOKPJl9ncUlR+StilhnnuUlNjkEqSvPfR3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755160194; c=relaxed/simple;
	bh=U1yTWUjCjXiZSsOSdJU5BusDAqkp5Sa25lM0l5B/WTs=;
	h=To:Subject:From:Message-Id:Date; b=LaGUZm5Jsofl9Y2UXWD4h+p7mBHWBLK7YSP+SBVshoeEWUBbeyBZRveffFniJlM2H+i0wJ9xjzpMWF4CVkDP62ba7yZWDI+KYjIlCuTsEFI2TbItd37ojf93UiyVvaQvuZ5XjSLrD0Tbh8lfxX0tCGJGNA50a0dP7rCiBrkrjyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nrt8te9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrt8te9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAACC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755160193;
	bh=U1yTWUjCjXiZSsOSdJU5BusDAqkp5Sa25lM0l5B/WTs=;
	h=To:Subject:From:Date:From;
	b=Nrt8te9BpfyQn2m33TjvJYx2o8A6KOAdvbVkMXdxt22W+ZstLIpQ6TxDRiRwzajG+
	 mknEYK9cID8d5imaeu+8IfmR0rS0PSyDc3I+IMYx/X2mf5J6RvRt8LFN8XyeI7xs3J
	 GlVKPFLTk2ZvDgY0fMDu/j1RZOCp8Yc46/sa7yjVwuyJME7ucNLsFft4gilOVg0JqW
	 zYSz5jpJVpyYgCoK4V2LaR97MpWBqxGQg03diZ7p0cIGRkmzqCzP+oUhIWhAgHsVnA
	 4+MY6OUlIv+bNI0MJ56svxxkWpmcS/n2Hl5tPblvE+t6oi2t3ZvwPCeDGTvL+brvwE
	 KQh91/DRMPvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90609CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516019358.27738.4816333536418402105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee3170a3ee1ddb4cf158e2e26d2eb14f9ffb3363a04e0ca31713141c32ca2f7
Date: Thu, 14 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755160193
