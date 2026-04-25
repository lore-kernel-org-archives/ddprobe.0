Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338E2239E7F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777161454; cv=none; b=HKSdYm397yTrAbo+fWVtBpOBrWZSCkcc3gnKKBVJmYDSsQE/Gc27+KbgvvQdX6UzgYwUY6Uv6mDc2IT395ThePk3EOHinG/3KhYuRpXBG0h2Rugp2MpsjNqHuD7xmZa+cRPdlXk35/42ZDJA9Lv6oi52SZXd7AsQJd7DkySw2C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777161454; c=relaxed/simple;
	bh=1WSlDwCEb0yHLBWijNEidRMEiOBkO1ZuE0pWz1MR9rU=;
	h=To:Subject:From:Message-Id:Date; b=isioSSIrRP5/3qpHV21GlFzOW3W8hUnr2i23W6/kbt6UbAU0tYRtVgyEwfjmM3v1Wn7+NTDoG1ENlf/CnrvqNsb/tS5dD1FYZXRC8LOfciT4+xilFBSOrwiVVLU37Kjd65WW6A5PCB8YI3rbChl18mMqG4mZHvAGkOXIMDXjjpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0SYNVzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0SYNVzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AD3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777161453;
	bh=1WSlDwCEb0yHLBWijNEidRMEiOBkO1ZuE0pWz1MR9rU=;
	h=To:Subject:From:Date:From;
	b=n0SYNVzxweaZg+zl5WHZDsoAxuOD9g/fblUWsqLEDbHX5Eg3S+T7UiRAVcUITRrgz
	 clzK0EMarsW271WZw4NysP7r4zYMf37K9oSarW2sCNGlvMJNrDoku5r0vI4U3o6AQa
	 VRZP8JjKuzHeeHPXJFGYzMZACO6n/qGbdo6tQnVpNHiB5+3pdhV8WRRL60/9U88jLd
	 Nj0wNcfWUcebNRQKGCR1BemPyIjaKA7KBnPBCNZhkgz7t4QWfvrbmkFWYQIEQ1CTPf
	 vlF0fpUmeAXjouTPAewlU0vU3RyAdwMGDm3p2HjBFq9dPw1Io5EvT+BT6Q413inKfl
	 xHE0uKb/dS68g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7D1FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716145369.3048.18002373414547402296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ac35591f2d801b66bed2bc31e6cbf7de9814dc704f2c8da4ff174ed740f5ef
Date: Sat, 25 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777161453
