Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78FF30594E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769381633; cv=none; b=QQQ+ROMUsEFE5KhsBZLt+mpPgdzNns5QYQiiUKRqMK2tGqgKc/NCIyanMkYDBxvKhLNs/uc3J07F7XFALCWpNqUbN7796Y/kxVjWyb3fqBBtn1rzXc24hrw7w9mMWbBxOOBISyy4umCkocs7KyHihjVBNwyaThHmYyE/ZGvp9nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769381633; c=relaxed/simple;
	bh=NJ1jcGTRdwaloLGdZ189MAKjDynBzTTEdHRS+xaAVII=;
	h=To:Subject:From:Message-Id:Date; b=L4eXvyzUNuPTxHApPwJg3+PBjl6IwSiVc98PHdg9rMrwJYklMOrP5AKqHyOL7gxHJ3UVk7i4V3Hatne0SJBLzj5FBP0+yV9+A8c70n5Eoa19xCTLkFqaQHgofcI6CpTmT5U24gi+xetljuUfo43TWqCPXXJjVe2kHP7H0DaVL7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqU+W0dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqU+W0dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2406C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769381633;
	bh=NJ1jcGTRdwaloLGdZ189MAKjDynBzTTEdHRS+xaAVII=;
	h=To:Subject:From:Date:From;
	b=tqU+W0dAKNNCdYVnC3Z/Y5h1KqIT+rb2PPwUETqB3hSvQ5Zspi+rV3ttjbvWkV0mK
	 0/p8GvKBTrAQR2PTvNoN3KX5SjZ/nWOl2j5eHnprX3o9ZRkLoJGH/R5ZxIuMPWC7jJ
	 bdjyeCaRPZmSbQzdCz66kIEySok+L9nBI4ykET6CVjR0HqCA2XcC2MWrkBTbnQjYZf
	 pk5Ibrk1gHrtqrQY/wldW/atv7JKtEC+My2P2j2XjRaEjIvbY1YDjXy7g6SeI8ktj3
	 /i2ClyLPufcSjqbjphcFLYBdWs9UBagmZ38Iv/ZsIzS2aqbDFk8hf7ehq6752BvFLn
	 NWAKsjNx896qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEAE63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938163357.10853.5382172372981211767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1eb8ddf4b6e478dd4638ff387c0fb964147b30780443b4f19058d8976be6d0
Date: Sun, 25 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769381633
