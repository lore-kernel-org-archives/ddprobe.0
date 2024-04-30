Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044A47710B
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714504943; cv=none; b=RUK2B8pNpAN076k80eE1BLu0hJl6Be3/sBkbupmOSMTvue2rb8VObl0KJ2k0UUftszMD6qF/wnH4yhm34Qk7Q2AMb3xiA+J6GT5TxMWupAU0dfxauR/33ccsi26c4rn3SITXZdwXXCDAHIn54YcVsQVs6E+PksKZ2mGuIOP+aBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714504943; c=relaxed/simple;
	bh=1E/LzrfO1lwldos8I9DZ5OqlM/KnAyi3kQeWPSfAcj8=;
	h=To:Subject:From:Message-Id:Date; b=qNWgvqppgxYmp76w9pMScQMZObS0RNZRPxlSeJZ+74p9EXFhuxJvUfAToYS770VY+HLd1AYwYUcvkJad3D+6nOjCwmNXrvxyNco8Mr0VwG80iCbpJc2XeM/WUg0LNYltlaepyYkk5U/3ICud4bRDZ3gQ+AI1WWN0TAb1EjaKU6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBFIHCgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBFIHCgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714504942;
	bh=1E/LzrfO1lwldos8I9DZ5OqlM/KnAyi3kQeWPSfAcj8=;
	h=To:Subject:From:Date:From;
	b=SBFIHCgUDg7oMbaFCN5yvJRqqWrkaGTYdJl1d8GrnxPpEug2yemgekLmBWheRX11Q
	 Bf6eWCPQacjkoUwRnmUaUjLtjcf3vb2ObE3yL5qSBmjMsAl/fXVF0MYHj4jWrMttsm
	 otnA2iCSJKCZJg72BPRgNJ90ExGIdr9XR9YxoC0iK7B4VqSdXKbqjmDOzu8SoJnpph
	 nhUOcOcQpP0q2dRJOMQX6Zwl7U//i01UO/XO2bSfRxPssOkqA7zhJ8/i19wTipvGHV
	 95UmFSJkDTfw1qxVhaxiTIsAHnIep/JW4vMqHmZNMs1sNBuSoxZGBd1+rFJ64tpQpA
	 yqMunwHkp/pIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE44EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450494277.30216.11269186987971052889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a66f257035de3aad34055f29b20c17e88f17095ff586c3ccaea49de05e020fa
Date: Tue, 30 Apr 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714504942
