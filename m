Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979931F9A3
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775048734; cv=none; b=cSK/LKtirwxiKMX8y28vvJSm2qMdY4irwV98cewAt22v38KcVE00rEhQ6kRklESL6tQehYnejkKwpJ8UJHPNXGpUSuuZlp8rZOwz/D+Qers5954Fw/5mXHIvRhJta4kHCvyDlOApNDujCRNMuMTHyXqJ0c1q5dlh6HPStNKFe14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775048734; c=relaxed/simple;
	bh=KjOaYZt3PPelTwwU4G/5O+QybZ5EO0fyWZCqQ/oaSKo=;
	h=To:Subject:From:Message-Id:Date; b=k1Ub+8IoEcOlv0SMA1q0VfIBYzhkpFjzopyjoG17QMun5aUsmXhTN2d+ShS+mKb4VPX0KfOQvir9L66ESLlPBTafq2jsMxKkxg8GSZ5R+wc1/8rJRsE7QtEclFFAHrFGWSzYaMGtokTFOTTLvam/AOWS/tIfftTkgs202PyHsB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJbOkYoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJbOkYoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB589C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775048733;
	bh=KjOaYZt3PPelTwwU4G/5O+QybZ5EO0fyWZCqQ/oaSKo=;
	h=To:Subject:From:Date:From;
	b=sJbOkYoDE/wpCpM3+l8XQrh2cxDx0i/Rc0TZrRaba0lqVjwOMTBV7AhXrsMRgd6hX
	 oHqwaBCvwdU4acevWGpHTDVAWBUu481kstLgXLDK4RBFE5j1M1L7TmHVwKaorrYTV4
	 W/NJ9FSE2VMdERuBchIxrzFnNZhRpS4tPwpOqrCR55BrPj4inXq3mkpik/eqjBAgt7
	 ETQtBrfJ8OGhV7ajylgqaxya1MLmGvDErEFqRC1sKOqtPl2OdoxRDF9SGNxkv2OwI4
	 XmNoD7klqDo/iHnjGnxKu0ywb6KVP5DVL9ly3HDpHcobjDAqg9IDV8b4fIRyNuQPMr
	 zNT9pKE3pgPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB461D3517D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504873369.9660.4519235768514723681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5feaed525f78396250d5ee67b6502e3ba81eb483c65d3d5c38b6a858f5b0eaa8
Date: Wed, 01 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775048733
