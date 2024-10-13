Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B201849
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728786954; cv=none; b=SZT6r++BntBOA29tqoWTGqKC24SuzUSHIWhpQ+dTSj2f1UIzE82eeM6V9JGra7mwznJew0cfU0FWtqB9wyiRE/l7WgdaouIB/rIvFjmh0eKEmJ67pUKXlQMV3TketHojTiKkmSdsBPxPTk/NAiJRnptXclLXNpefzAb3J89ZnBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728786954; c=relaxed/simple;
	bh=3JbPrcyQCQrtRfiLDmd94O2Hf03GQrjSfL/PQyPeRmg=;
	h=To:Subject:From:Message-Id:Date; b=A98K9+l3cn9Y3u6UrQMwm8vB6zvCViynsuFfydE4+3WE223uA5dL32L3X2EGqrGD/IJhhnJXXemdwjhwAndm/E8RTzHxqC3fJowwUfZGQyBYBSoOURBFi+pTZS/zS/cin6porSG563cJ3RdmD6b9nT6WlwkitO7C+4fLrwQlRZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGxv7vy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGxv7vy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC29AC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728786953;
	bh=3JbPrcyQCQrtRfiLDmd94O2Hf03GQrjSfL/PQyPeRmg=;
	h=To:Subject:From:Date:From;
	b=FGxv7vy2TBHnIRtvxjX2bzPbcaRGN+b1uOU+FfeHi9fGig58AWTwtMtkpCtxDI97c
	 xf4CZHxTHTy9zXNJmz+OWltRJ2heXZwvrOtxMCNWe0M44JHvsOZbahYzH5jMilZNxN
	 VppR5XcJPt0nnyBkAjAiCDjfJTyFebJL0hIwz/hW9dqL8qe9kBQYDCuBFtO2hsq+B6
	 GhVHBidOrxMt04Lptk82uJTGAWLZ364lU/cvptln2zSaJFkU9SflzD1SO2o3TR52Ab
	 Q53StmzQDbveBmVBRurOTqEov4xk+U3mjJQM0cNOfhYKjB3fICga+eFjFWanE5SZwb
	 1/uv9RKTdcgzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F74CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878695358.5927.14033113201794914615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6139ec1f8f9a92a057d39dae96939de754a8eb2dc2b714b78314bdcf6044e9f6
Date: Sun, 13 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728786953
