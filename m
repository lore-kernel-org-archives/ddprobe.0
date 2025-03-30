Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBFB4C81
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743309595; cv=none; b=QOIT2jMv7hjTaPHDMtQahbauZfX2xUGm+B4oMzRLm2acdYm5yvlUErGu4q06NJZXc81WAZT+PoFr5qT1GGHMLNjTD2Ogg3JDpcyn9kG4W0sG9KknjVpQSWMmLdDwpNiJlwkhCOpm3njXZlyh8TfrwZxezvGpIdZEDRAYRoZjWfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743309595; c=relaxed/simple;
	bh=gIAeSlAxIrDVU6j0x9exZSve5RNHKEqHe/FE8UDVuuY=;
	h=To:Subject:From:Message-Id:Date; b=WHWaxt6Sk8Vwrm9ry4yUOdP7cbDA1JKLuW/XO2MLGsNANPNOKV3v8lh+1B6b7Jk73ImdyRY1viyrrUyjmn8QaSyr1zlBLJOnZTeyYdnAJQXhTBYVu/vJodM/lRQbmqm8O7+WHiShitr/FCW+7LCtVZr7ch6prfwFVxXG/hgcPng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha/Anaxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha/Anaxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AC3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743309593;
	bh=gIAeSlAxIrDVU6j0x9exZSve5RNHKEqHe/FE8UDVuuY=;
	h=To:Subject:From:Date:From;
	b=ha/Anaxz3PzdIbZ+LHinS+/AGv2OvJdBqqATpiyfmNJplaDVAwUcpn/Bcj7+HMJ6A
	 XG3KhsrQZDnhYSvn+/N1XcCGq8qmygjrPm/40CXJ/Xv89fQ4D1J9rQFtrNDHwEhRul
	 Z4m/9cTfkJy6OlxOS/LxO+/vN0Zdh0x+fujCSBw7DwiRjh26HSMmyT0WR/4GJMna9j
	 WqYAhb/As+b66eZpH/yVXjJEEcwl7QsezMsvxnAvUz9nPdrp4beif4PazlMXE3tHMk
	 GNamQKy8I0eqUt7aLzTWbWJwzECxUNuS1pv5/rVIhVfvg8Y5SFmMWTn2RRO47V05HJ
	 WRf4fKEMdqf7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F43C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330959359.24125.3818639788595568342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f565b3eba9ccfae630035c70f4108875679f335f29cae2eab003633eb711c6b6
Date: Sun, 30 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743309593
