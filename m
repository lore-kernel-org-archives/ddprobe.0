Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB1A156F45
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787707836; cv=none; b=C3QFX/870lQkDFs+i7+3Nl6Nx1r0rpxuGerSFQ2bNmwQiRjhD3kSkhOwC0q1CeY3lgkFCSVTrPmyJ0T7V069yRFjxrWyhDS2wIyQRVI5SeyWKp1pr6mRCExzwNbVSyJhIEZ1d1j9LHdHFfWMa14UyN3HIahEY5Xw5hxibsxbNWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787707836; c=relaxed/simple;
	bh=3QhCAQDaiOIZtopHwq5dxvrMXfAMbLwhv+R3ee7lO9I=;
	h=To:Subject:From:Message-Id:Date; b=okTBamsxK1fmpxH+3m50ujw+zxVY4vWF4FNpqA4Ri6gBgP0Cm4XcbaolYC3xol1wcVsXFH4oYm2He9tqUvXPhHRgU6+ZFBFOWyvpe77iVaQJAXiRO0QhSoYZK5TBtd1f1uDSQQAvYnTllPOeJl1ndab84qKVHymGw8uwuwFJBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvUjsafW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvUjsafW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EF1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787707833;
	bh=3QhCAQDaiOIZtopHwq5dxvrMXfAMbLwhv+R3ee7lO9I=;
	h=To:Subject:From:Date:From;
	b=VvUjsafWXJJmbbF0o5V5U0UbDO68Qspe8V2VEohZ+xR9kObjq5tPublQjDDdaFIPH
	 PbN69Hdk/1tlIYlVLylUIT1q8xoaLomP1j9dO3FonobBEFLstWFAidcr6CJhvo292i
	 O59D3ifml1XBO+/Ws4lVK1oDoUucffrRX/iEXXOzO575x9zVFpEgvCyB9V7aiayfTH
	 XU698mWk/plARcgocdYLB9SCtziIk8e4Lr2Z3eY5crqTlEmLNE8Rewwz84q1hMi1xh
	 reg+/ci4dxkQmaM3welunb8sfJSQ3vYLwouG+0PqwEs7XZCtkb4T6GB+5pnDIyjlVZ
	 iPXzSckbhBjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B046AC61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770783369.6407.3982015938317806680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a1f8bd8a182fce6b03de52203d68d65637d46b4297606c2b2276b622068f05
Date: Wed, 26 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787707833
