Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B333DEAEB
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788169234; cv=none; b=SBetW9rqDd+sbBRRzwG7ktzqsvf+uO8blm7KiDYFZad8rg0CMonxIFNiSXAvCLnnv9QFAp8tbkolaFxX1sQlalBQgN7H6XsFymycDMDvjd1rAxD6inydE5Ay1tOWMhRrDSkjZCt1XEtmsv6yJWA0+iARQP/Hh2IomRwdhpEWwQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788169234; c=relaxed/simple;
	bh=jumd/3bYfbIP2aYTLKNFB3bs6LBisQ34e8svhXbOUKE=;
	h=To:Subject:From:Message-Id:Date; b=gRQftd5u9dMAAI19Gk4ACVcgimPKF3f8h0x4C0iL/bIp6skxrGSghC1KCPGMfBDzzErzmtt4wXuhOuiGaLexHA5Ske4rqYZQavNSkLWkS4CZbItvqnaKU4eJjp/eYZGqOL49yX8zE64lGusfIozNLR+RqkcXSh9u2GkPYqjQGS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYgGVmXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYgGVmXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05B6C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788169233;
	bh=jumd/3bYfbIP2aYTLKNFB3bs6LBisQ34e8svhXbOUKE=;
	h=To:Subject:From:Date:From;
	b=LYgGVmXUuMpAlveqpjF64QB1qUEW/xRtpqp7/S1ArnR9TXW+mk/Vz+1EtvqDYot86
	 PoQiRmMJzCyZCuwoyQNe46RAqHWmsou6smBMbRrZCjGS1kw9TKaDHJet/Yr0SN/+7k
	 wLlzm1DgdIn7yGBXYSJpGzciuLNcuWr+/y02GrhYU0LqQUccsG38NMNeERuN78Y37d
	 pWf6sHERRON+eQdOh4xOcSA/Au5Tq2zfcVI4Bw7yh6AZGMJaDT9NfkwHoQoxd5WOMz
	 Dod1mmM/xgoNhs+TmcKwcYYS+QqVKjAaT/AHhtjHUHgyDElWHfp8+/+fvvHs5B78ou
	 h/kNFJH6pSYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB223C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816923369.5363.14529444190120100351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe1d0fcc2ab7356f72f650947a2c70bf41461f825391307a8487ff3a06e9dc7
Date: Mon, 31 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788169233
