Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E32B14AD0D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769216034; cv=none; b=ZPZsR7I3uer02tpfwtxmZMIdpCymPutBdQXyRLoJOXvEbtZOkO3VdyZNQSPE0jm8byXhfrJ2A0swJd6lp101LaAmB0/C8nM6UbsTl3P15O1OiJCvHemgZQMYxp6cbvuOF+JV7B5l2I+mWIWlvB8oaNVkkio8eGMOw2YEVYblgRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769216034; c=relaxed/simple;
	bh=e3lyDnvisT6HgsT2JxV3lrtP12ZbnGp8kuTGk5jTAr0=;
	h=To:Subject:From:Message-Id:Date; b=rCxKUgiSw6aCECMVxcq2tc1S+s6Ht4N6RxvHwXLRY5Y5DbtQeVAGm6r6uctr+l1AqAvdSeOPQ8N+st3Z8nI4DX6dOEzfc9U7pCPWivt1XLG99rLqEbkPdDkYnUCKNVI7CmDu1FHjS79X3XGAvaXPl611kVOxzejuE/8PYogqChg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQsh+CY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQsh+CY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE9AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769216033;
	bh=e3lyDnvisT6HgsT2JxV3lrtP12ZbnGp8kuTGk5jTAr0=;
	h=To:Subject:From:Date:From;
	b=MQsh+CY5vwAuey99d1TQbDzoyc2/hvnkWt4nzzxWD/VoeJkvdDpcpv1Rkc4l7n/zp
	 oEvFxDeqlttNqnyFuWec5WJJWVDhR29DrZgS9oXHuyw3sCpVuaEEKn03jYfxfrFX67
	 jpCbzDcsLRVWQa0VwioW0x37voRR1IGJB3BIRqd4d0Pkd9q8Oqjs39xScyHsjF21Yh
	 ds39Tl1nccig/zHjxHF+fSQxfrNBp+XcrwuPrGPE6ih0kyzzpVhpWBn97zwC0lk5Uo
	 7bxyLHWK2QVMyjSu0n5ZhR8amAUXb9CtHUKuWncFFRpe2nhNmzBUGwekDhtQ8pPYkz
	 pMBl8JPzYLpqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EAD778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921603358.11472.1121140787653344048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e6071414970d80e8a5dfe30827d571ddf85ae7a4fad38808cf44bc5701adf5
Date: Sat, 24 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769216033
