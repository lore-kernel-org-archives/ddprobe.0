Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA51405F7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788394234; cv=none; b=ei9y8ONynWpQ3qqwIXDfhxoAHUkBrG4KDFXt0n9ftJBaVEGJz1LHrIvxgFbSLOMufpwUUH/c5XkDpu+3k+IvCKr3Nr/HhL6iaaLXcGGjLq3FYLtef6RMb+uGTuQ5D0zL+Gorfwba+4T1EHZUcrwI5xRJB1jGY2sIP86JqxJByW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788394234; c=relaxed/simple;
	bh=XtAQqws6Ep0SSDH0GoKuLv0CgUgZA6IrlNsVEmxmtX8=;
	h=To:Subject:From:Message-Id:Date; b=UQQGLGngeaDmw+c/XqY5wzyMv0iZxzIuOODKS6vVqxrRO9JY2wZwuJsZuUHkNB+QJe1Va5gj/iqloSXpGp2+dhSbQ80nXwIbLB1GcY1f1/u8ZkVk7zw806ITalJhfAP5q8lmuTFeB1a498K13gJhFY71vn4w5pHP1bAPXzunYR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8JnlVk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8JnlVk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38EEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788394233;
	bh=XtAQqws6Ep0SSDH0GoKuLv0CgUgZA6IrlNsVEmxmtX8=;
	h=To:Subject:From:Date:From;
	b=t8JnlVk2R2UewVzuOPlPUCGQGNoTMUoAj2HM6F2eTP0Y2UjNZ8M/DIyO1XCLI51aO
	 9ewt871omAGNTRB/3/Tx90MQjGO1XKGrKND/UnufzalLUSCNC1xl3+a3iAodt6/v5n
	 cplebdQ0I7Hi/WMiodd/TI0kGvo3RUg+c4Sw/19UtbhV+xmp73CTLuA1hBVBke60KC
	 IBerjCjQHKxkX6ZHHzk0px78R4Ak0NN+t23Ddj2qYTDQ/f6Kc5fxdtPcynRLwGSvWw
	 mP9DQ7y3vekwxN7AKm3bHaY/iYtBXIIZ/qlFLL56zRlj89/KysuFq/Tb4rPZnllBvz
	 SubMapnl3AEEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A9C624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839423368.31793.7813929976999704593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109fd751364f6aee40b37ab293347c6d43399fc02060bcd97f061c87267384ef
Date: Thu, 03 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788394233
