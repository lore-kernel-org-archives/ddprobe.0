Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E95A2E8DE5
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770891294; cv=none; b=gOM0XuNQGGtEtdZVpsI9/hVbvxuPieM+ttQn6642qnYRpnNRvwXLYCuNFQYumxYwveeq/Y/SmUYy1SfhpyR3vFFLX94Qvt4ZqzRZhpQmu8tUmwPx8JFZZlEJuWH84kyjbhfLQTMpbqkRA17zJq9afLkLah1oJrjPS5KCNvRZSVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770891294; c=relaxed/simple;
	bh=Kbj28hSoKsLMMgKkHWyDRRTjDB3HpSMHMqHAITujhO8=;
	h=To:Subject:From:Message-Id:Date; b=nb3dfhtM+ejE7JzRQ6APp1eaI8kJc0cnMRBvsPJFCo1Cwxo+dP1QGTN2XZh0JYeDEtmmmRrkZbWXZR+EJ1MFLsFfcKCqq+RynRleeLlTrNEbBQXH+ptymm0eb0Sl83BDXa1sGfXC0dKxP/3mw9wGZbl9aSLwCExKwX492NtwZNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlI4SXKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlI4SXKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A0AC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770891293;
	bh=Kbj28hSoKsLMMgKkHWyDRRTjDB3HpSMHMqHAITujhO8=;
	h=To:Subject:From:Date:From;
	b=OlI4SXKkkx+vVrkjL9lIRmYvuRXdNFUi0bvD2G/OKMt3oIglHSmBIbRlTqX385Pyx
	 0FwmErUP3GqN5CRJ/s9drDSzxbf1Ez9kVSyy8hXqlU19nHugAyOeU/SepH+XiciBob
	 1eYUoHLCG7+nCa+VYuFZMbHEXW2Wj+NZSC8t5Qu0GTKdKyT9Fg4LMPTYplYnqMSPRi
	 z6+c2eW5edJsKAWMM4PzUw986rSntQFwsCA90nUIC6sl3KtaxahvSY0V5pa9xGcOxh
	 VO553SZ0TBZLOxGVkDUTHCFKXuxMAsYWS2vwOrvmowEJGSXEC4gUuhsEseUGvwD92g
	 GN3I+nOhtBZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38C8EB48F3
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089129365.6486.10867128282902387285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e78322adda672c4d70fa59356f4b35f4b62f9ee850e5e67f122f3faae8686f
Date: Thu, 12 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770891293
