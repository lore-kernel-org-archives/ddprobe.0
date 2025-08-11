Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB8F2E3AEF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754949594; cv=none; b=J5ftJIHrRirYQbU6/ob72ld5iXdpVqmnaKrKpJYBO9q0IHaO+QcyEWzTP3C+0ImByEU7Y/9GDhSWWVCvz3MvvI1W2PBYtYmLoeL/N0qr0VMVXvfenEER8i6M49mmdtMelJEPEsY0MuPhJMmJf44rHzFB/smvZOZOexas58onc2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754949594; c=relaxed/simple;
	bh=1SkW4blcbXHByDaGPDPVzJpbl8NU8ZXC7R1gPcXAiPY=;
	h=To:Subject:From:Message-Id:Date; b=k2aREDdYcV9N9Z886vSsk7VLnMFKZ5tgUs7Dedt4Yjk5a4RL8pJL49l7/jeMucIc4KeqKG1Wxie9cEYCo+6sBUF5UiNzbhdXc92BYGABYRaDQss04AsQwXcVcZVXYUeo4f0b/N4xSVZeZACB9eqRLTIrhhyj/H05NV7Tgnw9Oq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt6CY1LL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt6CY1LL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754949593;
	bh=1SkW4blcbXHByDaGPDPVzJpbl8NU8ZXC7R1gPcXAiPY=;
	h=To:Subject:From:Date:From;
	b=mt6CY1LL28zpx1woT6F2VW+LQWm+ZehafKAQ4syvB70poTQMgkYLuV7d7oLQkF2mC
	 s/IuXcpEW5I3K/QQgFJSPWWqo1iUA2jXzMVUOPnAzwdkvT70AfY+Y9+qjcsyb1rmd0
	 9a/DJYasjGK9NeCQGmhLdq29v08tmlCy5UYFvUFvYblqAsGAxIxBT6G2bUVsV36J8O
	 WLA/FbZ7BJkRo1MkQf3l37QiCkLZ67TxbIm/fmTxrNxkspYFYl9CDEkniiYq6JKxoB
	 U2vvv35hBfepFXkVcOSLWFSgFoI2+y4ixpZDpcCAUm9iwzM3Cw6WRFwvT39Sd+WpO+
	 w1ZkkdI0TOr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD3CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494959357.7546.4736971440422312984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661c4616ab0e96c46043353900755f3d83bd5f39283c40e12c7b2d7f8b89a6b5
Date: Mon, 11 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754949593
