Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C1224166C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764041574; cv=none; b=FiRJDJycj5JYFxrSBKLRan9ku1Wk37eTJXalrNRLGAV1e9bsDH+awiWiSFfzA6eu30NdYV7keYYn+AVtg1zpY/IXPMX/f046nFY7XuBlHzaKmyvdt/k5rptM/1KIy6PyEOWdYcD7KYzQtQhopJse9ZxvaJ0Lj3OtOVh+mRTfcUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764041574; c=relaxed/simple;
	bh=d0fajmlQ1vJReDpQ4zxMq0g1hRxQH9bz0tJwX5NkiTQ=;
	h=To:Subject:From:Message-Id:Date; b=tB3NaeyRE0TrBFOQ3wjfcfDGmSprDT9TqgBgDnM4t2Q0JHE/IzYjUe6dWKd+TMfFZP8X+g/FrDNxyKNpX5U/cM6HypuBAlM015A8tq65JlONgn5UcSfmRsNLpyMXEzNaTpDforAiyXNOEOpWjayoU6lbZhRyY3uQr9UtuYb2swU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK7WtK4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK7WtK4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764041573;
	bh=d0fajmlQ1vJReDpQ4zxMq0g1hRxQH9bz0tJwX5NkiTQ=;
	h=To:Subject:From:Date:From;
	b=TK7WtK4i+Lr7DUBIrjNovAxdZLMcFqMgXIId2Mum6KgNl+hTwuk/t4uSavIj+n4vN
	 iIwCv41ogWobPZiSPWXIww2WEXDfbDUZ0JsAocI//tMgeGO0vLnulkggLjbzVeNZZH
	 bNm1+faqYyZw8G+nOVKpqycc1wvL4KWaVl1tgE+5KlrtEz0kXho+9NcHTJP73eM/Fi
	 yAbxQMoId6/CsLH1AgoaQxHdmbiso+V5z0eIZotpMbUVXZjCbZn/0FpSH+yfYy/yzl
	 s+AV7TqWIE9s9/YyTcDZqKvQ9WiR3QA6Ba03xlmMsq2SyDZ01nHYXmLJi+Ll4fcq44
	 wfGw0PcUFm5mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92845CFD376
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404157358.10141.12238878368290856190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b8129f90d6cf5519fa7497d432ba386e598ca4d2d3458a0adc144dfc652d01
Date: Tue, 25 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764041573
