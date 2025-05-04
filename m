Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36652DDC3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746401394; cv=none; b=jPWKvj+HE6LlRg4+UGlNOhSjgyKcjQnOE8j8GsFQAmUy7oQSGNizfglaEzHxaLY7pjjuxBTTM/tGDg+JMnKxIbSIdejcimrBJbzYCPffwOzkvPhmAEEjt6N2Iun4sLOm75cFfy3JwcbDW5KzUXmt6t+DkFlUbfvQxHvY6uUtGDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746401394; c=relaxed/simple;
	bh=JhPexoS2p9989hZeC0nzLysY/WHC5og9QJKB/knZUpU=;
	h=To:Subject:From:Message-Id:Date; b=KLeDCoSpX3njiZ0S4VZwYykVAyf47zd40+MhX/nxpWHk2+2Pgr622QYAayMB0AriNpGuqdQTP/8jku+H60xIocKat6HHu9IWnj2REACCdSrNpvoCVN5LY3l3XUJri62cDbJ7AnFbmznuadGCiGcPGUsF+ASPJ1AElEQxC53Zmlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq/kdXhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq/kdXhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB40C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746401393;
	bh=JhPexoS2p9989hZeC0nzLysY/WHC5og9QJKB/knZUpU=;
	h=To:Subject:From:Date:From;
	b=kq/kdXhK5VFWw7OsVLGeednNprs3duePmYqMHHQVCVr8ph9Nr6XGuDQB4t37qkZzl
	 CmWRoHLNJdkemVPE3cqgUVNOFbyrE3RD1VIyb5Y6VW8pCQDOIyARLO1BqVK4CgJuEN
	 A2ibxU6eptZ3fBlN5vlkTrnF4pPV58//Pq5/GFFIx/1t6B1FCDiFfPNUTTdX38XC1w
	 R0wz9Xkx0ZMABGiJivxNe8imv6gCsLhuwDmC7shGsy+IAeZ6ORwR6RyDSAJQpwEqXs
	 vz5BDW+GJT42Nwhzht3OSGjsYJ3zDOX7oanwai+srbiWIgZwccHFUHW0eB++CUHB8K
	 qWZFt+l8ZzQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994FDC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640139359.11329.6309965465059382574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc28171eabe06c9dbc204d7d5801a50dd6df1b4043395e990a1570c52be98c7
Date: Sun, 04 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746401393
