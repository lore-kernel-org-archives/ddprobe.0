Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4157E28C841
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760089197; cv=none; b=c2mYV3C6pS+LrNdqcHwG99Yc3QDQdeKxiWpvOuP2xD+0jz1Yfp/i/x8rk4cjHC2RWoemOX0muacM5+d9WZNSsSv4CtX+A34JYJCv7u2nAI6chmUrRNHugB1SiyMY3B1dzXyofjLlxtR74Wk/A8U4qpleyLUxSTIzczVxnf1kwHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760089197; c=relaxed/simple;
	bh=klscYuvonG0GZ083E+K/38T1JUWMpAzDj8FVt7kTTHc=;
	h=To:Subject:From:Message-Id:Date; b=GUEnHzdSQMbR7nOBJIhsLQie8nE/qT0r3ZfwykDz7g8prYJ7y6TKU8ZSMRDvlsXwnmR85T6PTeU1x08aWy19RROhmMZEMiz3V5Ys4rEUHYx1W4QGzv4tG+/YVXrteSfrBJVTF3ThG/Ys2mueQzhKrfV9NUrz8DjoZxgazmuINjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtfxXF8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtfxXF8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760089193;
	bh=klscYuvonG0GZ083E+K/38T1JUWMpAzDj8FVt7kTTHc=;
	h=To:Subject:From:Date:From;
	b=QtfxXF8AKUWzanyW5d9tmgTWCfr1aEaoarJldQuZfQQlO2KLxl8SSCMDz/Idi6/5q
	 9RbGkX7PYpbOiWvnIjGZoQrg01x0eAzHIyviX3+aUFnN3q9a0Zz24JrW4LJWGfQDZ4
	 IBcf5eumTxYarmZveyqm+dxrwgWgYw95TIp30zrVGYv0CstBdpqrcMDVULpHB9Z1IC
	 aD+I+a8YJV1MNlvIIsB1HYthbgY9btYWAEodszcc4iDK/qIzIniRJ1+VAzADuWXbuk
	 jAS/jAKxxzZO5avTXASpKL8yj+bglVDDjWxeSs+pSKF2l0V/JJYZV7Qq8GGiDQJWIW
	 bpNEnPyzu6F8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91978CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008919358.16422.14258042785456078976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6540445c5e09b252f582bfd951595288bd44cad909ff890db8325f834f235446
Date: Fri, 10 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760089193
