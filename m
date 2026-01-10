Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6A2346AF5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768055634; cv=none; b=k5Gt/gAONEywte1w1aifiUDZO8YkvSiaW8INIQ2L2CiTRtTVPKRKqmSsEqlS6sgZn0/Wz7TstHtN5NnswcKnfgp7gbc7Wxfs5w6TCZwxy1DJSMWAUtHAb/Wre4cxyZkTVS98TocsLfgsF5+gbujHGTt/elww8+yw4mKkFDlRadI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768055634; c=relaxed/simple;
	bh=7wTo6yV4WeAS/USdKc+8w7JXS3msIsIOaRR+ByUglSg=;
	h=To:Subject:From:Message-Id:Date; b=QD2Oz4eKwCsGxEqngQDtY3PJg315rFws84B2lsfup1E6p+5C0PSTz9DqccRyEbLLWL/5JtxwVEPq5afj35Icnk97QTfi0Yc44AdXVLMROFf19jWiX7R+nPgFw/fqnAuLd/3L1oRDch8TknprsrhpSXUJXvbM+NaWM8mAp0wBnXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ib8d93iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib8d93iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5443C116C6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768055633;
	bh=7wTo6yV4WeAS/USdKc+8w7JXS3msIsIOaRR+ByUglSg=;
	h=To:Subject:From:Date:From;
	b=Ib8d93iuLtyMCVJm/jgk4YAKnm3McBmEZ0O4zNukh2JqBdU5IJa3ur7MlTYMdp2+U
	 /Nv5KAB5cashR+ANwFJwSUsSDeVKIMTSxFLdpPS335jo6mk1D8DQqHh6stq5gKwhf5
	 jLtsgsfeGgMZmXWajIA681iMLxA/4xyhQGErE3eVvSQj7v5YP19hziaNJsQMlFKmTR
	 c3eWSyj0KffdvkacvdcCedGlr8W0IyyRt5eMOuWThclI2rKrwtdQ8XB7zssvRkt58j
	 OqXqTw821K96KogeFf8BX6cODfDtC8DZarif9KY4ptL7P2CdPaa4AFs8372Lk8pWRk
	 NZDCpNTl054Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972EAD277EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805563358.10795.17253931820534171117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f14e452d1ec68cc0817f3d15fe2b7980e629f5e631b0c6400e113e8233c961b
Date: Sat, 10 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768055633
