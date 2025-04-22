Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C998632B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745309994; cv=none; b=S7FbB1U4b5TrHlX4ZFYKxMLTOHaWoDBl0LHv9GhqOqZzjYuvIrHwQWLvdqgfkTe3XYDb7F+0c2BMoE/xlMSNKPnBS/w6XdJMceDpdY6pSYfPjWBIHTAv/x0UQlBuQs5/x6/aOKONuu3K2FYbVTILMGdi68tasI6SADn+B9dwy0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745309994; c=relaxed/simple;
	bh=XW9FhwmOX+8YyPlHovxNsjZgndqwfKP8ImM42NLkRrc=;
	h=To:Subject:From:Message-Id:Date; b=NqQ8E4UQLpKpJtbELYA4H912UfDQ2PCnRGwm4blU3D/XQbn8/scL8cdvnyOar7ilgd5GdE9pzLozcqSdJGAMVZO0KrGRTScPYqFoh5vWNN+2nzpK87kbL37EV2FMtrbrnxmnpXMCPUAbvG4iK1Xhf3S/oe9P9VQS/dHXRbCv/x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUCnieJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUCnieJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BFBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745309993;
	bh=XW9FhwmOX+8YyPlHovxNsjZgndqwfKP8ImM42NLkRrc=;
	h=To:Subject:From:Date:From;
	b=HUCnieJlxOur1ZlxiUWbjfhh14+0IqIeX/xL+9dByu4WVF5puxspJzQ+BvqEBzroJ
	 WR3S5ljT5JsbV1iRsWtaQqn0GSe9IGDHbOF5dAwjNdz8brF7QVD0Qg9HfR0kbhMLcv
	 bnmNFcKnoktadvUqeVxvhQGdWqh5IVq7/rhHAVzym1SMGkoNXsMcQ0MjFaNeunKwCP
	 JFxwAyw6Panpp0NdXG0JroCwoYb0KFZgrtLfb4+5SqaX234Z2xse5VF8UUbN5eOO6P
	 kGid14sR810lkItnL5rGkKNZCE6enoOZHUoNXcIMayf0rK4/mBHwHQSG/SyFkOceDl
	 5iusJqwe6SLIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D00C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530999365.22318.10640120483806675860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee99d3382dc0aee2a72e1c3013f501b4f8aa6dbdede06f3196fb0b0f03a5cda
Date: Tue, 22 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745309993
