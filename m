Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891236C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744589394; cv=none; b=Ie6Fh+xBqj6GdxEFcj8W6ii4jnhlBQq+BplrAYf/+XPivEKJ2aohrBMjL8Phifzy7TAFuSEl5tFviaZZp4pAo9+VhCb6rxZMZxNEHm529WjeOKZkbES9UDrfxosVyVFDKtApTFVYZhrUwCDLPzfhc33Xa+WMqPjd7uaOrIzo2o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744589394; c=relaxed/simple;
	bh=FJV6bpywolVeqkaILPYxLiGcKJR0C1jMEBPuaDFtxnQ=;
	h=To:Subject:From:Message-Id:Date; b=WwBE/Ah33ZG8FW+39ZK3zdcp6gJ7fBzTqr51ftXS3Ogkm+izoOsGHjUCzBQeO1YsyUWkgP1G7ZSDNXPX/Tz746/vzhUTW4OzPvWpmQuitNiQb7D7rPZ+e2IrKMsLq1LksFYxUbspAE77WMdvb7NqVoG/zJ6jvvrdWv+uyg7R/AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMNMXBHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMNMXBHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2CFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744589393;
	bh=FJV6bpywolVeqkaILPYxLiGcKJR0C1jMEBPuaDFtxnQ=;
	h=To:Subject:From:Date:From;
	b=bMNMXBHQ5GaiLfcKen+fV0FG44ezk97j/ELGtCs5TuYup1yowJeepGYYjoTpMcxBL
	 Fpvliqw6v2xx4v31KP0Utv9AsZ4io34fd2mrz/BzJED4ou2DaDNRIRZtQchM0QW7GA
	 fe6q1B1gyBzZ+Gkldu5iftyjSNbjo6+LhDKu2+MAJTCScLkNyQOpyEa8+ptZenBA89
	 /cEHzsjtXgPSiTDGvbI6QDw/5KFa42wVdCq+pHypZC5XmW7tyqa+wRIObZ3lxycF5y
	 FHeG02BskikuPTlmknrZPFGKy+nSRcc9svtD3wA0ZH/eky3c0UvFMS4CWyGqxrrVLd
	 Xt01m2t1cMJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB5C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458939360.20624.15604567506659326932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd02de66202e53d1786648b394fd290d97b41ac8435c421bd8391fb74af2eee
Date: Mon, 14 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744589393
