Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481583D1A81
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786920634; cv=none; b=otP7wugHeM6Vi43behOFSjYi3DsraQ7Ed14vOxta2cyG7/0y+ux0m3+r0bqlws44FyxpJ2X10K8CvvWJKevFkYmpnT53gV8QAq827EMB67uNw6hNBGyj8u6F4NaQEh0z6MUY1dB32JQ1NLoW9WEnd/i8sOQ6gYXsjBuV30f6EXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786920634; c=relaxed/simple;
	bh=ze5vFdgQHNlrxD3n4hRNz3EkS7EFvQOyklYpfJVGQ8M=;
	h=To:Subject:From:Message-Id:Date; b=KFvu774vBsYKd6cHgxUHUu/NHtL4Y5h1+rgwaauabyjuhmT2xAhiLTOBl/sf6zd3nC7IZOb7VfaRGcYU31GXnbq/ckuzZtgQQL2yXCSpAnfvuo83cy+c/1LVGdF20RqPrwDbCrgUxw/Ov9VVvzphwn3Bt8iK5a5Tc2g5yPJBu+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2XaXPX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2XaXPX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B1CC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786920633;
	bh=ze5vFdgQHNlrxD3n4hRNz3EkS7EFvQOyklYpfJVGQ8M=;
	h=To:Subject:From:Date:From;
	b=r2XaXPX60ML3IVskRAvqo9Vs2DzczMlp0LR1Em7qf8GhExVwFG5k/hTZq9tXyk/PM
	 k5HoFgAphjBcp5+H1ScHR/Rd00Y/9VlBTncSpeBBIwbs2FgiIQjyhvonSgnX3atQ50
	 uWOWFzfNc61xEDSvzvqjSsYqFcfJsMvUYGAS+69IWHxU9GB75ZlNiEKq+6LPZchTSj
	 /1bZuamBjih3/+DZbXJ1nSFMjaahMCocRGk6QEuCp87vZB83B8n/eo7i1/fGKw9b9r
	 1Usk1OVxLx0/lBeerv/1xk5JY/hYaxSIKKhGfjM2Y8gCdqiN0nWzka+ZXXaYryBjyP
	 ktcluB8YSzojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B275EC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692063372.23914.4259607707508893475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667f5aed42153c9cf443d5b6cf396af7e2232bc3e31453cd291beb480111398a
Date: Sun, 16 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786920633
