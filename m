Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFBB249EB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770006234; cv=none; b=aRFUlBkmBoruP8Rd9wN84QRBwXsROrFI7/gra0z97EpcbyPATf0jNLYBEZ7OKmWrcmqSmbvB0z7ymGVQrMwhSkf4H4UtdVmIe/86enVRwO5STenBnvf8Y1SKt1jG5mNVmOIasnhRHaLBBv9yOGKwas2w0+XP+Ox/RIBJybERl2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770006234; c=relaxed/simple;
	bh=/82gZByeuclvLzBdWKXt//mDd9EinGzkN80s+phjvuw=;
	h=To:Subject:From:Message-Id:Date; b=tK611eQg5Oe3UCubsLMPK3TOHWYvjpCksd2SdgAF2LUxxOVpVLRVttOgSRTBLi/4cabGc3T6AZAQL0owijRg6x0uo3ZgJpeNaZqBTjYiuNsdXc2D/8rKjjZ0ElAEw5s1hYa0NWXaAbKEoapJ+PSzdgRIJMQfrMpGEuouwLPa73Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBD3FeWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBD3FeWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C25FC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770006234;
	bh=/82gZByeuclvLzBdWKXt//mDd9EinGzkN80s+phjvuw=;
	h=To:Subject:From:Date:From;
	b=vBD3FeWjfXcmweHG3cfNPgtCl1iUFYvXpeDKr8xJlU86S8vPH0E2D2XgjeNLDLsj6
	 lXpgTyVYV/tcZPvIeh3by9uszCOTXqQPridbv+aHBbfMx4IcGaqGLd2u90YErRMlLn
	 /YKgYleF+Xdpu83rXJrpi3jW6+u80Rj80Gv8lAT4huG1ZihIFxT6sAMskQZUtgI6kM
	 D7G13CrlmqgIIwdb77sBzEOYmb2/GjsvrIqzvK/i+kxKoJoKWgus8fe5mi9mabBFIO
	 rHYm38FOqj0UhYeGi2fgCekaz6dqQZSWnoe1g8WNT1tEAuN+OAcDwU/sNNsO74DlMH
	 imPzr2gNJ8N+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AF2D172C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000623372.28928.12786906876178230590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850c24ca49474c2d84c98328b48bbb1736f7e03b3140dd2d98b7565c121760bb
Date: Mon, 02 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770006233
