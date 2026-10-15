Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF9D499F15
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792055434; cv=none; b=EOqSBz2YUHoCGX06DZtncoyY55dcB2FS5tQ1tO3E2FZ3cXuRLmRzwT+ciGzIS90TG0U3zETHihcSuBQAzFLQTy9PEnB1B0OS2rJt7DsVTdSesiBYGtW4MQzWRHqhrmNkmPakoRUsV2ILNwwdDV3FRgMZ1nAJA0elxkZoiNQ1ASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792055434; c=relaxed/simple;
	bh=FeO6NyyZavBr9xAVLfMzOKsEKlGl09u9l8/o+eysSJM=;
	h=To:Subject:From:Message-Id:Date; b=pQxixKRGf7OivLCJ21HPZREus96XlttPpk36jUzugkPHgS1FwbCN50n+mETWxYUXeSTMGWcaqeNYKt/MeDGrfkoSNTTUuoAFbz+raIVCf7B3uenNVWmUatL1wCaiSYThLXXrSGiTVaRDF7TURoI7pOuy6O3FlRcb4BBhV/skA1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRcQMzKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRcQMzKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE69C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792055433;
	bh=FeO6NyyZavBr9xAVLfMzOKsEKlGl09u9l8/o+eysSJM=;
	h=To:Subject:From:Date:From;
	b=XRcQMzKEDj1Ng+EUE+/5cohHwTXD3GkoBJhdBIalrjhWkbX5h+Y2YNe3SoMc3gaeP
	 6w5tPwNCYYTM6qJoS7J9+6HlE1pEtFg/RWZ3b55ovImak4rw9P2FFYVWEjTj07ejN+
	 OXbUVUnALA10W54N30A3DtCBVOSLC5ugYOgQBXkaVSwJ1xU+lc+ToOSmeWOTVLGLwy
	 kN3YicUXwlywY7AG0Rfzvl0JtyTPtRgDqeDygkR+NX/l+ZhZVHnr8Y4P0DGgaXTiok
	 a0KngCxZf488AqKwl+ZuS675WTeeqzk5Q44dptRUM3wPoIHT+N5zUSr+/tL6ZR1ZCx
	 eTYFnNo9M0XjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA0CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205543368.4260.3736012778014969684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b447896305143ad77f1dd61ed4b2e006112e9339ee4ab2e217d725b92b43cb
Date: Thu, 15 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792055433
