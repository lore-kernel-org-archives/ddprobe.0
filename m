Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442F32248A5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779618754; cv=none; b=ZL6ks6Wqv+ySz8qUymRqxGbNoTSR/0NO8j4Wpk1LZK8egOpJG6DkJs6RPPSDKx/6E+PN+6iWcQq5s7sDyoHaqifI+yLuvXUW7mqnDe1fAEi6vdtn1+8B1OJNM/x8yTSjZOGwSWCPB7YWvkWUbD2d8kBpOP3uU3MfM9mScCc68+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779618754; c=relaxed/simple;
	bh=sCGeHOwfQZr7nygoAmiakpgK0iPtEc91CaeyY2b33EU=;
	h=To:Subject:From:Message-Id:Date; b=FJxcrEFegYXvdSPxM1TlscD9dyH/wBsdBgpjmESSPs1u9bn6XYL4m0HGHcREjVUrPzGbbI6snFnkO64SxAcMurUjaHSSz/7IypSnxsWmFLbMsrxAtRRWCL10wUvnMB4pselHPej1i3UbVGTpPNwqb2o2UQi9jBUWXik8+qCSpMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1OjLUqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1OjLUqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8C9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779618753;
	bh=sCGeHOwfQZr7nygoAmiakpgK0iPtEc91CaeyY2b33EU=;
	h=To:Subject:From:Date:From;
	b=N1OjLUqNHwfjC0pNvgg6rSnG+AOLYJJEOB9NXvWK4UPSjcgAlk4xVz+WjKw+l/y2O
	 i9zLZLiBFMkv5Bl30WMuWg5TR68nzO3zsrAG1J5xmc05wNZajeOIexu8kYXvsLLg0w
	 TibCarfqY6RXcAup+KX3psKz3d3XQDFW83batyu3XCYAbUB665szFciR8rfpjyy3bx
	 MOck9vF+RlDtT9J+Ah6Cb84+gd1rJx/d4xEP+Kuac1ymUzgbfvnR2eRD1PRlHFL/b2
	 5U+dt21/l7hFOMNZO7WuNcv86gLCVNPkTxy6cpenzOv5NB/+YqFkHi7JRJI0jSmTHu
	 zFhbk70rZvdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF746CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961875368.11002.5491097351580391199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad207697eccf4a9f2b49f1e716e031b784fb85cc1303048425551b1127c4d8a1
Date: Sun, 24 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779618753
