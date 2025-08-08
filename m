Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265934A11
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754641194; cv=none; b=D4WdyhamKzRYO25TaAfW6imY+pFzhPHUV8C7x2kMD7pHyeGSaHu1zd1kBaAtAGhkfBUXphalvXCMswO+U5+O99x5Q+MRTcpERwidrWhm5EPBxZ/oCbKfnz0WR0XhndtNrNHoO4qdVjtwjcZVnGsT5zWFLANdKaEFB3s/3z+LJQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754641194; c=relaxed/simple;
	bh=TrwBxrW0YbR3tjZbdXy/bNAo1xXEoeCEgVK647BcSi8=;
	h=To:Subject:From:Message-Id:Date; b=m1pDr0muCngaTCFF53z+ly+mm5x8oHy2p+OU4J9G22W0rAhQ1tWy3eLdBMNDLMbNpDMb7b5shKVLmVAFVJyTJ6JkwZSfXFMUtuxIDS9QRA8SPk9fcg4yWH1edhG3zUOafMMOckM2z0mSRLgo9p1LHfeS49btifXuod+eqRhRo2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjLilORO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjLilORO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754641193;
	bh=TrwBxrW0YbR3tjZbdXy/bNAo1xXEoeCEgVK647BcSi8=;
	h=To:Subject:From:Date:From;
	b=DjLilOROV+HbuoM6TaGWNrcuzuNsC3D68lvmYdMLFuKuDYPCXprPuHpgLbZCjKEYM
	 UnBVFfXxLMoKz6mdfkNv4qHPDgB1LDixNzrq1uQ/NXsUd3WpTywViqVAwDrHZBjt6x
	 sAz+i/dom2yOu/4ie53UJp++MBvP9MYEaxPFYXgpymO3+jdbFAx1d+Q0WYo/FGswo7
	 DZSBQHY80yBkLVBswumKghLuAwZJTJt6z08ObWR0HYEOuulezvqSwsxtIacsLvjqZ1
	 jNBfqnnkTKivLcl3bsPXRoaPlWFf1OMVMvkI7SnfK8nsJQzhOVSYoVzB0ulYpjVuzb
	 9V1g5ztd8muzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F131C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464119357.30716.7468446911297297377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c7236c5bad00675b88fbe0960d00f34b4d16a7abd25aafa9ce17df4077e866
Date: Fri, 08 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754641193
