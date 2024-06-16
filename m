Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492C219D8BA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718549903; cv=none; b=ig/jrsdIHxwRMFaF10cMm4ej61yv+EF0TdGKsGQYuXmHiXvSOTlDJEHnwmQ3BfIoczMmVqmHtfUIL47AYWJPMF/OgertltQ8YvUYDoMujHVdtL9ZPaKBOFpCYt4r0aZnZaSzTymUBqqm2MmT0Dmn1O2f+ZME3l137UozzZPssSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718549903; c=relaxed/simple;
	bh=yJKHzvOrwDeF4LSGYzPYK8WK8LiCVJxUx131LT4NWrM=;
	h=To:Subject:From:Message-Id:Date; b=ZVqGleNXp00mvy6QxZ2PqofwqeqJoSonbfrA6xNgKfZH2/LDN3WUbrJeza/EjLXuJhQekE7Z0+ArhwqBchY7or0dz/ApPXkswpUV2i0Di2d19oIMbREZePYiT4b+fMM+cBeDDDb+PTi4vGRudJb+SwHciuCCpgtmQURqFX0xdc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6brNDQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6brNDQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF68AC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718549902;
	bh=yJKHzvOrwDeF4LSGYzPYK8WK8LiCVJxUx131LT4NWrM=;
	h=To:Subject:From:Date:From;
	b=q6brNDQzC1MNvQ+M/87JbK1vGn0DM2+Mi8+fWEz5Yyr9jy2kQo/YVHOz9eflCyD1L
	 BGDnrr8vQCvWYrgEL3YhOJhCefMU26AEuUyobdKCN4xh9NEy6J7No8cKd4EhVPc45L
	 78+YC0gWxcdwRFM2ksLyBNG82wDHRn/xC0YfglkHSy279NZ6BBYl6gbiFKQ1CRulUd
	 QJ6Scv3MscHwrKxn/my8UPrl/uETCPSNto5ELbL5JljRGDk/cfniuep8vSft9y6AgL
	 o95RXSKmMybHU/wyv/u/0qR+qr5qzGvzVevJ0FB9M3mhdPrCPueDYRLhMgPoa36osE
	 uZozsGn3y+CQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA810C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854990275.10392.15809302708683072227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba89321f7649cefcfa3ca39ba343d555f1573313dc24bd02f569b4dbf90afcf
Date: Sun, 16 Jun 2024 14:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718549902
