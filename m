Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BEF200110
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757794794; cv=none; b=RAAW+lwkknGNKpvBCHl1px2g7U85KNCC6ssaLPHqLYV8dQtjNZYUviACwh7t0AuJ6nuHywqQXSEC3ESkVpN3VotHgDqCbdYyA0MKewQU15B83jAVLSc7MXVDkTKN4FO9E8pzXZ/H911HxV9XDL/CC9737O7ybbZ8+qslU6oKvZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757794794; c=relaxed/simple;
	bh=QiucM9wwX7EOOUhXSHOXEj2s19H8BJx31mu7WfejIws=;
	h=To:Subject:From:Message-Id:Date; b=Rg6qlucJ8bj6YQJHjTMVV388jckbuxxjp88ntq3JGhU8SERBIA3wrCPdek7627km5XdJhobnjp++PNjlfExU5GKV3VMfSFtyF+NcHEI+R97ispdaqWpcSd/QX9QRfJsIZWO83IH9UbRoFsZIZda6BZPkZx+oYjXKgISa3qLPcyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMiiEfE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMiiEfE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C71C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757794793;
	bh=QiucM9wwX7EOOUhXSHOXEj2s19H8BJx31mu7WfejIws=;
	h=To:Subject:From:Date:From;
	b=lMiiEfE0y/lAabzLNenvJkhQGtR2+CmVSbWSVHmFIGB0I0Sq/spwApL+5Mx+d+wys
	 muKbQy025eBS9V7MCk1WAmpMUXyhCR7MRpGUR3lve6N47497PIX2EDhyRaOqA7P2vq
	 jVZICzJ88GAG6/5qCFNr29oyJeW+X4bCSAg0bKcd9t5tqsLBhAqvXZG9NmrkAVjE7v
	 qp46zCpma1rCW2Erme2o/9ipTTaR2XJgmWgu0l+4jPrYNiHz3msD7dTh6syJ2duci4
	 dJ70GMixQmCxoA0EBh6gtG9Jut+jfEsvCfJ4EGtYrt9zrpzUkqM171pksg6o95XBey
	 DlW3srzv2VeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94468CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779479357.30274.5330706185492758791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2d0de26925e83e4dc27b2e2dbdaa0f0063278b61ff893513277bfaa3ab113e
Date: Sat, 13 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757794793
