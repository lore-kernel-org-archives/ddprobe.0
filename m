Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E4E2D238F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764329574; cv=none; b=GyOgH4VlZ0KTO+84VjwLpaAniHPdV+rc0Dzi2tyCeoi6L0a+Oki4xa1eS5EqM9FLXL5ojRmsH95zlmzFpUaWvtrfW13nyHqh/43CEcmyYsEO8+X3XmMV0ZZaXTJ8P85nT6inaamRPeG4YakWBTe6k0j9RzftHYBwRhEP9tRQ3O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764329574; c=relaxed/simple;
	bh=SV2NZ/NkYFrC//7KeXjAzstY8FjkfrSQxb/kwqQNr9Q=;
	h=To:Subject:From:Message-Id:Date; b=sHEeo8De+jrTeGqYaXJmKr3ZK1gjnGOP4V2HNPcVqGJbLV5rb+6lXsCFmD2N5UGWS+yhZB+qc10BJU/gvbt3G+Z0V7MOuBl8Ss1tq9hwZ3M666QXh7r5DMKX8QV9jSDQStAoRDVTNvV63UBZBkxPkuVSmojDwSeOzfxeI/AcEgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncNAi1YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncNAi1YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A486EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764329573;
	bh=SV2NZ/NkYFrC//7KeXjAzstY8FjkfrSQxb/kwqQNr9Q=;
	h=To:Subject:From:Date:From;
	b=ncNAi1YJt8fAZ2N0HEAYsyigp7D8mTGWrvjv7i+EfqikJWB2jloclEnxvfiZjYnIM
	 XGxmFYjVsgK0duBUU4JBC/xt2BjcB+oWZ/yQzVT4G3NsZDoucPpmQFO6Zb1hVENp/E
	 GB6Gj5/78YsQWSGZ4Sek4GKQ494S1FBEP1edFTKVxWIlsSjmgfAHd0WLHOpks6zRdP
	 TuhPGCB00/j5fpns9MtTHpEJ1I6vvUA8Uwm2PgyrppeZBQ/piPd2l9UXVA1PB9RA1E
	 e/h4qhhfzIecAvkm54Y1GWT+wqZxdgtBlfEvtEhcKP0XBUaglI4Ud7z2x3fQ30/G7B
	 KHITC/jLedEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C9D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432957358.10472.11149392065405554099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a992e8d6b5f04bef27d35e46ed42bc212c57127f773be2e88c634ff04ad10c
Date: Fri, 28 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764329573
