Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489139659E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779138634; cv=none; b=dJBQHLeyjuOtwO9m6hc6FfJOKDiTOadT7pxjxwEf+FbGkaSakGoRtid/peO15xxE2Z+DvUMsjoYwTRU5C4ELcbYS450A7ywdHdJaFJK3XKYPAfNM5t1cY092Y74xUcd+5txx2RnYiS5pMxqmeZ2yJHTX+QANPRTrHRnfk/7/cEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779138634; c=relaxed/simple;
	bh=nVQnhj66glIlWwpBzM0DXt/3q4c94efFcdLPj/YS+zc=;
	h=To:Subject:From:Message-Id:Date; b=ILpGLUaD+qNZ+/SasdkdyNWbszlTKIk3Y2l7DE02aS6yDm5G0Y4l0niAORK49vMnyJWcqaEIfklknywyuxvA9CoZaE1BWnnE8HlWkSu7QL9zRivYfz3txNvFD0ZKJ2fLxlOp5GbuDp+CU2DrKXAEBwSqGSMqzRc0uAzhw04jZq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocbUNZU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocbUNZU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C89C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779138633;
	bh=nVQnhj66glIlWwpBzM0DXt/3q4c94efFcdLPj/YS+zc=;
	h=To:Subject:From:Date:From;
	b=ocbUNZU0+QdYEeJiX1MahNMk6Z6YSXHpnqUZ+8KPNSuXf7fGP6zPGN9F+ngaDFCcQ
	 keXwqdNcNNDXhUCPP3DmBsyqDg5Jl6XbbHm1Piv1XSXWF9+9a3FVfAVHyXTBG+ebXX
	 A1j8oRlCA0ANXEfXfGMqYHz5TkCOshQxSMIWXPZSvUh3nF7kXGS1Ak1SnlN8xEhzxz
	 XLtAYu/sVyRBLDDuE4UhwgeID3Vhjsfujv9ZIX14Psj63aSF7/Xk1D8w8x7D51FrYL
	 OQ9z3KmKSq+O0ddcP2WRpdXTv8hl6tPEZqKZ+fGLHlse0hXEQ1z65eIqVgrBiVqqUh
	 zVowrs92CdWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3103CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913863369.26105.11872606963427238420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10521c8ba7b7e5f251fc92a57754a62a66801ccae7b18df8ae2feedef92c4f3c
Date: Mon, 18 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779138633
