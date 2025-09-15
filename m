Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E96C2FDC51
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933994; cv=none; b=Y1Fagpn82E08doHePTp0XZV+7BATWIObQgHDSBJ8HezjG1riXIJ6NPn3SmeSLS9JjaQ1CNiNzrXuZqVBLEnpBUgu5e8dMpiBEnu4UHCz0o1UdqMfVhNBiocKFBCt2L33Bo2mv1WlBpI710AoRgbINiF/I9ixFpFEGlvyjL/IFls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933994; c=relaxed/simple;
	bh=M/tNnwBc2Xloa4VZfOE1AeTdUP6rrvB2XyW3RdlD8ZQ=;
	h=To:Subject:From:Message-Id:Date; b=tTk6oBue3VUf01Rms+js+ZEgswK+trzobdEVbsO4SFog2Y18dMqtIC6/kKpvsCPPjmscGd/uwymO1GYHl1QQzAYk0Uy446K5cgIzLpyixjZK990YtmhGbjG2mv5RpXr/mkB75QuygB+xS4QU77f+/1do6+6c8Dx9gy0RQ1OyEz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJQOX2VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJQOX2VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D662C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757933993;
	bh=M/tNnwBc2Xloa4VZfOE1AeTdUP6rrvB2XyW3RdlD8ZQ=;
	h=To:Subject:From:Date:From;
	b=tJQOX2VSJLlM8TwLehih9ODQnpUSAepGXy8we9ZIup8tz9JITweIdz00Rwdo+OgEU
	 Cc4Xf0vLVvAZp7YjUNf2c3uUS6P12JXlBQHwMQaJK0y0UwWy7K+TCMTI6bL46CLiVc
	 A9XJIa42Ny+9+IZRcecaDg2rY4FB5gKHGS3AxZYzpIWV/x10329mxiWnqcps9Etcf1
	 7Qkg64TJ0tk4rb2oTozCQqbTKpi4hVWL2+P7WGWJOdFpd7JTyYcMFYtS/B1Yyn5zwz
	 WKLjNLUAUHYvwVVuW7rFGVqZxZg6VvsvlzzApNg1yjVDuK7UsCYCXL+NCOfYJ78qH4
	 DBSIxJVRHqngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793399357.28090.8792028779959792771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c950621de185d92bce47f1dd8b99f52ad94fe549928797f09ac423183917ff2
Date: Mon, 15 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757933993
