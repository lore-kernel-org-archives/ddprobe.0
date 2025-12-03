Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0053328F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764777173; cv=none; b=fGsYleCfq8ejGDtPCn60NCfDq2ueQ4J0se2vvbA8fwTSUmi6gY8SOXtiGGachr7GYEKwXckdqbhknBcplNVGAHP3GlI3bHgHOY7Hl2ska01Hijg/iCJ33Nz1DZyaKDm3tndXk526V97bnuZWIc+lyE833gwz6JolWdqi0PYgfpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764777173; c=relaxed/simple;
	bh=WXVw90a8jZ2qm7DF/e2WBwOpi2de0qDUrwAV10tKvJ4=;
	h=To:Subject:From:Message-Id:Date; b=coFLCx9H3eBxNaUhnN77Qd9qnK8h1uq47J2zmkvzqO0aRshVqKu6CSRjOqQgeOeBKDkI2fW0/Jl4lgRtOJeF8IxIW/M5nP7+MFM2TZfC2v8PRbmXNKKxQViiRBFlqtkl8i6gHt7E8GVTWj6mHEeBVrI2QsD7fGKjEcgYa6IuSos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf9tzfx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf9tzfx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 990BEC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764777173;
	bh=WXVw90a8jZ2qm7DF/e2WBwOpi2de0qDUrwAV10tKvJ4=;
	h=To:Subject:From:Date:From;
	b=lf9tzfx9uylEbxkyV0DTCj1ZSfo2PbJC1PaYZ5qIY1z9no0ncgU+BNDHozkLgcVSi
	 W0dB/Y1rQeeomdYW4ZP8z2lYk568wyryrjAy5LNlkZl33Qprs2aYlCRTHRoGW2CZ2p
	 c3vfqCt9bL4VO3U5i50yfRBVoG6bwiKY9nNx29V/+HVuFk5RzS0bXMer2D2DAypdeC
	 c5SQPieNQ8sHF6DJNGE6tDC4+BnwSlcfRpBjNfGu0s8SNNynqGGAbW73+j4XQLRAAA
	 BqIU7WZ3F3nACPZFwvXxQEuPIbxZmIqe94cPBoQwYfLjYaCZ/XD6FAWPiRZUODbppM
	 QrTMTszWFENTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E6D15DA1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477717358.22986.3156886557070596061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19fb7bc3f1c86a185396727d1a11960b9e1a65ed79806e07e3979c6cee3914d
Date: Wed, 03 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764777173
