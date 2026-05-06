Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1F43090C5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778101054; cv=none; b=STt3LOX95JUiAuf2+qnbsn1vU0tER4U3iHcDL+ZCxpzNh+l5oWJB+sYukjhYd+3VAy9CC4bm2F31Hwvfr7lUd2ew/yWDsiQUXQ5MKAgCmKugLTO3oGpgu0AzJkNVENH4TP2GTv1UanWeQqA3agc8AtJG2jNhS4VsnK1OTL371xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778101054; c=relaxed/simple;
	bh=oxeoaHuC5uJwYT4H62+dmy1U+BnUVKVM+pn+w3Db4/A=;
	h=To:Subject:From:Message-Id:Date; b=dYXrw0dPDQafKN0p6PjXlQruAFuTD9ZhbXq5B536LWDYFViReD2CbVSrtV/wy9iZpXLVrbttEqMdYp9oxhReI66i+2kh2lxq7MdCQPKpGLSfb2TqfpxPwK/eZIZjPR1cckAGyg5mN4gq19n/SH6lWpzNin8a1tQRhiDtY7qx+mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbpWSmzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbpWSmzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB34AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778101053;
	bh=oxeoaHuC5uJwYT4H62+dmy1U+BnUVKVM+pn+w3Db4/A=;
	h=To:Subject:From:Date:From;
	b=lbpWSmzlHz3M09g3xIpqWAx1RW2gT10IDjV5UPPNGcJHViaWTm7UDzHLOTRLY3fHv
	 1YiW6aYsviNdGeKYMOxCz1vsHiRl7GX0ABrceXeV7wuIow8bCeqeU3pdLdVrhUGWvC
	 OxMP4wMvMH4SS0LXwrmnpWIFKV5gVrkxqEmwXPumUOt2xVS55XZmlH65eCyJksqCYa
	 Fr7WV5emy4LSSK9diNow0Xk+56xHtwjUbXSG17iEhYd1xpNkg1vpiTGS3Q4d+eAPKH
	 T71NnQrgHaxUh5caMF6vXJXgLWwzC7ryo52s05Lu8qMe0dqzNRAxvsiHaFpE5blqw3
	 mGQBhdqo6D2cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC35DCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810105369.21057.17663939129068668079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab017813a52efdbb110571687b286c8c5e74921c6e5218101f41684c518cc13
Date: Wed, 06 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778101053
