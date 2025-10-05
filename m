Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB5A2629F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759699194; cv=none; b=SHCK68zxAJPNqSUrk5m7o58eAFIV/zz64c2B2JvEwZE4y4MT4l8ljKM4WRrKonn7ra2xgsocCc+jRpiOf9/t+hjhN8uqpVtxIF2amgX0r6DMd1tM/2dg8uh0y7Sm8P9MzUqqGZR1iqr/XvKp17bdMfjlZNFlvJETLoYTYQUSSCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759699194; c=relaxed/simple;
	bh=PmiYvxMwpQo0sTbXAfvmV+g7tM2fqVgBLng/6nW3R9Q=;
	h=To:Subject:From:Message-Id:Date; b=ISV4Zb0x/Rifcs7+ej3jvkNMXVk9nn/KLwcDG7cHGcR4/JSUBFgRfXnLxDV4VHEU/WWXkBVInZfr3hhjlP2idWnTOiUJW1QCkBgzzehEBQKT1fZBFdIjHK4Sps6rDy3IHF8kb2XGa6BKGlr7hES7nR/jjm5R5ELh9b+zdxMlDo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO0z/vK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO0z/vK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A0C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759699193;
	bh=PmiYvxMwpQo0sTbXAfvmV+g7tM2fqVgBLng/6nW3R9Q=;
	h=To:Subject:From:Date:From;
	b=aO0z/vK3sOyKFMaIw+J3A7k9301QXYLMpnzxaiSYkCIBV4JVv1PIOg4WPJ/34Ad8r
	 0/iKbhSSHAwbdR9LQlcFHPmbU+LBStJSF6EBDeiF0Eovw6OX2Y8fEQehThkgozKIit
	 iV4qyPtMgYO3xo1Wr8MlHORgB0HhiicKSggZppMnDzt0H/t7Pm8UOd3dkkL/7pCQ8n
	 T3TKJUdn3ROivAj2Kw5VPDng7qCc5YdoYeImK2NBGXOkq0IKdm5Mw+9VkwlkEPj69h
	 3cad4JOeAPzTWMwGIFUmngIqdoRq+3yQRFvIh6QcGv+84vRQRZvVOBaCPL7rYw8CxG
	 zx0/HxWjnnb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91703CCA472
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969919357.26310.12802767620585577771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb16e83de26cfb1a17be1b2806ee8002d0c0a9629dea8ce94d9f9bf4f89f3d7
Date: Sun, 05 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759699193
