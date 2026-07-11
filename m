Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F01A3093A6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783813114; cv=none; b=UO4d5b+IOcQ+OywPR+/7i/hCcQMcRBL7pJL5K7gm4SdRUT9nFbo/BbD62SAK+u90gbc/9vCwhymO4M9POwtEAHANB1Pb3Hkl8uheGHclbWeifT2c/+/fr8E8O1TC2ISOfqSAC/6MoNvnQF3kSoq5I7evNEBZc746M4DHV6GN9Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783813114; c=relaxed/simple;
	bh=9l4/l6OZczHTSvbTC/uiN2nwYP1nZsxHqvqlLnYbCWE=;
	h=To:Subject:From:Message-Id:Date; b=VTrKezTVjY9X1/5wqE6VoXWI49u/3aosHe3pcPVrnl9ahlFEuEnxOhCHOgLrw8C5whTuMKhXlcKPrQKfLNL3XXHyhNwBjvpzCIvHBhxKIrlIeTL2mhSYhnOQArifxeLgEo+5J+OweLra83rhWpOr+6hexPYemnenTEfTmOv9TFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc19IbPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc19IbPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5295C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783813113;
	bh=9l4/l6OZczHTSvbTC/uiN2nwYP1nZsxHqvqlLnYbCWE=;
	h=To:Subject:From:Date:From;
	b=Cc19IbPFWeTKjPnWcV78xsZWcMpJWpRNraaYN9Ntn/IHsgA7t66wjNl4lXJaQbmFi
	 K0lgkBUpBwB74isfvht150dbe32gI4ywZ2Mse1BrqqLwhJSQqyoV2AvKoeeJMDeoXt
	 tdofVZiKQ12rK/eaLeinQ0ZtIdD0dt5tOnF1GQX4xYOWhM58bAUA/bLXXKMwhcEj4O
	 hy10vje2d68uMHpG9oYvm9wAF41M2KvG8igIPf5ITdvjYifTAsfpgmyP6TU2t25vOR
	 VrnEQtucC/wm8Wp2ba/u6gX1RHkDX+FsTdGwnNRCjFNp/86QJQfp28KeUQKUJW7RrG
	 OkHA+mxPNygdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3433C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381311368.30252.11047731387296631596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025358379bc4e21590d3d116ca67b5fb701cf9136f2ecffb965276f3d719cdaa
Date: Sat, 11 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783813113
