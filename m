Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D22D3C10BA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788159634; cv=none; b=csdqAx7Mr8rtQxhayIOzWr5EeNm/lwfqeZA4OKU25SMz/nYMaHsY7GPxHB2ASF/W9hoNs+O/3MF96T1ntV7URDXw2tGhd1E/Z9HcLUbCkZqsfHI19szwRYixqvURfmoN7E8B5OJZ8+QVBnaatjpYH+jh/XKq3wgWCfJVoKOjFfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788159634; c=relaxed/simple;
	bh=yUaHT4Sf0TjWGlRaSwhR67YrxE6q/nvnIxgDm2YqpeU=;
	h=To:Subject:From:Message-Id:Date; b=jCcdymwmsdKarE6YhnOVmV76c89ztDaqmqCmCOyYl6ioK02hMzSpoXGgHRGe9ohBA3Azqqu/tibltfvcmeQZlgpAyhgnhnzLt9RfBGv55pkpHfwC9/btTQGPTvyTE6jEE6avFLmxzFAozLIIY7IVIIrF/LpJSCYORzADztWPbDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfYdv9P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfYdv9P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44FAC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788159633;
	bh=yUaHT4Sf0TjWGlRaSwhR67YrxE6q/nvnIxgDm2YqpeU=;
	h=To:Subject:From:Date:From;
	b=pfYdv9P0vKhINrZ8r1M1KbfZ8S/N+7F1hQWuFB6LXxv3nPOjN7Qhhy1CtRDZXrJVg
	 gqm+cb5uBPNc4tcsouPXBk2bLYU5kit0Zia376Po6fLGVIcZB9cA/MDqtERbrpIrh3
	 OKG0LDqx8J8FWzf66kFo2JedeF0vzN0XLP725ZmeYgK4Yb19Q2svwjJ0J9JYx6PfGG
	 PqOhcmbv3IgeaFU4yJ4MzdbtSNwhU1Acy9smznXHSS19Yl+IUEY2B9rbvHBRcalOCz
	 z+KpJDL5jBhg/DzSuZBcVsvPRg+M9z2DIaUh2aBq5v8165rMabgCQci6XiHwblo576
	 KRO5T9mVFT+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4440C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815963372.26129.10407422023877889008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c257365eb095667d5ecd1a478bc51d117053b9d027fe11adb1eff6803c3918a
Date: Mon, 31 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788159633
