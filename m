Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B42217F27
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781705794; cv=none; b=iAwym7pk2KolS+ShKL9MSgIe5xZc8E28tsJI/BMhYNFKQJdkXCs0Rix89MfNZ91bJZqh2kEWUfiqgr6gPqJJJsiLtWoXDhVnrsi1XeCppGzd0OY6v+Y7M8wpRt3efkbaB5BN97WJ9RGoIeRrUj0R5ho8MU4QvxKI8jTqck/t7MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781705794; c=relaxed/simple;
	bh=TFjoXrLqz8grarFFvu4KQ80XD0K1ZVbT9yMud3C7mgw=;
	h=To:Subject:From:Message-Id:Date; b=jxn+WC966r+b4okAZH6th3AC0teLGwz3kmbdqgTuou++c/dZo355qvDRFTgStCtOmQuPcFpyY493vguAW4I/PS2VCJcBriHsbaowZukssVghvYyRKDYOZD/pxO3qZj2HCfk+VTmSp5bXtM95r9uNhDJOOOnyr8XCeIBN6ZBFkjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuzRpyik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuzRpyik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD54FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781705793;
	bh=TFjoXrLqz8grarFFvu4KQ80XD0K1ZVbT9yMud3C7mgw=;
	h=To:Subject:From:Date:From;
	b=JuzRpyik9pMTSEY0kUBY+G0zXkSeWwb/0/NfBIozKV+kdGPlBxgMB8AF5dK/uZ6qg
	 WEWGTVNoQSTHuOit6VLvNMQ1D8bmFXlFHe91DaFGrPE54qAsdswSk6OgR4XTnXuiJU
	 U0l4YEfPv0S4rGoiyRq2Ps8fql/WqNoNMhUSCFanFWAHBCTM92IPtowfYvggYqeSdE
	 7pvX4pEqVmyfaLN3IYh+qf0f1BoobJ2mQs0O1ikahZ5jNoUho+pRCk5m1klQyu1Jlk
	 2OpVysGatctHn1prXA9ATsTMdQG5CZ9pbKQz586lEGV2jkzx3EIC8aov1WDGSZnjrl
	 Xy8UGg7kIWESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0558CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170579371.1932.3402385459588223006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90b6682ce66312c812a0d6b253f1b1027fb7a6969779e7bdb2711b172cabd41
Date: Wed, 17 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781705793
