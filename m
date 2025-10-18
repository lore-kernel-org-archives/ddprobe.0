Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EE20F067
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760827194; cv=none; b=RR6makC4orB1kaiGwTQHsgp9w1nEEhOX03Hbtep3xswq3a8uxkiliv8Ma7so6HLhK9VCaNSXjAd2yPL1UuDYUKaxr+JR5ajdJ7A50hBQGBtqRuC+EmBIsa6WZOuMG3O28tfszYHQ/lI83qVKRnSRrXEtu6SHEz4pEMotL0Ut8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760827194; c=relaxed/simple;
	bh=X8pUV8vv/UTJbtMw5CNCU74/M7VGAAEqb7qTsnuWxx0=;
	h=To:Subject:From:Message-Id:Date; b=qWtMgJAMEulYtvTALbADR2SOQtPVQO+wMm0OLTa9fd4RF6arAfBaRljesOlnUkUzdzWdYpAG8hHRa1EDrckEWqE9EMSgxsbzUHcE23ckyUaKHn/ckJp5x/gH9XdJwVqai/kFMQu+/m36Un9CS66Tol8y+a1tsh+hhE2q6+KjXY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9gkah4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9gkah4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F28C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760827193;
	bh=X8pUV8vv/UTJbtMw5CNCU74/M7VGAAEqb7qTsnuWxx0=;
	h=To:Subject:From:Date:From;
	b=D9gkah4tl8z+DbUYGbQGyLLGMTNAnnWvWnKwdz871RhaxzRWHUIeJR2ayK3sdA3A4
	 VXIDro0fW8qwyBYqY83JuAiToMJoUk6oFtpW5EOlRc3Q01bttq+rXgsi5HKccnpxxM
	 rRJJsiRYqUIzPNpR0iad7zKH4ScIw+LoTSgt+1Wlql77WbCOtsSp8mis4jmehObHC7
	 /wVl0iBM2MESxzagBVW5blb518xqeszjzGzYPVrIAcSXk3zxWO/9DHq/5NIf09j6w5
	 al0JTe7jrDq9Lh+vEp+ubSXidBZLTFg5XWX9dVpfyuQTzSxfPoPRWsEVP35a43w7pa
	 BHjdP1PJi9C6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082719357.25918.9315802082454840870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fba2c9e3a3db628787610615d56960fdae9cfbabafbf74fe0661e38e3b3d89
Date: Sat, 18 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760827193
