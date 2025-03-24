Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B32E3383
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742801394; cv=none; b=dQbYQROlRR94dGAc6Xx3id1Lj7LCCfV/5tqsYWSnSrFGNdFGfyUoSdFa2+czhV4d91NfxHqM7Igueb0ctIiOeDFNv7tfYHaZ0FOtJ2Vr5TiV84KrSSRrp83vz0pJRsCxkqpDihmvlHJ45TxSOn8X3pEdDpc8QwcgH/VvWYuycCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742801394; c=relaxed/simple;
	bh=gyeP8rKrlpljJptQmmKAU3DDb8w82aJdcM4xoE0voW4=;
	h=To:Subject:From:Message-Id:Date; b=r5ytv3U1HEWzP6kSMSbBXAlBGAUIKLw/zmyfXmL4piDazhfOGQzqT0rP7LXiABO+/uXOJo4QPrAzPZB3mJ14dfyaQkaMwCkz8iqmxpw8FYgPBpPL/tUINWt+Z+GEuR+ahgW4L09PUMOR2QD2kbJnUSe5JY3VVTsoQTD8nfrK7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPcLO5AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPcLO5AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B847EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742801393;
	bh=gyeP8rKrlpljJptQmmKAU3DDb8w82aJdcM4xoE0voW4=;
	h=To:Subject:From:Date:From;
	b=RPcLO5AN84dGKmSHT444VgHU+DhMcDz+CD8PYtzkFvr8P8KJrETfjihwso56t3Odj
	 6MAHbZOkeCSS23AHosyBxM0bKWx4jIqqEUvMeUkcmontrWxjZ+0YDojJBfBIt/AxA0
	 WZ54rEwisMAVG/csveJmp2nBcY53ROxtdioKDD9AYUhL8VakPg4vgXyrlbjqvNgsOR
	 CRkk2Wg2QJThV+ttcMzszDbt3Qn0i+BYawMpUePgqXq1K6oZ1hRQZ8+XQvDoQB8bTY
	 qtTSYis2fdgIcGLch9UrTzDFo1pZYdD6dg53F/EmZe/VDIoDp+rso1UA3Z4x+Vlj1y
	 ontEFKngGo+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4393C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280139365.10199.7235320060730664087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9b29c1505ebb2e953bda17d7b087a56ce4b4b4d777c0c3ae7e9f243d9bd5e1
Date: Mon, 24 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742801393
