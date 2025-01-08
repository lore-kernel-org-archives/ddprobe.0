Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247FF1A0739
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736319954; cv=none; b=eGoT5xcj4NxiqYhtrAvWDroLLFcRp8zt9QwoTyFlntefAyKrChKDT4VVv5agQssMhlPBOjbmH2yq6EXA1vnlFbSypxlPyWJV9m+vJwCTobjqv/+kltg2/EeXwz6RoZvwGAqcgc8nbyohU3+CXB4zHOwQkMsszNgsaqYS4MMwLik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736319954; c=relaxed/simple;
	bh=/4PREhPFJjAJYwc/5rLzxyQqkHv89/oyw3lXd8HtIzM=;
	h=To:Subject:From:Message-Id:Date; b=UBejtc1ua/70tzXxyX2tQpe+87MaRj6zWTpNM081d9qX4KXj/8kmPb98Ch89MwELPRXGNhQg5v26NEeUkmrIzUMJ1VvZnfIjY4k4qbldu1keuPI0N+hO0o28Ema47l2lfEqwWmHa3VAq5Ga6KJmnvnULQDkf8Spj6Xa2abK0s1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1bk0DFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1bk0DFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB958C4CEE1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736319953;
	bh=/4PREhPFJjAJYwc/5rLzxyQqkHv89/oyw3lXd8HtIzM=;
	h=To:Subject:From:Date:From;
	b=s1bk0DFbzMFNeb5KthcNPcVBWlnHt8cky9zgXPQwoeTB1gEmRmqXU3jzAumv3VvrR
	 OgEbCzWzFnftmoqy91iMoM7TI3gRgwhSzSQszCkcCGUkW4AOPVCNZ5KL5u5S962HoU
	 HJjNdX62wwqsYESKiuYM8/2qfQC0fLwrGFvTZsfPuNEXtdo/IEskIjffc3FDt1Pn43
	 bWTx2F+BH4hZ27+1BzWJyZo1J8cOviuf/h/qSkHZjQVoroHaXiG5BYtjnix/iaM3Fn
	 lzIKdrVxYUOAXE5SXtfG29HhxIMf/XyiQacV00ghiHsOWvHBZETKV8hbeYJXDrB7Xb
	 adz4GeN12+DQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98679E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631995361.17864.4634965367791240640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816e01d164a8af3b6b19db983a4012a131855a57f549ea94c86f103c38390b73
Date: Wed, 08 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736319953
