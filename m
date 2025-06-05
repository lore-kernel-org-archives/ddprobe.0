Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858123741
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749164995; cv=none; b=r6NNEuxnSGdUQ3zKXN+0m/aso1tKwliR0wvdR1kdleYaRHm5j1z0i5pET2vG3DdjcVpZAxB9r6kN2manRYLGC2EBnFqzkBxjbywoNzhK07CdSQbglSWYJaUBib2mLcwRRU8yIkf3UcgMnBbUyClZKF84CxSfjG8oLCEgaZrAi1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749164995; c=relaxed/simple;
	bh=Hxwd9jWEasu/j0deyxDJVaQP7Y45U6arjaiAIRHSMVg=;
	h=To:Subject:From:Message-Id:Date; b=fUSZznGTLKAS+6B09xqbHPhNdGp8iXbcn2QE6tnZO5ToYf32T9LZergMbc/u8YKz+tJWTuoxgNHC7qbWrTt1GxNCVR/0mhJbulLlvXvEONpg3BKkoeE6QGVkaTzoFC700qe6k2isJeOMqqaRXn8spbCPWxBRGCAYaX+tp8NQc8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uoyj+mxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uoyj+mxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A49C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749164993;
	bh=Hxwd9jWEasu/j0deyxDJVaQP7Y45U6arjaiAIRHSMVg=;
	h=To:Subject:From:Date:From;
	b=Uoyj+mxloBNcwZz5ujo2h5v2s2rBqF7ems8SSdJqq5AS2c4MzIKs2OpVJCyxdTdcn
	 U+aCqioNgU4imtWOvOBNrSXDe6UBYMDGTQ/buC8J/MM6TjdciH7XtkfHZ3Y3XOmfPN
	 z6ecX73nLA0FZF+jOhKTU/X0xOgVk0EP2IZJ3fy80dNgO/iO6L6rsMSbO/PCgErhzf
	 QEXDFjLxmmSna0GkMnChziywLNOlplkop8gggq4jDkN0/JLZZkjQVoPT0yFA4asR+m
	 YiPLT1PNFxlUru++x+xxwH/YZVUsGfalYpnU0Ao6ciRSnP8mnhw26reIZRaRYyH9Bt
	 YaXz1o0wt7t+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAFC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916499357.5217.10169919829633277465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a91ee928431a0916fc587eafcc030191ace532f6dbf3995b3a00ec3533115be
Date: Thu, 05 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749164993
