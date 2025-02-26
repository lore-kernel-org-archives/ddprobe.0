Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E5F2236F0
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740589736; cv=none; b=jN+Cg5SV/wxmIQFxvCxXFamq8jGLMAoXbASBV94BqBDvyHuUQZJQD/fp8/JBlC8uRTs3Dm+9UetCNXAn+xGgY4m0jUiHjgV7Oev0K+3MG16uT/mLFkU0S2KX8qXHiKbkSWh52TF+UgFAjt5e1/18wL4q9mi9MiTucyrQhk8XsCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740589736; c=relaxed/simple;
	bh=CV9yO5E1ICy22H4gs1fMlrVPK21z6yQQQNI6xtd2yN8=;
	h=To:Subject:From:Message-Id:Date; b=ZhIQp51Zuj0fxoGmm3BUsfFT7j4I+vddnHxY2PDfhiqMpACHtcCfxsEjiS+Slyi6PZ7EdhCJ0R3jVx6gVo5piBaxY47stj9iMgI2zOM8YKvwe74FQcx3EyUkhAft/s24yH8wBedSmCFXWPVdIBnCn03ex6ybeLJdTg+jjgDUh44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdRdk8JO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdRdk8JO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9DDC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740589733;
	bh=CV9yO5E1ICy22H4gs1fMlrVPK21z6yQQQNI6xtd2yN8=;
	h=To:Subject:From:Date:From;
	b=DdRdk8JOgqRh6LquGQ/lU+mGMmLTDckbg0zZwzeEJ2K+/m79NKA/T7w1Vg5d/Ujzn
	 7d3mJyUV/FkQwNofdgdoLsl+TXnpPjMAToXbksdeo+Gu8+1C2jOefodn0Rsn+LNPZv
	 Tji6sILF0XeQp/pdWv9xe9WCRiIv7Z6Nvq3Jjw1AwWxecxZH/UrXGOqWKEoyOv9Vwc
	 d3/8Y3XbjKkowCbDffUOk2M5aBdCvjqcVRXC7JbNiIx78u/hVtM60lIA240Zmqb84X
	 fyYkXR2BOkwxhWi32R73wPs0pM3IIS5GFSUPoY644TIzuhZlYK045g1iASlFy1lJ9D
	 pgHajBAzH4tTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9876EC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058973361.22145.14751142698185145546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d8a76bfa70f10c43b5fc45937b39c8513e6e0c80d8b78bd2ec640440ceae30
Date: Wed, 26 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740589733
