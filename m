Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206121DDC1B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781312794; cv=none; b=YgDWkTg1NgOYjFcxfkCAcZ4EYKXHycChYJ5rMPQ4llsYWsMgv08a2Noel4PwlY8TVti41d+3CDQlk18W2TAEEve8nDpGeXYoRBzG8tJKlU+nxI0FaVRj1DIyCHJiuesBJO8gS8u+VzDepRyqJ5OAH53PvT+O1ZMRuqxpArmh808=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781312794; c=relaxed/simple;
	bh=Io0WxEUzJekJc1AuTSHBvzQa6Kfi8Qh7UUvLpGMupZ8=;
	h=To:Subject:From:Message-Id:Date; b=pbTjV+gR2h9mFWFzZ93OgvAsQZAnNM1ESZC/0P/1p86M/MI6lBQ7GkRUN8/nAP1ShmZKTaTtMOXFUKikR/53SZz9aea2LVW/i+QHQVKfhZ351hbCsldfWA/qFP40NOUNknT2m5HAmjsgr2c9oepMPVR96FPOX0zdvZFgULd7KiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5/HYrrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5/HYrrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8751C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781312793;
	bh=Io0WxEUzJekJc1AuTSHBvzQa6Kfi8Qh7UUvLpGMupZ8=;
	h=To:Subject:From:Date:From;
	b=L5/HYrrH9/HCfzGigBB3h5Apsrdhg32h9+hPQASQ5JFvIf9KMnn0aufPr3F1eruD7
	 ARowqqs4KyUCQhwTpRAy9v53Ot+GS5hucBQIcvrLm2c1Y16fnALCM3Szppsshgj0De
	 9mT8lajsUXX7+GyPOUomyRTTV2l5GnV3sHQVL2QGi6kzgqTwWkyHG0HaKLvYRmQ4YH
	 med80ItAET6dEFwYIgDnZYlihJAQEXKvX9kgjPlhJrlyssv11xWcGy6Elkkpk6/EFo
	 m+UhUh2c7g/pCXAt7p+9/J6Zp60bV4iW1w3dhI4XLGh+yvebbT6xLtEX23gjcSUeC5
	 qwS7sbTQ1ugjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC698CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131279367.5060.2955895480150676841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed858f0ae8416360aa7dc1a2daef96391f6cf4a254b0dbb2557dabfd3e1dd34
Date: Sat, 13 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781312793
