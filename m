Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14C32F83D4
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758284993; cv=none; b=Y7IrBudp7VW7o/sOkhbxOhq7l8G3VgIhEVFekJPG4aFgWMs9BKf5sfOwh3fiwfVfaDFL5FYBzVWRAKnl2bW+DxwLN+gW7lFK6S+D1yVyI9ee2wUUi9YoJ9IZJgisJPGTSe05mJTEIQQeSku1RKGLmoInTHffbommnFA6fVVstFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758284993; c=relaxed/simple;
	bh=Zxy0dIFBAz2FnVB3kqDQwl3EP9vQpEQIS1KvmXKXSn4=;
	h=To:Subject:From:Message-Id:Date; b=XygYTin4t4RktuW+KIsRzoVOYFGf9rLiANPqKQSqN84YSSPRrq2cxIU2QV24IuZ9ZLKZhy/h/It+dJf/XQyGUQ4sA4UBQN+9JE/OgjkAOKDGQv8bnPHc7fOka7O8N0ntF8r/il0llWbZnYdbjC0HnC7g1QEk/59CFHeGZ0ShQq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1WKMJB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1WKMJB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758284993;
	bh=Zxy0dIFBAz2FnVB3kqDQwl3EP9vQpEQIS1KvmXKXSn4=;
	h=To:Subject:From:Date:From;
	b=G1WKMJB90M2XNhwKxM2pd5ZoiBY2C8OZyKI6eCE3wvWLzs9UU7X68hF78nvdoRJBQ
	 e18+YfKnJygoUtX7CEhiOizvYqc2Q1vTgBfgOOQBP8FR+OgDvHOeYeraxbHmA/pVHu
	 vr6yfWd+M3YmEC/X2HhzIWkhBJ1KZ24QVzLYDDNYpEbsHqrPfy2arQ60GRk1x25a/j
	 BtQkfUCnhkDGPStXtsnkstu93Zsd/pggpFpwlt9IbpB2P55Z/HnhioJa3kQ5ybD0P5
	 yiurvKlCymMsUA4iR5Qe/2hipmZtdd4hldYs/ubvpj3U9EvN153MXcPSDI63PxOsyN
	 WmfjwJpQ8BDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D69CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828499358.6674.17370423792460864741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcf8c1edaf73417927c613726d99547e9bdcb1930b9da7d0c44eeb0e23f4df2
Date: Fri, 19 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758284993
