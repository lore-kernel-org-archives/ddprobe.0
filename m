Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400C3372
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721495154; cv=none; b=ItL3Ul65VQyDyNLgk1bihVUeN4dBwHDZ9s8MhA6t/+32T8JEWjfO+8lnvWCygQAZznBYYYly3uVY84lumiD9VQ7FRAvd/Vha/+zFTI5JT7UlNS65/6PmO5Vl1oDzhgcSYzxHCc4/8L31f31tfBe6JJHMva/cdN+oVcYT5u0fihA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721495154; c=relaxed/simple;
	bh=DyCjCBwVL0h15H2pPJa1nCwFfIgtzjlkKO3X+aId3XA=;
	h=To:Subject:From:Message-Id:Date; b=Nn07TXv/N0nbR0ttOYTmU6buvcg7DzsNEc1aCjQGgtNy3s/6PpFmQcE89ELIIKiD+gofnWlyAwMtQe5CBbaDtpyXalT+xPqqAIyrRcXbZcgdeXE0c2BWE2vzLuJylBrHQbUsJXOiQc+Fk4R04qF8DIRTseeAYFYEzWOSp9W7gXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj4m4Tvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj4m4Tvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F76C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721495153;
	bh=DyCjCBwVL0h15H2pPJa1nCwFfIgtzjlkKO3X+aId3XA=;
	h=To:Subject:From:Date:From;
	b=Cj4m4TvtmQZRtV2Q/AWPH3sXDaP0ArRtET+9rATXQTHByxcExUtCSvKuFC93AzIP2
	 bD5Be+ZUHLo/3VC1JXrxnu/aycOZbRWAB2lUikl9KKCywZqY5p/qeXX7TNOvdI3fNp
	 udIcSLoqOU2mdaDLwjQTQJhIfJ0O8j3pLASVJBk4j50itXxnKupGmpTz+QquZ/LUF2
	 kAY+BpSybDXAMqSMwYdeObNFZq4BMcJ7kHL9P+CXHlfmL7FBCn35B8tpUhleeOBZak
	 0g6N8/3J5j0sk43G/oGLOPm8OPshBHMWgDYbDlggDgl+XJKGT++JMWfHni9Q4dMxI/
	 PjYl2GLt8eONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0956C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149515369.23414.5869861270436813607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2dbe510a189030b287544279f9b2047d0971f237455e03a53645b67fa6d1f3
Date: Sat, 20 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721495153
