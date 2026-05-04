Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506A2F690F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777880254; cv=none; b=ewtAx7Rv8sBKYkomBjRC8OTNGri2rE1XxLHI/Rw/bMP7Dot/fyda6jI499x7snx/6pLYz3z9bKQUoNVEjebdYlYeerjuaCWJRGvVyKYXSVWFurvGUBe013HLlEKRcemk55lG2dB6YbXDSLkoNa/klv6VknX+IKlm3Zc01LhQC4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777880254; c=relaxed/simple;
	bh=sMKBtsTuTz2mTrmhVA+gCPx2/7xjZN6kP4Ev0zPmshc=;
	h=To:Subject:From:Message-Id:Date; b=Q3XykMviqu6VE3sq8YdB5Ijx1dIzPQY14J/4OWPovMKAhTdBmPpClEX16GBX8zoZ5Vt/vTR2+UXXtiOKP0S8fgtv/mCJV0lYoMinM2bhMTRCYNzfiJfhnzcUcIDuadGfLEQyUyvhrd7e7+FGoh1Yh8vLeDOtD1STxxfHq4MXR2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJU50Lhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJU50Lhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67FFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777880253;
	bh=sMKBtsTuTz2mTrmhVA+gCPx2/7xjZN6kP4Ev0zPmshc=;
	h=To:Subject:From:Date:From;
	b=XJU50LhjtNerKT7pYpeSXqq3UGnxZoCZaDk0SRGIJfBHIlz4gZip1XDoncDuTqEjY
	 p8+/KjPxc6j4cV7dq0TSfHNz1zAL4TsC7bigWKsDoNBLzoKod/WT/b3bjZpnvMk7z/
	 O85npo2OB5ZLlXmY1xH3PqJSJkXUuECZvsftIuVdUgkwOv61m/gR2dz5m8FYmz+Rqj
	 W9zoatwAR1395EmfoX0KV6fuPhMse6YM3nuv0UZrGm+kh2zxRI6/VXfw3z15CG7991
	 3UXWSDOyaTEumnq+H9pI69b3H9vsT5/fs6vKTXolUkaqJ/apyzaaUHuf8jCp746Xxm
	 NDMbLGpbTe75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A988ECD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788025368.7267.1556782091979397800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8209c0825cbd47fd7c678e946f25864a5ca1566e6adc060a462e141c3326d62
Date: Mon, 04 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777880253
