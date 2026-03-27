Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9794146A66
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774605294; cv=none; b=A1rDc3tmoj3s2aWQYO6rZxtgOouHkEIURd7l/H43hMpUnicAdGi4r9yTTPOSIC8djistmWC1a1+/ssul6zSHRE2P2QPqddWXu1lxxLbJzkw2r0f8MQNoaC9Ic57R7crlZfgJFYHzGa3DnJBURm6Zx3p304C429IOBj3by1dDalU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774605294; c=relaxed/simple;
	bh=orkASyZampZ91Tp+/NJx6NsN1ZiFqpfWDRUKolUaS+w=;
	h=To:Subject:From:Message-Id:Date; b=dtWrPWJIBkgETomsDxZtrO4RUeW1z5QtEMbXCsl1cG9BGghmpzes0i2fFQCF5/yrwR6jkWNsqNA7YVmVznSLeaWQevEDeZylTWxJh+ZsdgroexYbOcSLt/Jf0OZB59gRSfW4Lvj7zFzVxI5QaSZ8MpcyhSFHP8pAmWaybbphEHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/ABlftz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/ABlftz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD4C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774605293;
	bh=orkASyZampZ91Tp+/NJx6NsN1ZiFqpfWDRUKolUaS+w=;
	h=To:Subject:From:Date:From;
	b=K/ABlftzKvy8M3fMb6gcK+qfubDz5FVUeNzF4TWX97TVMCqiCpmWBqrz3/Sy/W6Ri
	 JASkWMIeEgjPwgLR3cSLpo6S5bN4CF9Vhu8jBnjCtbCdSGuIWU6mg+/2VAgBXOiiE8
	 V9QHZgYHkjy5vH840X3N6cslpTXLAIO43+l96Uf2xn2JMfpW0+/1rE2LR1jNDCObR4
	 4pDtWQ6SV52wKufTzo6Pr2dprqKWyaiReW7oDezoWmXksArzGGiw6VahhL6CAmskT0
	 lB5wilGgisL7yhvO+OJZ2UaBl4Zo/sv4BVfh+drfazW9swqg/LGJq4vs2kbfDVrw3D
	 ZVlm6u3xRyykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187C10ED64D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460529358.9453.7208355233455853728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46993ae283f107d48687d94ee6c4841af5115018b3cc2df6028c0518f15d9675
Date: Fri, 27 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774605293
