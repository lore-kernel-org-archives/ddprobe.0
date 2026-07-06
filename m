Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0570808
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783316914; cv=none; b=JGd+5p6lmOSfL2Z6+NMvnqE5Yt0ZpgbWs/GNQDHhdehZ97dutKCwqlkZBRT3sW7L49hCzlJGBfV0/QdkVRjOrKAgCtIS3qntDuwQ0YjIxVBvUZSA9C7Wf07HKbmycN5Bh00zGxgWhpmstyEDqWZ5CQtYezm8OrbsnrjR//wLLmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783316914; c=relaxed/simple;
	bh=I6Ed1cH5fuUX2yzaiSMxyWlrsXFgG44IGvpXt2k+pnk=;
	h=To:Subject:From:Message-Id:Date; b=c+penA1Ra3AIvmk5fLyZi6joVD2zORNPHlPU2DEvEmFZEGJY136Ubcsy7bngeQb2YhJA1Sf1tXy/IMR+R4Ws2deSnVUK24yDnIZ+kpEk/MH62S5jkzzs3T0QgSvQoa3yBVAvekEXbDBga+UiWMecfOwsIOAlGuseftmb4MCNZzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXQahoxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXQahoxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD566C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783316913;
	bh=I6Ed1cH5fuUX2yzaiSMxyWlrsXFgG44IGvpXt2k+pnk=;
	h=To:Subject:From:Date:From;
	b=WXQahoxAp3wQ4g+joXrALtVCYHlGDXQkFGbp4BkI77pIQ8mxwHtY5IeVlzpdNvbV0
	 beub3RiLyjzJZrMl/11hOt2+/XnL99mewZPqRfgaOxkr+4EYUr44iDvTKr/oHjnsJh
	 h5lweNWaJQ7avabcRxmdu7YSarlcfO8mZjyjbBi01IpmFXDNDHW0SNpJ6hRJx6oZqZ
	 T4SsDypVGbqWf4zo4yqlqH17zYKI4loHtFnDknp9oo9giuE4CIinLRQrHUJRdFr654
	 xLbd5bz4JGnb8LgrDNvFHPaA3K9EvRgUQ7rDUgyi1lxu8jSSNcoZ/s5VmxNYkAECcV
	 9E2Plo3AXfOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD5FC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331691368.11177.7488131553638553471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09344029922ce0ba8ef3554a38dfed737dfa5cabd7b44e001445fd47abf0dc9
Date: Mon, 06 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783316913
