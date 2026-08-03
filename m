Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536A73537C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785787234; cv=none; b=OBzMi597oE3kvyeHhHvUbYMCx/zE98YabTxG4IyunnMqjy0Tk3NW3s12NXPaXEPHSJPcl+uXBivHjqSrhhw7VIotRvX5AObEUcme5naPfzEAlzE3VtkiagKCtZrxTRPuGPQQzEi1ai9H75ytM8019lDTR5St2nOZhinCjEev62c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785787234; c=relaxed/simple;
	bh=CKBZ7ho1WLGC9llbU5dzY57KKTZrVWFpomU37bSzaow=;
	h=To:Subject:From:Message-Id:Date; b=ViQM/XdEACkgTTehpHZZkKeifrXRcRD+u3xSEMaMJcPGwpyiJqj/82bHz9Hjz9AUppKYn5OsmRC/95mNSALEZFrHyKj6e3NqbpHasWvNWvdn3Sl14wp3wScuUcj2GKFbUPQlio/vJA0dGy/in83bkzqnCKhW9Cj9uisEn5ozlHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgQzd2u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgQzd2u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53F1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785787233;
	bh=CKBZ7ho1WLGC9llbU5dzY57KKTZrVWFpomU37bSzaow=;
	h=To:Subject:From:Date:From;
	b=HgQzd2u9aJ9z/jJ7tLviP1ikafTm4A7ncNpHBf+riLId5yGuMV0kSy+HEgGpJ3UhE
	 Rs6ouPsYE6CBMKadH5KEvhU78JsX+xBuDrnT3fxhxaZUXEhvjcnYPne6ANeyzkIHbN
	 VtjPEduW3Fy5ayj0VmpEOlWba1ybQMC3Ili2rI5GI741NU42dcL2pQrZJnP0VxDjJj
	 Ne02jAFLYwoKqaoxVfITJqhOFubYuP88v9qwms+vgiDBAnTLQ2SDj9aLQLBYY0hzxa
	 OkwYVusj0Zd0ApTZK+STI6FuySNxeGf0odk1fRiKZSNXPcWaGxUwkl4f9zQJfSH/4w
	 yJ43RHDNp9iXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B231DC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578723369.4457.12716751260856798475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b369ba9ce4ae366b0621d48a409c898aaca7e2ec53aa30a687e3a9ec09007c82
Date: Mon, 03 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785787233
