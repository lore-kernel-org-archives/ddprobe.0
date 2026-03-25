Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF00272E6D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774414494; cv=none; b=D8Pv6aFIHdv79YSzEYJWhYU7vhzyxJ4PDOSI4cwjH5dYQbi81QOQt5KhmiB8wawpC9t4atUWky/YNUy9afZoN3GidnPjFyZmCGpJUkPVqFpNOAOyxDvppcpr6ZYyoxAzGOfjGnINyMeH3BmuZPd9LMEWQC6LqGZXEBa3X9W29Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774414494; c=relaxed/simple;
	bh=LAKpeY4x0M22lNaFJHgkTHOUfllCROic8IBfuoCOO/Q=;
	h=To:Subject:From:Message-Id:Date; b=uOg9qP4SDua+Bt06NVRQgj+FFtns/aX+yewPuVA1CHJw/zU7ETPFuQFXCtx317Kgz4sNiGuxuPcvxZbs4HjbBxX3SEx8Iii3tK09Bo1WloHicHOm0HgkMqb3KBAh9G3wT0M6D1CzkDZ6oGgNKCt7mYAtqoAzSoIf2wwlH3+G8g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETtxx75f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETtxx75f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0289C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774414493;
	bh=LAKpeY4x0M22lNaFJHgkTHOUfllCROic8IBfuoCOO/Q=;
	h=To:Subject:From:Date:From;
	b=ETtxx75foXPi0ckj9d3sO+7cNEY0DtKiYQrCfcw6zvXCYzB5z2QlAT6GmreXFoxSE
	 YnrqnTz7mI0Zfn1FmvQNbUQMoq8PzXAkLg2bWNSOWbXXXk02ueldQs2fLOXTv06G/e
	 c7j4Xth7AnbXGlhTV3cRirGGUMtdp9RJ5iVH5/CChmAQjZ1MJ5xctON84E1k7eXFvK
	 yEaPsa4E/r/u8DktmKTpPvJqtWsDN6i8uMcKkAM/9+zfB1e/EsqZ1XTCBmgENVSs0f
	 aSkv5IK4f4hmTQaG+pA0fHJ7SysT1w12kWinohoLShcO3yDFgGuTcsh0OJYNTu+aEt
	 TqmV9c9WDuqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB09FEA807
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441449360.18976.5921207814064547138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912a3db861acec14533dc66f5215c2d6e26aefc796e3085b20aed226f1993364
Date: Wed, 25 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774414493
