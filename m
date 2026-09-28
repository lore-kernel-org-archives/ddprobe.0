Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106336F41C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790618434; cv=none; b=ViKdZliR+TzrcWn6L8JUbBPyr5uH47PBUh/koMKRqJyPUd/gU4Lmu4azy4Gh0CGIO6EO5ezi+BbChakGf//hjOT/0qZh5SwaYnCC/2fUF+ECPY30xGh47BtJjCg3gd1LCmEZPURT6PMrm0OhSCD3B1SyEAoDgaGlSTGNHLXCocA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790618434; c=relaxed/simple;
	bh=uKL9+l38ndSjwzvc9hiPhQXFjTOCGc8LQ86p/pCk4og=;
	h=To:Subject:From:Message-Id:Date; b=d9YX8haGKy3TTfbLhhOEJb3DS+FENh5M4mkHvjOgklfcxY3EjUDzbs1qk5iIEbGu0+ahMTcBqJqsk/FV/gJHdYdREJW2GQQbLHsuDNyd39GWYqA7lUb5vIe/c5if33OlhA/DECMHhU/LlIWqBT+7cTRF5UR/10Qj58/D+3osGp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAZFEX6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAZFEX6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7B9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790618433;
	bh=uKL9+l38ndSjwzvc9hiPhQXFjTOCGc8LQ86p/pCk4og=;
	h=To:Subject:From:Date:From;
	b=dAZFEX6hwOFRik+6mMRXwkOXvLnFovQXl78MDDu+VpBZJy2NqLVYgid5h2smisRwM
	 QPdzOUa+e+BgqPVm46kTa8OduPGOKuGlc+YPDTMpzYawspRXuG5SYa1LsvLrLkqYMY
	 zJLlfyvx8djm0chYZSUAJzY+Uw6klwJP3k0ZcgXAIDASepP9UY3Mbfnl1OpW3TZdkB
	 3FwP8IbJgUiuhU1Gyf6XTVa3cVkBc3zAuRX8Us1Ig0rTol4DtF4mXsdRoC8ilEtlOL
	 GWFlkukaClCyaEkQ7hX822522VpRxZijoMqUd94oIBhIy9/mUQYYrhKxFkLVcm+e5o
	 s9VtCpTVxy7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD1CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061843373.14469.13784855600166445183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a97511e43acd1b4d36c654c9b8b1c4c0d1f1bf6274de5a75ea3470b7213dc1
Date: Mon, 28 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790618433
