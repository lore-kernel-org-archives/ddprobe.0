Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A062B51A154
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790029234; cv=none; b=VOB74ReNywGM7KTUZDsDflw1ySrFDxaDXVWIBbWONeTB8OHxf0x4231V22OUn4j8q9u6wMBUwratnPUBf8ndYXeIrX+Y9+r41Ztp1bXHBhah4OQyx548J7hUhOjWRXBs9etT5JVyDVX2BgyorjMqhnAfz94a3uZ+mpXRG2JVh/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790029234; c=relaxed/simple;
	bh=zAikO5b4BhVTSYxLwbw1+93MwQtDGUAZe/7iX8+YsoQ=;
	h=To:Subject:From:Message-Id:Date; b=Bznih/uYb79VMd8p12VIEUR6xFsFrfd9AJj1WS0TpYR93QrHgihRuLomQ68xaAK+9J0J2xETd6WoAX8oEKk4nHSboFo3yI0teSfrFaZggSeJyCmh7Is7ki/ssgoMQncvztyRL5yyq+AVp3JhZaOtfOKrb/Biz81ArsSRHVoTSxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgzonBPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgzonBPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4B1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790029233;
	bh=zAikO5b4BhVTSYxLwbw1+93MwQtDGUAZe/7iX8+YsoQ=;
	h=To:Subject:From:Date:From;
	b=RgzonBPVuTnBGPR4tzhmQPWuTlwvXcMnSGdtt76tCIEDOsaJ0LM4wRiKwYeanr/q6
	 8felEAiu58Z00h5wc6PsZfqw4EuIEZKsk32m4HVkuJx2L0aC/v8nSeo0zhrvb3eYO/
	 Qz/T1iuOJyZ/hexUnBCJi7Z45c3a7/Zz5NGo+1UAAbxGIheIW0S2xybrOhGHovh8jP
	 R8qajWYPZs7Kz+tYYaLop4HKINGsSaNfsTKHGNTqxAfHSBiJ9VVXfaAU9cDEOpG3lZ
	 WKsQcrUhzRU30+z2rBd19d1w8YypmA2Y+kMkN1Bz8dQ3DlrOqPH7Wj4DZK/s0QDVc8
	 1E7hP2pbcwPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9566C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002923374.22145.15892411074031661710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad81e85fd4d98d2c280512e51b0729f7de2fa22f6781097fd3d351426488da61
Date: Mon, 21 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790029233
