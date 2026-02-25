Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134E628682
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771979694; cv=none; b=O/CJpCyDbGMdeYA4gppUh4Mu8BvMkgbREtuTY68QDm16y3wEe97peiFQCAkESc6n+IqDVtHjNwMZGyhtbOraznM3kEoGikki36upLXQHtc52wH4kU6w0/xHXryND6YvedjPTzS7Y8evFf93R3fU1aYnKx+99F6L3dwhQOea+Y6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771979694; c=relaxed/simple;
	bh=3TvC+qFvudAFNrsMLcC9xakQGS2Ch3L61s3nqx11IMc=;
	h=To:Subject:From:Message-Id:Date; b=M8icmRLy03A30dMRH9WJis48Z/tMeynEZ/wKlOLao2N/KUruuQ4oOsI3FaNRVnIX0MJEUmHjyXDrRnXA6VB98+0PwySkRpS/xTkX4G5AjkxkcTS2LdqzQSVvaOrD293/ld1ThEltOLf4c0wm+/f58HShzqLluvlv/g7WZA2toCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvFFhY1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvFFhY1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A1C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771979693;
	bh=3TvC+qFvudAFNrsMLcC9xakQGS2Ch3L61s3nqx11IMc=;
	h=To:Subject:From:Date:From;
	b=EvFFhY1HEJUF7pldbkB8OYouFQsvpf7lPG9hFtLSVixxPPf2GS146GsceY+YU09cN
	 wGjuVFOPokfA8CJMuOC5OWYYUcKAMKcDjBRk26KdKYvuS1flfaF8fesonDrrOEdQ5N
	 rYZjwlaHh6dy5zs0/mbDOYDbsZae2CdKCeTS07nh3oGpumndHQPr332IiBN1FlMTrE
	 R9a5OXVPpQzF3/SGrURJBs8Idu/JNNtGs+UZdsroqAnficCu0lRyYerE6g+BzPY2Ww
	 0haulfhjNA/T+1RWLwxBwQE2QKeTJ9Z2DiD4wiSm4Sh6jkkyQTsvOtiPBiEfa4AAYq
	 NXUeM9JdDpC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B77F55425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197969358.9270.3140877624027056728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26be08cd2aa4f8ef351a61adfad15218f0de758ff83f1c74f06fd2e3a3c2dd75
Date: Wed, 25 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771979693
