Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467D845BD4E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784657314; cv=none; b=A1P+3V1uz065TgWYr0bXKgoR8CsXrmyi1KZfhaOHeNatovb/DAAkQwLnq93XGeuJkZbd8UwKUHbrCi1RT2b12nY/hlUxwGhQtCB47wnW3zmfixpz94Tzjbm3oOT1h70aeEcY102T/hBdsuv+ywOjlsaiOUf0SSteLqTo2HoqHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784657314; c=relaxed/simple;
	bh=P3+T9ZWdK771Asn5qfgvMqYrMm3J/oN1+BxMD9ZOPt4=;
	h=To:Subject:From:Message-Id:Date; b=cDbAN/eQNqONTVu6PYpSIwJ7QcwnNlePoJPMx8YNoPAHmCHju7LR0IBhkA2+WagkPLEXVkyEsmvbRqvy3CuaFrtA3zBAwIgNCWr62Gv7BUyQNRPKGZZa9170R2NJWZlysoXUEivGB09yfpSusef6CjFcEd34+zwR7duzGybcHoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLkcTV3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLkcTV3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BDDC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784657313;
	bh=P3+T9ZWdK771Asn5qfgvMqYrMm3J/oN1+BxMD9ZOPt4=;
	h=To:Subject:From:Date:From;
	b=JLkcTV3qV+jg3OZf5n07AHQaQMlXBYGo5V4a6m6QDt1G2jPhnRbhgqm5W6YBDloh/
	 64TYnFfatvCE32gVMVVPi8i/rxt4OvMFtxOBPNEu1YLooAsE3FB7zAa1wXlQL+Njru
	 MXGcaes+o/LOPjLRQdihd8W/ZWDr7un4nyExnXPnOcwsqKtaoQAu9SmzuVP7x0mVUg
	 SbC9m1LRRibJhqLt0jErCToxM+lCphI0RkTC7PTZl0vl3WpHmVF02q9IBgZSqpkP7O
	 1Cq6JsaUFE92RKLzMUbt3b9r1bgIpWIKKOe7Rb8bsT2kv+ULI+ov44ulCtgNlOAtiH
	 xniwToUIo2nGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB82C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465731370.9782.9953222672696145688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d2c5e333aff8c8aa22a926cc6334d4ced91a52a824c7735d153c2b9d428db6
Date: Tue, 21 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784657313
