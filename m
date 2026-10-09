Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5840E37EFF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791572434; cv=none; b=trBwlOhdO3tnco+RfqG97Bonf49Ys+SKPdTTfPvtOI/r/gGxrdy9DYSBI9glfryRyfVAHYI6lifCKpnWDSSX6Tosg+BQPNHDnjR4N06xDUIExHyPngPvMr1pZcQWAen0v8lV2ZhTdu7S4AoBNzaMWvWGFgrEVlvnqYK90ZmO1XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791572434; c=relaxed/simple;
	bh=ZuTrgF6ATgzEJbIwfoFQyzjJoxqEwamWbRohhwjs6kA=;
	h=To:Subject:From:Message-Id:Date; b=HFu1MXGiDTUu9Yfotr5szFmvzBvRBdAUfmaN2kIMQ4HA3zXmvYqZ+yTg3xSz/RPeylQWz+UjarMaX+MQSyosgr+vZnx4ZTmA4OErNVUebO7bvrUSCm+uUET8+WFIF6mI845cIn/bq+mIg/AiSJtOa1TZDV+YyI3w4X3ivk8kxKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVGymeI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVGymeI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6A3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791572433;
	bh=ZuTrgF6ATgzEJbIwfoFQyzjJoxqEwamWbRohhwjs6kA=;
	h=To:Subject:From:Date:From;
	b=WVGymeI+xNX3zeTViUacP5AZvyvenhAACI05Q48kwbsTW6ckDyxmcTmCab5BfObVE
	 uS/17PCojqF/yerHMdcSBZxdh7DmLv5LBpIoy+Y2czphjphNLJH96HF4Cq+q0ZH4ga
	 isbeYDPzZ4qPcy7wEcBkN00zqyWhGX3klPh9gTlzBpPYJp8I+FBkrwFUt2IrSSbBfh
	 HwY7B0xTtM1FVPcjxOQYWkaaWAWbuqz3mV45slj4h+tHjBaNzwZAnLNuAj4XRqly26
	 a8xY3n7jGSRdsIB0bASR4AsFnMhckAsJbc1eV8g2mpRgpYccUqQm7cF/V4ApuS1V2+
	 iRcRNi5JVsHSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9968CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157243368.3396.14306323800607962512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab52b2c5c8ecafdac61c8a5c6aeaf041e62e6439655336dd54ef58798c516e0
Date: Fri, 09 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791572433
