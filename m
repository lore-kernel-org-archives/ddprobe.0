Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C26B26980F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763054994; cv=none; b=dWI39bvXiKxXc+midGodebHUCv5lcJqnWpUAKTH+yQwNRjXP64sUiQfY1+VtR81S0Xv5ALciulGlZsXbUTjeMMk+bRIhx9RWspu+8vGxnvbqS7hXY/DbioABWdG9yAkfC5KwuSfyJQzywo7aXZ19Ie9BtUo6VD9EDvrCTM5FLRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763054994; c=relaxed/simple;
	bh=JWIw53lU5jWyrkIrDY/oMIL8DL8TZ1SRwWAbsLl76do=;
	h=To:Subject:From:Message-Id:Date; b=bQ8evzg5/pRTCCgn1MGuVfgfEPKT3FG6+V9hjH1DNZxDPnHSUSoKV8O5MsDHKjjyuX3giSx+juOdAvFysebVPl35HSQEjg2J+PWu740/21BTEq7yUWZFFUlUX5F4/EfIarNb+pFk0+FASUL7HPhQbrH+xkxksh/r7tHI9OXzLCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0O4B/ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0O4B/ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDAFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763054993;
	bh=JWIw53lU5jWyrkIrDY/oMIL8DL8TZ1SRwWAbsLl76do=;
	h=To:Subject:From:Date:From;
	b=t0O4B/ZAMUB+4GLocNnAzL5l5bh04qP3jijqnaW8mDJsL+G7kfpKNw6XlljJqcbm4
	 Ov56FuREZjEfr5rYprkXSJ4dqiFhymElzeU2y9jGOK1bpwPr7X4nOwllaSzK9aJLOK
	 CZW5ZIcTNm+dg20Lb3TMj1JIsXJ4G7tdAyU1syHsjN5L18Cqmsz1o/eey4Ju2TjIZC
	 hRfPnOYXv5K84u6R6k2M1e2ToxEK9w2uVoWi6kCBfVJSJvdZIzMeM9sF4R1ylqUSCP
	 AEiR6qBUm0HLW4xFro3SvUBGgEBC4lZYvDwYKMUXHIc4xMePWRWb+8c8K41JRUHHO/
	 QkFQLP0cYpW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90201CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305499358.6019.14103688509699169994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee56422a1fe73f18114dd238808b8604da89e7f6d9a3b883c4a3b2d82f1d120
Date: Thu, 13 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763054993
