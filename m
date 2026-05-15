Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EED13FDBF1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778868034; cv=none; b=UcIrXkG8hqRxisblHA9xU1mMvaK6QL5TEdTJE131bSL7bVhqfYLtzIyrwCDG+poDmPCO3Z08FALEKquRarXEtUcH73OaI0vscWRgZuu3Zd+1xjVmbRN+c1m6f2wy9WSVWzkdZlXGij0P0hgcVD+8yAEZ+nEEmIjRC/SrSEyyMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778868034; c=relaxed/simple;
	bh=qoHr0avNWjAi8IpouUUYetAhpn3RreuKxtqlJ+Keang=;
	h=To:Subject:From:Message-Id:Date; b=qo1EdV+HqHqf45iI/oWJ20F3S2zRiU7fAx0oldwD52t0+CSAuFNCMGNj3QR8Hu8xZMbmpDI9c4xpuxG/o+zEwnE3AbnisECX0KAPwVYX7rBxC8f7w91QGSwfJx+Thsg9J/KLUopK6/+AsTCRFwPqWxZk+nKeQd6UKIZ1WkyDRC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVE8wHSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVE8wHSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB090C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778868033;
	bh=qoHr0avNWjAi8IpouUUYetAhpn3RreuKxtqlJ+Keang=;
	h=To:Subject:From:Date:From;
	b=fVE8wHSb8In7S0/dD8iwDbd7IBUX1r20bPG91lYSyPD6WBExMJqtsGn8f/x43H5lZ
	 n8ppBqw5KmIL0jVVKPaW414chCY8k5A1GG0QbMt6Ko74tp4xcnUlRDFt2cG/l/DGO2
	 7QhgK1HyNIB4KJbRJ4r6aOA4qPu7KlUFspWKCKV+OYBvRgutE1ExYQbPECT0yFNIee
	 KWCfcvfvvv0BR8t4FPdtpQrXY7B/UKI+GKfITAA9KVcLLrT/91evspmB5AJFwCcOoG
	 PBFp2scAZnQtcwAfvKSR9wcDPIsd3+qcVwoxT25bqWTdmRH0DIhk2s3GN6RGgYQOl0
	 gUnPyJp6HtRgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2ECD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886803369.15241.17667243432309294991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8526cf61e343866f4145df4375d5b6f8ac04f4d5d18e9a528d0d99717d3340d
Date: Fri, 15 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778868033
