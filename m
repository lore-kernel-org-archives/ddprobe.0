Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3E5274FE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790487634; cv=none; b=Xs4N3lngGFopZCPqAOMONiqDBIoR+7GvXtieHaQIHpE4uWibBn8+8G5TFvLWonBF+8ZJNotUqYTHhJKDREMs2rKX3BT5vKpaXwbSicX7KPWaunomThnetWvBNvOImv9jzLIfDehPNt/hFvD7EBUilCjrDUm5tvjoyAPJFyUBK9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790487634; c=relaxed/simple;
	bh=FLgx1U3ZJyvd3dukzYSfA6ouoD5qvHngEkipncMxLHc=;
	h=To:Subject:From:Message-Id:Date; b=cL4XRiUDTMKn7nT9UHCy4K25fbiueG+4fXTJ5DgjeFh8KqDnhz9dokOOYBCikFT+BqiaYcYj8ZVnYNNZPdZqXPbEUExxS+xqX1ZbmXJZhJ+TQeDvlyABaoWsbJk8xrI+43krjj+p2tepipVe2AMS1rcZNF1NK96FtTSDyjw9kTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoLE+cAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoLE+cAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9291C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790487633;
	bh=FLgx1U3ZJyvd3dukzYSfA6ouoD5qvHngEkipncMxLHc=;
	h=To:Subject:From:Date:From;
	b=WoLE+cADCsZO6cqDGdegIIUhcT6wKp38kofXV4NXG5EIRD4PoMj4qXtFWyS7e+8XP
	 HZs3sq0Q7sd2iGS4wr1Rule35ZsOpH6SoLmDafMxWJIvIaLeLiaPx/Qo3YqpZJNhvo
	 LAchfPkTerMSjDxlufSYGSRRMMS9qyn4wLqarDmT1Rz8uxixpcQAO9iOXrhswhMw2f
	 sYNtLAMj4Inbyx7NtfVMVbLiHsiOJtxW6ScqLWnpUTC83QmEhzGuIdI/gjIOORtPF2
	 oLPDjBpsF6PnK4jHPB9N8xlf5S+GEWalR4/PKLJPROZ6PpXz5PG9y8KLWp+smUPwWo
	 RXksSmZv+0eBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1028C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048763369.12788.4781894100096171376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b02f29f551e60fc12713969a4e746543f4895d1a7436fd1b400df2183634d8c
Date: Sun, 27 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790487633
