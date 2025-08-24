Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4D1F55FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756064994; cv=none; b=jGmqMhhqtHg2sbkzHuX2yaJh+nqOZSgmyboLaYHr+R2pNaDxFP3iNdRreg8JxjjecyJEaDjbWKmqGsnCDJRQ0k6Fjk9jWhTaS1CN+/O3vE7+wDsffkPIv+iHPpZdTOvEFChDweQFH0SvCaPMsIluG/Z+jnVimgB4li2Zsml05ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756064994; c=relaxed/simple;
	bh=iymtwmWZQCu42lPiBwE5RXRK2pFIsfw7BF+rdITPPw4=;
	h=To:Subject:From:Message-Id:Date; b=Ew/m+ItkVDPhzLPKYjP1yyRPOcapWMPeNR+mzxD1/098eAKFHd83gt6PKnhXc0ky8PZT0JvIJqbeftO0MQ2zttITiiv9V1HrdYMOLGvkYW3zTHUzJTL1wVDg5zKGeGdLMuxqERYI1CUoC+yDePlVtd6RQ7+YjGlqJYtQX4xhXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Z3jJKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Z3jJKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756064993;
	bh=iymtwmWZQCu42lPiBwE5RXRK2pFIsfw7BF+rdITPPw4=;
	h=To:Subject:From:Date:From;
	b=f1Z3jJKslJdJBBXBKaXaO2PGD7Eyj2MOJxdXSQxnkJA5CmQn6zg9SP+VTSebijY5B
	 iDvKh7Z2dL81NOJKnurgvtcrimfci3tadhhqWYYm9g50C3E+LieCqKhcM+//x+Xw+I
	 nmKd2OEHhVjJYGodl0e1Z2OWtjv2ZG89HAbtqixnS5Gjn9KUFh+0WLx3skE8ZVEwE3
	 UW1WDhJnR+Oh3+dErB9cdj08g/FgT8iUhVfm/eB3fIMvKBFUw91F7Q53vmXE/rrRq7
	 fVXE82xUmjJDGTbYA5dLJlGOC6bIhz7YDTIP2YXdEPqeUa1mpyZtc7VfHoZflYtEKb
	 PrxrTVld2wP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D7CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606499358.9918.6170023810141671756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3000b80dda2c03499ad0d20f2e975102fd4718d222cc66bb6d4c6d5239bb772d
Date: Sun, 24 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756064993
