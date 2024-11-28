Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FC31E4BE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732804554; cv=none; b=KE0a0UVBzR0FTEKqdZ+x0SmAd5R1QtXWHQqWCU+4xa4quHJbadVS2BEB4qnPa/1yHwYtrlqzpB/xN9FCxVB269VM9xQpxHhu9yjawMXPUN69fmw4n/dRsmCxPBMLYwnVaxlHcV9/EXK0rIhR17w+6lXQXdpL58xc/e2OqquogSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732804554; c=relaxed/simple;
	bh=lmJFGYeSv0DxTELxTFPAS3JxQPI8y1pea+0hEGLklz4=;
	h=To:Subject:From:Message-Id:Date; b=iBvm7/skj7j31aw2BSeB7KAPpbclO2LVdTao1WzlJ/djHFUbjx/PoFdXeoDs1tqTwdyD5Nc8GICddQw/t4ccBWaPJoDbt0D5bxknxTDDaR5tKMCxXNcv4zz7O1FihiWdt5A+fZ9w819ThZ6roF7WzerI/ajkbBDdqBvwEoy0HyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6B9/4cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6B9/4cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBDAC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732804553;
	bh=lmJFGYeSv0DxTELxTFPAS3JxQPI8y1pea+0hEGLklz4=;
	h=To:Subject:From:Date:From;
	b=f6B9/4cvL2J1+T5bLIAw+WnYKqOUvaOVNF8+MyZSXNKkSI8nXLlFCoXIvODotRZpU
	 VQ6/13L/Q2gtxxyc5tA9DYJ02nC6368PupKHl76+Faoo4mFBcFQwesLcQ+11Zv6xmm
	 FVllvYKDUQReSS/tRlCVF1Xm7A4s5Nwe590xGd841rMVipUrjKD0P8I4FM5ukRS76g
	 DKr2B1K9B6jWVa7sj1bgIGLapfnr0dsnK1/hqG0mtOIqqKMymwYVnBcr3wBovDU6nk
	 47hWEtIfvz2QJrZcwg5HQDobYG6z1FMduZiHRZygfpFVLBktsPGbHHlJuFGTv3wFdY
	 PQ/xnpFl0fydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A155AD69113
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280455363.15541.893780783994234389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83a69302150a8957422faf333130cd2ddec17c90dc5376f36f71398590d1198
Date: Thu, 28 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732804553
