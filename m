Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707C82F2B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716836063; cv=none; b=XcR/QuXonWHnnItB60pM9JoQEtbg1gS5Ou28SglIZIm6z+ArXe/FiBr+cfoGiw3WOmByQ0M2LAtV0KWK22dzPV3pAz13vS7M1pYAh9ygBPKDPfLJSnvTj+GZSQg/O/KjqneF7PXrNgm9qPCzvbJheDKYHk15XCBpn2SBe1IGy7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716836063; c=relaxed/simple;
	bh=HL8ilooLvIodifvQtsE8VxCphJEeOLVfeXZwskMge2M=;
	h=To:Subject:From:Message-Id:Date; b=O/qe6cpXXZQEPByaE+PJvpaQjFykIFioFi+kf3kkJJ6VJp/TeAX0v1dWdysam0DpLFyiRU5liAvIdV6BrNvs+vDUUxZEyuUmkjSGqL5No1zAUwbGrRFOkincSABCh4IOfvyuULJrENc8FopYTpBk0VB0O9jGV/sPXI031hhMyz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhO2R3x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhO2R3x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5202C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716836062;
	bh=HL8ilooLvIodifvQtsE8VxCphJEeOLVfeXZwskMge2M=;
	h=To:Subject:From:Date:From;
	b=GhO2R3x9fVX7KPjg6ORR6wzFJEHyj/vSw4wHCyxVss8RgaVTUc1VWBCTfABKHi6zV
	 xL5NJpmF39MeHq3LQJAoa6DQ/LuA/fSNwJvV9gcnaEF7yL/dOAUmtl9YGm0Io50Yr5
	 Rbns2fgCQEhqz9cQRLoKfS0C5rnszNb+xurnN/oPbmUA27vP2oIqtz6ahQj20WMw+G
	 sDE49SdZs8Cz95psphH5011BBmNi11PVc3WOsM4+bVWHX17MoQhL7s0bhRNf+TgvOp
	 SM8va1u/oD0AJ/8kksq1gkuvOf69SYOD5mW8nLMNtenPN8rSnHIBPNYuv9RGAw5Imm
	 2x8Tsr+CEM6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BEFC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683606279.28794.15668815545180878011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c50ff71306b3460306429281979627fa802ab37c87a5c98297a7f9bf1a9f1df
Date: Mon, 27 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716836062
