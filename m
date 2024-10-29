Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A1206E8A
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730222754; cv=none; b=uWcSw2nyRuevNwiZAKwvRb4j+QWQpi76M4UCA2eP8mLAwL6SbZkqaNS3y1mGnLPVa0T4mmJTHrVr3uRBDefMnWWG7d826HcrUdH0CpvB+8VY4en0KVZR+zumtfOlX1VWBzWDIvhf3W6mURyPd8ikgRkAND2ydinAdGefMkWei9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730222754; c=relaxed/simple;
	bh=l5Q0ZgGeVW5oj+wS0J08HyAnFaVJKqu7qjjJuPDp2+c=;
	h=To:Subject:From:Message-Id:Date; b=QdUz/rZfJLmDs3WOG9EJZuSQKtR5dwKsxCUCn/tHmr6ZUKwMjl9zklDfxnHxLzH4Iuf177ZVwmo+ExYRfc80sh6MXc1Us6EMd7hiLIuXiq+cGFNCLbovyAt+9HWlzmPtqecURXIbL+pZZaZHQt0gtP6Rl+eA2ogl2zlJirZ4h/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLlrbpvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLlrbpvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0561C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730222753;
	bh=l5Q0ZgGeVW5oj+wS0J08HyAnFaVJKqu7qjjJuPDp2+c=;
	h=To:Subject:From:Date:From;
	b=XLlrbpvw3Nq0pFNKHjlAOhdwB+ZnogZ83q+1sDosPtNX9sEGUQ7behRquv/PyR/jG
	 0lZSZUsQdZ2YUzyqIpsWU8m6GbpLVis5aSM0y0Bh85FdhDWkTvIRCfwqHGNTd2nSt4
	 xpva5/zA0rr8SNEknGycv1t2AASbh5nS4GYi8y7h/c3Y/ADicM/64ukp59eGWwy/J1
	 eq7nu65ArQkRBxxG8gG/+Ha27qWZq+2d35ieDHMRlx9BSdFKOJ7KtNXSEkpj1qY2OO
	 maYZp8Nm4f8N9SXAkADjvSB33pfAuPuBTRuLo6QYJuYgMHIeUVim1WKnfuqm3QNCbu
	 o3vooV0tJ/tSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B34ED3A675
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022275362.7131.12268823968397592778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b687676ae6cadaeca23cb284fbc0a1a27ce0283f9e1c88595ec428e035df6ae6
Date: Tue, 29 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730222753
