Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228DB35CBAF
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770293634; cv=none; b=oZiPVkFaaFxf3dCv7IM/Dn+LpM5YdMomYg4pOZdXNUbllN7pVL81WV2TgKwBy1j0o5XjYg4DNhIlMJNW7089CWEVpoB/aIC47N4Zx8quov2GRGM+34BRdsJkroIHxCDRibEg8c5P2/SF8o5gX7mOg06ScnjcpzUeZIzuNO5BHAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770293634; c=relaxed/simple;
	bh=Scz0ALzXJdEhdKcJVJmlJeVfnEqKKQM/RScQa2b3Yc8=;
	h=To:Subject:From:Message-Id:Date; b=Hw/zcWOnxonfEyCa4H8AuctG0sdGdsKOoZc4D67feCGGMU7kT6eWHvVHXZfXxLQbXwyURBUZ/f+YlGcZ6K7ECZu/FHQ1CjwJdjen28xnXYW43g6dY0DFqHJGOcXY8vVnDyBypSbPYKEDfhyKSTkUowxuoNvD0RNJCXV4Yn8cdaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OH+GGBpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OH+GGBpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8079C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770293633;
	bh=Scz0ALzXJdEhdKcJVJmlJeVfnEqKKQM/RScQa2b3Yc8=;
	h=To:Subject:From:Date:From;
	b=OH+GGBpgx/SwxEoiyWOYVezxiVj3IFiTBVPoLDTR8THPmoKhnQGPbIEwbeSUT+Fu2
	 s2sktuYyXiBcT6kBkNqG0cCGjQpXByl+o4UbN77NgL9Id7Ndvx7a8bbus6E3DUISaN
	 +TcAoY7d8MBBzcUe5khM3qUDcCZjE1+jF24u9RB6SkMmOR9TAMD4Jq9y/kO3qogyNn
	 40ir8jIGdrnjqN6RVyl5Gz5zNPurv9WaMJ8Cfr7d3b19WYLY3fYrsFckxFQsvbmKur
	 aC/ODBFDvGcwt2OGLpwh/4zINmlxPagW79LYf0mm1Rhc3wqUHrb28sBxF1j/3iBAwt
	 4J21/7xMGJPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA2EC1EA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029363359.17556.3750453514994459893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cd1b37329fb5beb0c50b755d13b19f3c966556b4477f8ceb2e45a9f4c63b3d
Date: Thu, 05 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770293633
