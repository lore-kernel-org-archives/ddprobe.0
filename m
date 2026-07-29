Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F984440A0A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785363634; cv=none; b=q+ss3To9RikGioTYl9BlclWaegA0cwJRbvslihdRFVxaDkmBMqvJZwQpibNsoC7Jfe4vse9TR1i025AeVb9/Q3QAtxIuOjnRWgIZK3Yxy6kLPBt394Dh5KA0e4ETR+YOC6aoSCTuInLfD8TQM2IoncK9so9VaRHOrnfJeSn8vak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785363634; c=relaxed/simple;
	bh=It4yI56q0RR89A7Pvu/qMGtO/wVolCLNXe9ZH1gwFOU=;
	h=To:Subject:From:Message-Id:Date; b=YcoKIeGYWOX8H+U4s383u8K+RAKnuzu41dMSLHSLN9yWRq9aiUH609hMTf9GtXBbCBECYBAMYFMYB+ywpn1dpP5OPUifGdraY65RWDqnpjv5VtedyIBWMicClb0RyTMDsh/Sgrc4+arTMDqOELTG9u3oCt6RH0bTxpNT/fhlxmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4TdU1H9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4TdU1H9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785363633;
	bh=It4yI56q0RR89A7Pvu/qMGtO/wVolCLNXe9ZH1gwFOU=;
	h=To:Subject:From:Date:From;
	b=c4TdU1H9PAhTXNm9dJs1Sa5u9vdCpl67zwIFg9EUk6ZRzr7ydHQ9It2/3pONVVg9G
	 LZd1R6Mz8mvrs+OAOXzrEb+Zze55hYFh4H4gFQQi9eMzOMBdKqoRqp3aCO+qhN8KK+
	 lOFj25qfV1V+8zhuSZBYq/281awsPSl0d1SMwMkymud0I1fv0z9iAu6ME5xFpUSo/f
	 vxnFFcmx2EQn07SWzFSVqkAazBF5JjOMVvgqWTixXDtzDBeLccAoUMq1G95QM8cRGw
	 ANDU74dINGcuyKPbnVN9e6wCqAOLBeU3r8kaiQxTuH2ssqRRGQWaXUeRaA2SNZ8/k0
	 G/ukQpYcyDxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6154C54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536363373.23015.7163631675529788650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efee0db37509fae032f531284b073212578e89361a47baaa318f37d33f58020
Date: Wed, 29 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785363633
