Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9F1F2380
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785736234; cv=none; b=B1GTcunzXn+Yvbm1wVMRtvRiitRISxIsY1C9RNsfisapXS5m+ZL5xhHuaqToAlBAfrsCrQM3qLxDSZUBVIZeFHDBWRTl3G1T0mKAy/YjleuAW2CTuyJB/QVSNXr2OHEa8aiWDe1u66zs/JOiHBLJ91D2kxUE0sGily8BcYcX/fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785736234; c=relaxed/simple;
	bh=DCgKmAYxTTbJ3wuzhsIE5z086ap+KMu2d5Abr+WWfKk=;
	h=To:Subject:From:Message-Id:Date; b=cmxqUMiCDNkEjrOJrncJV8N6i56wccVzFQ4D7NzQ6NedTJuUQEnIwjd1/cPzLfh4rAebNS1eIm7cSiUpu//hpNWwE0OJS4fnhKwrUrbraob3sy9vunhzJQMWJdFkKzG4CYM7JSgl75ObNMUDqSGcJyf9KLzvwF8kfV+3mJrw5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzcE67RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzcE67RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35C1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785736233;
	bh=DCgKmAYxTTbJ3wuzhsIE5z086ap+KMu2d5Abr+WWfKk=;
	h=To:Subject:From:Date:From;
	b=VzcE67RIHw4v2C4zxjBKO5tbRAAKnXBnzdXMm8/HZFHu/A/ca2q98gbAQS8hUmLAc
	 POcRgMgmYX6SSBd5OEMFOwZ5IYavFFt1HxUCa5uRZzoacfJnASkmLxR4YYqyUjS/4m
	 yWqMDYxEIb7q3Pvqe3kH/j2YEMB10W9fN96jiGAof6tb8H7M/pxH0bFwZWyxAtU+6o
	 JlAIFz1Y9L/nfIDz+QLQ8pqJCnRRtJuX0m6dCPZt7+vXYzF/VpYl7LN//86X0LIe2a
	 pm9er3M5SJCMXYXowBE38HBJJMf4JWMuWDwARxJX1M3oWNLEJvGsykoSSlL+hsgOyf
	 GGR/te4mp5kAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE898C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573623369.27713.3139101697757756035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3c9724d3efca381d2c4584971526daa836ef3cbf8dd739cdb79ca26ac264a0
Date: Mon, 03 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785736233
