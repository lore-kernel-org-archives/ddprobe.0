Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABC25F978
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749540594; cv=none; b=WvgWVmJgTC6pEuClLfOvCY/iI8NweVQ6C8iSQ/X+BHNTWFYdg17ykJLK4dviEjsawjTv7rFGINGq8vl1MWzOoxeIu+OTcOVOk1Iak0gSxsYuirAItb19RIRUFC3iWofx331XMNIWKW1lR4fuY99xufN2uHpKospBK1yto8Vmm7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749540594; c=relaxed/simple;
	bh=Gq9zjjSwaACIbRsahPyZAh/3gKhaGDAnmkdXkp0MSCw=;
	h=To:Subject:From:Message-Id:Date; b=ESbv99L0Nz9DHap4x3h19TxKZkx3BI519jRJDlipwRDhXFA3NwkcUeexPAk5L94iA+yLI2SIWGs8HHmZI2ZQoniIN+PyNP3Gm6GaO3NjML+x8vZARc+M/6TTv/rJKmvVyJat7/NuQVsAnf3u8LRpbhNS3/B5mDcz4sZk27lHcLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doKY4ZqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doKY4ZqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F14C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749540593;
	bh=Gq9zjjSwaACIbRsahPyZAh/3gKhaGDAnmkdXkp0MSCw=;
	h=To:Subject:From:Date:From;
	b=doKY4ZqWhFQaTrQ8XLGw6ee/UNVNVPt31q6ILnridLl76re4tMtnIp7BLv/ybJ8TI
	 PqajHbHHoa7pBewYYn2epv6XoLehVQsS5woRUV29cqvgduGA10yuvt96YBfWzq4ZSS
	 V0jECFMGvixt9oPmMDrI/DuoGDQB4hn5age1ZrArq5d4L14sR5vzNtnegiV9DbYKNb
	 dgU+5C4j36oCoMHspVMfPS3kZaeyyhD6xtIDdPS+UljgRHhnmhCeDxKJATz735ZxiL
	 HJXQMCt2EJpu6JDFatfPYkPc5YzEou4+1uFwwRavbAT/vltc1hsokje422VDic7Ut8
	 848XnF8kfjswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91AC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954059357.29638.15620327760312286739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ceb601f5f521e018e01dc35e320b1b83f2e48e6304dad95af1581086970fa7
Date: Tue, 10 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749540593
