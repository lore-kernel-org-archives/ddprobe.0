Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77439099A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781966794; cv=none; b=GWW/HE9S2Y+iMjZZMHxD/+HJBAFQgCWDgGUwV/DY4yoCuaKQF73IjY/VIejIhfDUgDP8NBexwfaKSDwF0aebnFDzJmpVSeYh1+5vXLpiLzp22gzeQZGIMXUvAMw7ipJ2Kco2CzB6Cft9wHzFfWVd7sRnDF+yltnSgEfAKgrV5Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781966794; c=relaxed/simple;
	bh=QGX5O9Bu7C8jjSnY2G+14lxubPJfNVmj6QlvFqGNj1o=;
	h=To:Subject:From:Message-Id:Date; b=u1lSgTnbbRHCVmglf2okQ0/vqQg9jo0kaTrL4M1rNvab2wO61RnsVL/ot4cyCggi+qZaRrom/PvbLIQnerkCxCY8VltClJvXvqvZln+zw9dayQOK+H5zE8A89mFe+CcIZvFv6m1T2fbBNCaeolrYBGoH+YOo+Ldi5XtyGOeUtHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzIPlTEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzIPlTEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68E0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781966793;
	bh=QGX5O9Bu7C8jjSnY2G+14lxubPJfNVmj6QlvFqGNj1o=;
	h=To:Subject:From:Date:From;
	b=mzIPlTEwR8u9KPS1WO2kXZnkDie76y5OtJR7DGLUDKLIlMvk4F4PUhnJjXPpxDQdx
	 JNSZtpLhEwgFBCrli6VqLLx6tmMaKK1xW224Xn2ro23pvC9TMnT5QWi5Cfb+ktOq9o
	 FMpURXaYubfw4Rc+o2llXiFGFQnkxx0K89YTxzqlntOtZzjTIdJxRIT0KlA5ZUN1Fz
	 wBTPUYcpO8IDiNj1m+gH57hrjJe/T1NI0OSoLERA6REp3Wr3ya6xQqyCkd3Jr2fWfA
	 4pvTicSnjWYmDgQd+e6jDEifEzAkhK8dwOGw16LPXCs3ZLIOHqXq4evRtgUoJP64qa
	 USZqsvH9SrF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5149CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196679369.15447.709642344468407942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530f63e6212cf5e63d0942f60211d5083c003e69c1b507fd6baf936204156e24
Date: Sat, 20 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781966793
