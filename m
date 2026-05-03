Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC911CBA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777790854; cv=none; b=UP3g4R3Mi9LA3AvITvrqAg8Ai+bt9kdEfIg9HeK4mMh6Im5FP2x8fPXYHG+jKFBVoc+SNNh52DuxDJin8Rhdo4pmztJgNi8T6aQ4/6mxCU8XtkupFa4EZ2T+8d6G5zrnxhgsvWDR3mYaUEgfZIv/i9kakb3TRuZPeCPFM3HTJWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777790854; c=relaxed/simple;
	bh=qahIWHnN8ZVbcfnL4TGRu0+inO1MVq9iV/J6WDFoEVc=;
	h=To:Subject:From:Message-Id:Date; b=Yy+3NB/YgBx/8xf4mMGYpYazNWFNXH/Cy/ei6lBS1D3g89iWGkZ/z+87e9OJEarTJy00tsZL11n5oCd9M5uq7dk58zvRtl4wEXiGzInd+SX1BROk00RUOpo+ZDflHfj5hbGgT0zcAoSicrHEoFdEeyUKQMYezc9wVaXfcbkoC1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfZAo5nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfZAo5nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05A1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777790853;
	bh=qahIWHnN8ZVbcfnL4TGRu0+inO1MVq9iV/J6WDFoEVc=;
	h=To:Subject:From:Date:From;
	b=TfZAo5nBNkF8ZbQZSs2R2jrdDCFVgKPofQZ5BFq81wG05CLS7FaGl8gLmnByplB+d
	 ni6a1puzs8Wt3uZv7yRwpbYnvcTk6H95xd3MkXhm54kOJ9L29PBZMBTC42CjnnUAdz
	 0DQowt70S495u0BsYnP3+nV0uvvKjwqwrxBP99cdaH0sqxzGx15UmYpyN7CLXs8BEv
	 jYnqhN/EfC13/H8dkEtvsH/g/N0rG3R8JTT+gACWh7FAilgOrHemB+8VoqRc6PVYem
	 EYWcWj2uH+JFXEsi7/4spBwh4rRB8afOuULzn9BNeAVOO7YPeHHyYohKtTJ8SGShu8
	 ko5JRXyCE6Cuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD166FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779085368.10915.7793108923512117988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5544848c6d40d1d1d79aaf3edc3a9d63bc31c8172cb720c37bc157f63bee6e43
Date: Sun, 03 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777790853
