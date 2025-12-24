Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BFB78F20
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567634; cv=none; b=WXqpyodgHNblAZmLr82tT4q5NY1U3STWlNHqG6pCnprSi4WbsvZAY1M4sylYttDmUDHh9/6X6PDLQ9YLs0o67E8wZRL3KqSTYWXRu61lGOoTfpFP5lzySu1DEC2BfacR6J3PD0hRoruBi1C7COgWTaqbv8MI/MwGWsF2iwPkZcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567634; c=relaxed/simple;
	bh=2wGBFRCvisZeIIkIObskNxptjxXTYomP5b2/f4bW+iA=;
	h=To:Subject:From:Message-Id:Date; b=BU8LihfRVIbSjVj/iJEWpS2bOIz8NW1hEfM31NZRNvAy3nSoB+5vNi2ztCiIPPQioDXPIhC/Ba6b6XedYfHEs3S/fSrxyQJYIb2g0mY2l8A3+uRBbPUHUI8vjSisRPsnu0/pz/RUmMDfKncV0iMe/93XhZGTDCvAYbIyRU1PQSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0op5oBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0op5oBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07ADC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766567633;
	bh=2wGBFRCvisZeIIkIObskNxptjxXTYomP5b2/f4bW+iA=;
	h=To:Subject:From:Date:From;
	b=J0op5oBb56VAxle2a02F4545ZHy0KJhaPwQQQcazzxZvrV+dIYUuQqZxD0YS4pqlL
	 Tg5fCrLuh+FEsZRDwYVdFkZYB6s12P3P2OKiVPO6sW+AI9yl4z7KfrWgol7RjapEmW
	 FK8e9CbdAMoLIdOtp0v+Pml6m5Rs7CFnv7DzsctFoppVOkBxcz+rFOeEq426brxMtC
	 4IOmseYAtSLJq3j/2n8vBA8cwVM6vN0HtOdZ2NQrD2yQj9ytQU/ytPFevdKPW67dji
	 vV+xGmVZ13N7j/7dNA7d627lfB1xkpVYz2dIjNTbNhv9txJWlC/5722VVWxPMIvvjX
	 3WZqtQXltTO6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D65E7542B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656763358.18133.8647402145377516871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab06acf0850bf72e3f8cf18c955d28a5514a81479f1314a93ced5cbc34c9470b
Date: Wed, 24 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766567633
