Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C282566
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748297395; cv=none; b=sCF1N8hO2D3OcjlozvIXhtmiATZksctKI1kcuZTrxnplWi88kaDdFPT3mUaE82mtjeI9f5gAv+GYdl5cAD9ht8Jx6rNt6wjzywyTvQTZ0bLRVRhglh+WiogCelaOykeE0i1dYXU0Ev7R2Poie55uLYH+s37+bW9+HuF61ksEvsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748297395; c=relaxed/simple;
	bh=vgP0ET6Usvv1/pBPCoCa175+CbymUhx0aXapSV2ktaw=;
	h=To:Subject:From:Message-Id:Date; b=Q6oIWr/aFTRKMK4nHI5XtZW81d6r7GEsWKm7PyFCvkUw/UFq2JJmt84wZSvItD79Zo5ruiKlomjEScErKHnpZJMWy2S57GPDKsG07GY9CUITjJVwJ4I035lVEed43miwBkLXn1wbPAohgTxY4ezJiMYQY5hVnGJLqnLae1chd7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2c3U2V8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2c3U2V8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE43C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748297393;
	bh=vgP0ET6Usvv1/pBPCoCa175+CbymUhx0aXapSV2ktaw=;
	h=To:Subject:From:Date:From;
	b=C2c3U2V8jwEf6ubQK84iuGl/yzSZGOB3co5qoX/ZDjZ0T3enX6DX5K9ND42sdQVPK
	 zuQgghnxinHCMcwfLpVRGVy8nEBnO2DtguSbxQ+VwnkRuI5MGsHH0PkhfPDQlDvWP1
	 FMlqpYnUHhaB/q+okcrjDLCdxlNXA8a3FOpx5rm7O1mryL1uNgRxhZU/2Nwy7OPU6j
	 DN7T8RxnjeqSArV+pJcSMFfTxm5uLjD137BLbMP1Zo/b7NPqBH29Ii4h6uOm0ZCxoS
	 CDVwWs+qtC29UuLp2xOjLmpIAFNAkbOkbdsajA6t0LXovtN0zDPxYWYR+Fbq1w6jdQ
	 pbjy9biZT+vZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53AC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829739357.3981.13094900434028226575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6318028362e026acba7575a412ee01a5cf12d0ab130e14175ad64170131d66ce
Date: Mon, 26 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748297393
