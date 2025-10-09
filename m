Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B412EA170
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760019593; cv=none; b=rCVhsepq7UMsCCNYPeHQViJQDwa+lmvzPBPspqTBdHs/0LJFTFK2XPrOxut0XxDW+sO388Ku344ExcMshrT9vm3KLMzhRpB7Bm3S3BuNSut+hj95E96VoSwUTR7FWn8EcOEUIkIE0+S7wtIJeju0Qami+pxnWK9J8YlsSJzN4EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760019593; c=relaxed/simple;
	bh=zvp7LwBaxkjucYI7XQiWDVds5nl++vtTVI+PsHDbDRM=;
	h=To:Subject:From:Message-Id:Date; b=tq2XTyhGsEKjqAhghK89tHyRqB9P6mb41a31H1TBDHK6QUnySrZrY5Tacys6WivDi36b1k0gMPVUPWZSPi8mlaV7YZ2+IJo1SeAKytxkzT7SM/Xr/pvRiZWEPUwSjf52Ql+4HVnUaK5Z34XrgwqeNsmlN9EDXeXYBdIGu0vE8T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu5tBrrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu5tBrrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760019593;
	bh=zvp7LwBaxkjucYI7XQiWDVds5nl++vtTVI+PsHDbDRM=;
	h=To:Subject:From:Date:From;
	b=Eu5tBrrbFas7b9SXmsqULr/Y3HlKtBkHRhQjnKFPzFcI++7pkVp9Y5OcYL7vQxEuw
	 T0mNGqQw5yGyUiTV2LPzb0wuw0NcpqIeZHNz9LIDrrECxznTBBDknvTlmlYmDuPMt9
	 4Zde7jz0v5myNmm7+Pg+N7oQ8zB8CkbN7WZesYoMOHwX4FEIIbsKK5U6cwzOadIujy
	 Ced4dT1AkzP9Pi0cxWg6pa6DXb8YSy0lEIOUlkyLeZdRPvtcbaLYwDW2hVLJBplQP6
	 WG3+/ONnn6uw4Ub5xXAQ1d+5y4LafZXzxisxKuJOuidWkN5g1DjuHVxCzUtRV1UJuX
	 AfrvuaR/xK7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F847CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001959357.12676.9573164861719822348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21a91176363262c23924b0ac830f4c91a6b1c52e450a2481413163d4149c1fc
Date: Thu, 09 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760019593
