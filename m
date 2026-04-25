Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3514B08A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777077454; cv=none; b=HEqKENmTU3gDruTN5d10EYbRbGKEXgFMBUeVefeXhrpkA9bZ6ymYqkwHqfI0rNPHkz9y6cCvJlpVGYnAQTMBwRLRaJRUiLujoeWz1Var+STeS7jae4iL6fI3vB3UAwgFlVyHWn6mDwwJEKE4k74RRoS5ea1HoeDYIH7EqHLJG5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777077454; c=relaxed/simple;
	bh=o2pEVzcJT9HwusgyMmQtrTHrEoI3UhiSGbydFeDuoF0=;
	h=To:Subject:From:Message-Id:Date; b=JGBdUuv6eGY6fqo3cGqI3o3zAZ0xrS1+pfrGHPv0dOi4liv4L/bjCfF0qC4mqPsbxYT2y72nqTGvq/O+rxD5mora1W7seeWfyzwYpFUs5TG+w5SbYpsW38reOYLcj72LN+Hd8cxBkyGUSUigKE6eyiTCkSSurYQcjZPkNX3aURk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEFpcUO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEFpcUO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BB3C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777077453;
	bh=o2pEVzcJT9HwusgyMmQtrTHrEoI3UhiSGbydFeDuoF0=;
	h=To:Subject:From:Date:From;
	b=NEFpcUO+dvktC2N5zbfHlK6ARRmtxzsqFFJok1zCAFCowlnk8ODy5Ai6zQe6L67UO
	 l7++eixthKjCFxIYI5BkoEkbRDquofzfsATz0YXcCI5aY+JZckrk9VSpnDIwVqwALQ
	 pIBfy4QFgRTL0ISlz6DPYajbuLjnb77RqiXh1TP76/tZVCBPRa6o081CpY9+KRjx4W
	 pdjd3k81S5M3Hy2p7lsb7QUSl7KjtQvo8RztJDP81hL24oi1l4WosvWUq7rX443AZA
	 wBWvJ4iKsdPs18yXfQAEKsaDIwsaqoMXO7RumkKrQcRlpkEW84SsK7bspAeWAUFDBH
	 XXREgk2gBDr2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9FFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707745368.17572.15715476684073633636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ea361bb91351195a160b621e590449edc9a8f508971f771d320a758656f87e
Date: Sat, 25 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777077453
