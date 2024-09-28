Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A332AEEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727564754; cv=none; b=eWRgpIsgmc0EB8r6S1LXVwUcb0645tvHWP7Uoz+Dbw1seH5kuQIBKJL/2Xs40n/KCb7rQbcHq3QlJxtlOGBwJpwgGPv3MW/o7GcroUfL2jUul8+QEZVtAdE0nYsskotmbXJpp23ocq19CNe2owKEIfVcdqaw47PUx7ZjRZo/nGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727564754; c=relaxed/simple;
	bh=uOheu2h8tgZYZBOhteG1XRBLjx90jyfiwTcBkBoNnvA=;
	h=To:Subject:From:Message-Id:Date; b=RkAUZ4b6xiD8AvIKMtr+UhgBdl7bPU5BIYusUyr6eydpkvWst2OrETPzVwNK1mYKya9wQ4bkXMyYm5+0JrihJvIXL9MRebqgp29dp7ZnPgLpkqVpRe8WfghZtSl5lzwSdvzU7rCmbyqRDRkVSpqyv42nAdr0K5zxOWxwH4zNK7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LV0/WLNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LV0/WLNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8704C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727564753;
	bh=uOheu2h8tgZYZBOhteG1XRBLjx90jyfiwTcBkBoNnvA=;
	h=To:Subject:From:Date:From;
	b=LV0/WLNb1bSGUheAh+UYvNg+2S4pQOmUpQ3p/DOl09PPXVwubX2b16W4dx4IrCKh7
	 WQ4wAWeCOe338kkKdNPNwTMaDr5XMYB6DRye4cklH/irPi8bI93Zp7x3SzCyCSLlfI
	 Mvby9MNJihOIRw760TNabxCaHjKliZQop4DuBJe4xGso34kC2Sgb692HKSt3rEZ/ar
	 vaylKxHrf/wLG8gMhDzmVvdEjOgLk67037fBY3i6nd2wcLoVVd6jSHDOZqQ+NAtVWg
	 Z8YhRjP0UCsgc2iPJS5N1RINLvU+T9PsfCMBUeayMQ/PbBhsfwPzzfK5eH7ryrXjCM
	 Pl01A5fvD9mAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95875CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756475357.14942.9363509200964234911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7966ee3f42101d100bd84f0c77a98a3983f65d29759b1d62b47ffdb98e677a
Date: Sat, 28 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727564753
