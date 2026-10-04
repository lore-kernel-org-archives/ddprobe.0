Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C703F3289
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791157234; cv=none; b=PtB2RTQZjD6MOkhcGpc7BIMWSEho+tVjQ5uKA5YhTOx3jzVgPB/dzfvpV27kEYajI8AbgO1d0Q8zHEobiXLGXofRZs/QT+qQKaUgvjMWj9wNKHs6XN37kmGOzqiTU5fNUAB2e3oqWOGkpJzekURKAKIZ/27pLnDkQJ65PA2tssU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791157234; c=relaxed/simple;
	bh=1vhtgzoC+uyduMDk/fA/OU5NRn7YWm2DkZsrEJptEGM=;
	h=To:Subject:From:Message-Id:Date; b=BwgJGI21TmpHAuNSZ0T0o9kTNCUC7mxSXoO4Vj92HL0jtPPHzWTjoR0ilCM7z2CB+sJyrvHW7WihJvmQrTcltsFBU1uG9io2iNd2VCItqPUScpFUONX4+SsDuxelMrA9Pssmr0EjqcBgfhcN4I+LbMblcT20X+BtcUioNoySZ8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJxBcxqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJxBcxqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F1CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791157233;
	bh=1vhtgzoC+uyduMDk/fA/OU5NRn7YWm2DkZsrEJptEGM=;
	h=To:Subject:From:Date:From;
	b=TJxBcxqm5kHmlUTZzv6bHA/OeCXjES6JTeICcnSGvKHzz7vw0iyKWFjXE0VuBCbKF
	 13SV8Bxsnm2xX5oqpO3gV5f+GNUrpNORs0hFanluRqL9kPLQD8yG2Y8wDySb4d8cLZ
	 DQNE/0BbBvQJs0qmPyeCUXNCnFNlo88R39vprDKRfnv6tqiLOEgu+o9zu4g/R4WCY9
	 71EPSKK6dBrO3KGSkcIAXCNfewLIA56zYdcQ6pTi541zShsgYvXkGGeMi2a9sEBc1y
	 0RZrFvgmGFemgAXB0UbHUyltQwfxXVXFu8bbcNLNxjYJLs4RWAy9aHpAQxEtFCf/GH
	 CuF/qQqncFcZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0545CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115723368.28721.3858794419766781833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21e70bbe453206444276d37c12f3f6335b419cf6f2899126552c8dcd5961ab8
Date: Sun, 04 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791157233
