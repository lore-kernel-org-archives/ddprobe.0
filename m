Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD4348C5A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783694314; cv=none; b=iytvwZDktNT3ZdO/hvZTFtC2Cs5o0zCFmJF2ypNrRMADlvbY7NVmEHJj4jKDkwfHVUu5Qy6FUhcuoZEXxsfssJm7Y7jMXvlfZ+UZPMhNmS4j3bCyTinx/JmOeQxUJ8YYEqgxd5CMbszJc++tQoKJaUAD5/MzAHZDtJa6+bBnijQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783694314; c=relaxed/simple;
	bh=Soh+YeNbBdUn333+JJsk9VD0BwSYwmaCUmIs7rdNj/M=;
	h=To:Subject:From:Message-Id:Date; b=Pia3QiVN+Q9b14fxABbl5M3IrSUyoGVn7V7QPfqHbv+5MYyR20QWsQIrUmfNMt5qTmD4AjFOIKxQkaQLAP5PVBmuHiy28ptkgXllfYJNPYzpBN4FSiguHT/gNSIsPUCz4YRTSTWaRVHJECjqCo4ILGBuirpFkGGBkTsQ66+gKU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/wcFrVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/wcFrVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA648C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783694313;
	bh=Soh+YeNbBdUn333+JJsk9VD0BwSYwmaCUmIs7rdNj/M=;
	h=To:Subject:From:Date:From;
	b=q/wcFrVBX0cYgjW/LBtkz5t/KDnuuyf8jg3vjRXF2Ms5eovv5qhmAey/3JPv0covk
	 TIjWskfGiGBXHzVNgMZ7EzzgQTdJ2ti9SZ+TDPpL7cLEfH8FmU9PJH4rLjre83NlOO
	 e5xlr14UzYf+zZjT+7jNQZ7bHpXt778Rv+TU3ti/uG4ifcAF/voSRcgKyg2+vZqVKV
	 nzqwRlr1C9GoTWRcDjVCD4O6mwXwBAUwm5OPk7sncHbIJ9XfJi66t8SgYEvjVq8RAp
	 xkPRlwoGW+N3KJ4Agvx2gXqcWrmZauBvtWEcx1Xrq4GCA2hh0EtH6uvorNOnk57Sp/
	 clprEhi3Mz0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB2C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369431368.27710.5286882677761646598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1c398695dd174d00ff19f28d531a62587310d4c532277724c3ac5fbf16ac1f
Date: Fri, 10 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783694313
