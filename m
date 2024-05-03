Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5903014E2CB
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714727543; cv=none; b=kZzZ70rlTPALPc7Adx52gLcAl6fF6v9tMb/AJvRLQKdr5pCPVeTIRjjkBphAoActIL9E/O/7cX5Yb41975tsMj/ESH13B0v5pvkuM9Nj+o9UnU0fIj6C7zfJGX3iHlOSV3jstwKrp94xmPWZaByozQ1AnOyehMrCHqsCHYfsfnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714727543; c=relaxed/simple;
	bh=EoBgH2bSeY+ltQ69I+JnBhOHIh8R7BQqCJJfFOGKd0Q=;
	h=To:Subject:From:Message-Id:Date; b=gZdXBHTMDAS9htOzTToYRRT3Nu4T4e+9munAiLwDyV2HEhhMp/X68JT3ShD7y2vTUEYSxjDPlMeciu9Q49kSlsaj3YpvcEUSM05a4LxU6zLNXsrzpv9o60Pw1FMLAlSj3ZR96ysQ0h/nHtxujCtnDgLofiZdxZOenuXiFkBOX/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeMv0eL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeMv0eL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D758EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714727542;
	bh=EoBgH2bSeY+ltQ69I+JnBhOHIh8R7BQqCJJfFOGKd0Q=;
	h=To:Subject:From:Date:From;
	b=DeMv0eL2v0GC2F2Upg3Xryd846BXfJpzEC/efr6FPeHBPoAbBv8zE2EqOLG0BR51G
	 DfkKWzwtCFLi1vD5HZwKICD5hAkM1U16wwfll/M2ak0vBAe352Bes5OSk89AbaJjqC
	 VvIyltjePY3JWmtMscpqWNcKC+G2XoK+X5tQluxpWAfVDbjo0JvzgEjl840KMV5GuQ
	 YNdJGJNhWJesiioGOucqsbZOVMqCMrvnvnRrFOqhvlqFPQQNaZDYNR0HC0BajVVEb7
	 Ktpj2MCk5AfXrSH440e6UnoROU+6fyTbBY7VneCq6n/d3fTCYHaVJiuy41gd5S8nf6
	 Oe+mV9YAV2f+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C224BC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472754278.21836.12988142788257718221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea42127f179cae1f4e9f2100de34983db5d62f17a4c974616604d39488ee8ff
Date: Fri, 03 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714727542
