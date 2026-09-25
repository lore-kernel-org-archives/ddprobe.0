Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D94C33D4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790353234; cv=none; b=cTO46EJN3OKMzpDNt02va5lup27KQgpukGPvfkDWWvnbARPvuCslNl2FUvY6yPTLAtEDLkvv7Kmd0UoQNp5HSoVI23OkmFYBLMF+jwG7WFidZXC05huSGaUvK4PcSQfZmCr+FKJykBIxjk4/BIar6rDWaO/pVavOJ1B2yuE2G4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790353234; c=relaxed/simple;
	bh=EhUUtxlXVjhXF7ISF2IVzScunAPeSdKG/EolYoN7/xw=;
	h=To:Subject:From:Message-Id:Date; b=jTTALCjJ6tiq8Vjg4EeMRkxrDQk4igzQ36/WuPHYSUGKNo0soGUjXB/9cZbp7lNgo39UZ3vfIsuPx4CWPx1eD7VoogILhQq+iQX38rnxHMSRjbd6mz9V29LIipiMA7r67M6tUwrSMuzoUwuEKvVcNILByCydqZPSw3CAfnxjAW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+R807Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+R807Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D3FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790353233;
	bh=EhUUtxlXVjhXF7ISF2IVzScunAPeSdKG/EolYoN7/xw=;
	h=To:Subject:From:Date:From;
	b=P+R807WouOHIe+4vlylh6M+2kEdiZmM4QxW5d7lWSgKCGVZIzjyGON3Ouz7zUcT5+
	 53a5NTZ0rYyUjsrQJ7N8eYNW68dHb5Yq6ZllRhCyXSPjSVJuYBSXTLjotLSQ9gmE99
	 LygjF+g7b6sBYxZ/3Esy//0Png1yNVx20wIPS0WYIIwjj5zfSkK0Yz7KQXFLUAivWG
	 ubRfRMfkA2HPTzg4SirSxXqyFcn+m1x2hL8+WXjQlXG7DXgYGWveaXMBp+uzHmdNL0
	 PYrGDNV+7HRcz6kvcw3OsJH5oaRuusybeyPkwtLG6GjN2JuIDr+PHmttqiuaUfyC5Q
	 /3pGdbkD3ta3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06E2C98325
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035323370.15456.142375354629726524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cb630f43e638b0bdde1b9692294df3e3452dbb0b14217c56cb40bb57887240
Date: Fri, 25 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790353233
