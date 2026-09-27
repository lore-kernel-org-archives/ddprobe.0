Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDAF353A7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790537434; cv=none; b=bmdzzXUzxI0ATOgiO8jIxyvM6euNDvnEyrAu21zmzphzlYc0Mfit92QtJysBwC5biRYmq6X1d3BYpYgULZHeBNnoC1q2bZudm52IujtY/QhCfjcRydsruLS00jsmlweluvsPb5RbJXiXOjVM+rkn+PQ/KFO0Ck+CksMPHSMvO+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790537434; c=relaxed/simple;
	bh=SjZ+hbH427w69qsbLcZoPDgkkZe5XEqM1oNzoEI06mw=;
	h=To:Subject:From:Message-Id:Date; b=QqDrprEEe7QJ+0APgvYTx+irZ/CjPg0+z8wLDqMM3VwGE9KeBIqRK+r+GKbbae3WH+IGl2b8G5A28Tg/EMfG8jIGsZw8Qe7NerufuGmT3E/OMQ9Kne9JGEarcy4SRLbpfGY3oMNHQJyCv/gBeAHcIoguYHB29LkjRX9uB5UmO3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8KBbggF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8KBbggF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F40BCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790537434;
	bh=SjZ+hbH427w69qsbLcZoPDgkkZe5XEqM1oNzoEI06mw=;
	h=To:Subject:From:Date:From;
	b=Z8KBbggFLG7RUfv9qLeyQbpZmvR4bizrBl4m6QyjhdUL2Sp/w4yEiv0bMRMG/iwqR
	 sLcQfHyTHj/PvCIs0TFBRa+7FRlbIYTruNHrht2vracSvOXl7E2Lmz40oG0QYsvqJy
	 m86nNB0csso2E1y1hBrb0Kz1L7XDlTQ2WAVuM/CeeSoyp5xPZBCWRqAzUTYWqGBmCH
	 oEOvjDz7x6VX4gW8LiTrK7NtLWzS9Ihxy1li0xncIDHisBXeYKC2NFCK2ZbQkNaZSd
	 icUN6PIk4OPbWnOKt7azPNUx+i/Pwy5iEoB34yzNk7QDSXb5DvT0PvoCvbF7cmeDGc
	 HAKwRUOyaSyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AD3C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053743370.24494.13048116568678685075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61593fbff8dda3c5e1f662e8ca71bcf2102f9a44583c98c9171e6382fdd06b4
Date: Sun, 27 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790537433
