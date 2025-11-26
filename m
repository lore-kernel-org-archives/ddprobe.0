Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69171D6187
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764130973; cv=none; b=S3LSSC11Rx27X4wDfunM5ZnjKQwSGXHnXI5ZflMn0DjBqBHTjjq3PTQcQ9x2BKRHTpC7aeU1jPdheUoTYJSjXiK9cHBJj85zD51TyzUOROOTtvtVf5bSxxPeXDL2WXQPgZvN9oEX8grny46hgjzzg0XUJtl6djJjwfpIt2W86Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764130973; c=relaxed/simple;
	bh=JPMKhqq8LVLi5YOPI1zYVdFqDx0Ksqc2xxm8rCMPZo4=;
	h=To:Subject:From:Message-Id:Date; b=BL4yaDfDz5jqIXiOLF+jFuTauOx5hN287m6ruMFZ1vEOjhT01GozsmiYYY+qNTgl7VUAKWHlGl4Y1i/K3yE+EpCtttVLbBgdE9eUT1ZiByIxxjDWTMtTT9fHlGa04VO8eeo8+nsO9SyJ82LMdwttgMtx2bE4IiM6gEpM9KSTmCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l83A4701; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l83A4701"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F5C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764130973;
	bh=JPMKhqq8LVLi5YOPI1zYVdFqDx0Ksqc2xxm8rCMPZo4=;
	h=To:Subject:From:Date:From;
	b=l83A4701tMsgRWYfAOtDrZG/Rtw175CqI90a16SFSOwz4WVkVWn0juY4if+sSck+Z
	 qgUQTYmYdPWkzSmunQg4J2FZZLr3V8LPTQGnPbPctgrVqAnxBylqeOvDXJf8eGAukz
	 5LseWNsJGXzloiFNRkbB6WIBa2uYPFJSTmal18xVEALKs7zcXtJz7NWh+Gjrbe6eUi
	 wqfBVeilRV+J0wJVq0+Ip7nH9L5Sh4Kt+m4E2yRUAPhMknP+3Lf5mPGQINYFAkM8RV
	 HFtJGbimIbLrj7SM+duyVz1BL6Rl1img1bzhT6KR4QRjNSHeoDFDx1YRrocSFrETNu
	 TibR/7lMp3XeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED0D10376
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413097358.25937.352901959312137234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba127b1049078bee8730a779e776f4d5f7c3947dd0061cc0a0d2838a6d60d966
Date: Wed, 26 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764130973
