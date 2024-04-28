Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0B8F4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714341143; cv=none; b=r5f05LSSDTAHB2/8zCjw0P6hc66lsVWvNjzG2Sh8v6VsSinM7L2RBvsotj0TRBHkFo8Y2V5jQXVRqa6L/C1bMvVzT6WjUQkNk3S7LI912NIXkEmzhFYf3Qcps2t2i2cc0cdpeu1VEaWWYuhkXZV1lTeOSIt0Ebx7mlZs0pa+vyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714341143; c=relaxed/simple;
	bh=76LfkN0hYXddV1t+pugeh6T4nt0GTxqvyOBNwe97eJc=;
	h=To:Subject:From:Message-Id:Date; b=HNbA/C3E2WGYMnXTUbk7/DVRHbZ0hsUUHBrRqhxLyOlDmJlPqBkHAqBoszkAlsqizUX7xoV2HgeFAJjOM3RTCovpm1nA/tRf6k+jSFxPPpZT2/h310u0JLREo2ipFA5oRapmxzOy6X18FbyfmRn5of+6WnqvHJTJbLMT4CmsLhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToWDLlYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToWDLlYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDF1C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714341142;
	bh=76LfkN0hYXddV1t+pugeh6T4nt0GTxqvyOBNwe97eJc=;
	h=To:Subject:From:Date:From;
	b=ToWDLlYaMcpDJIOEgbl1utfyLYLzzTpD5zBUAKfxru/47WO6HfbhajATMhhXYFHfS
	 drXgEnEhFh3tl35mTxbbn3ml1GBUmHut7PAMxF4p9KALnj1bYL709DvuwHjthiPFXs
	 7346Q3I7GwRqBO7mHp41t+fBLc2G/uG0riEyuhNKs8Pu1IU9q7LIa67RNs0spzkZnV
	 P7lGKK38gQU33p5msQp8X+B9fUhMvu29x6PSSikH5j+RQZcMKuqw5JC+fjeIMMD3DJ
	 AjYKtlA3Yn/45uSTlB5YPFiMur7ATvupda11RONZSQGUQ5NY591XcxCJVYUWqzLAA9
	 VP1hHgzzWNHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B3C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434114276.608.13460402526889986722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ab6b908a2cc1d4b7d3781502057329f6c132ea7bdfe33d1475883257bb6a02
Date: Sun, 28 Apr 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714341142
