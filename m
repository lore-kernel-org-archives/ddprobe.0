Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9AE2163B2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764210174; cv=none; b=kBzVj1KjYml6oJhTM8lpzrmEuTW9bAKq79u8FVTGBsYXM2Oa4MMuj8n0FtxJCXmVZcv4izESWeQ8VHX0aTtMQyNXHuzVJqa0bI7uYs6tIYM36cAV3oK+60261/FHsE3cP//T+0xSNOfO13vUsmlBUjT8U/ZWs2LrHs/zE79ws3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764210174; c=relaxed/simple;
	bh=ny3LsG4YclI0epbip1CDiBbN8CJt6AMRR3T5XQy0BHQ=;
	h=To:Subject:From:Message-Id:Date; b=e9+I8V17XzMAXa1kmtNkWRckd4PKhFO/yQMtJqxhO/ozY/+Li0OprnpXeLK9qy765vh8RlgHl5FudbaKFqvnXTXmcli28bKcd1fTvE6cajE8tfso1JfhOlbQxJnzH8MD+JdITW9mZlg+2pE4VoUwyg3YZZF9nvJ4yNRxtXFdEy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9fOyx3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9fOyx3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47ABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764210173;
	bh=ny3LsG4YclI0epbip1CDiBbN8CJt6AMRR3T5XQy0BHQ=;
	h=To:Subject:From:Date:From;
	b=E9fOyx3Nt0JfqNqOo64mY0a0QxNuyrC7iV1mUfBRpyIaANg4TwRBZMi+/VkiyvSuI
	 4BaJLvMWCB36uPBxteAHSszLEJD3XtLarLv0P2DEvw+Noa5w7tu2kVKftFshaghotX
	 CrURr/6MaebJUL58y4u9JesdXcvr1MA+ogsrTxkhyHY3H7NIQBow6mfBJ1eGxqyMwL
	 x7sj1wfk72z2uhFJI42pqcXsX/6PorD4R276eGQdKtdfa+EvXmxAx8xkoo59h6Scuo
	 /0h4cf5WSJr7/2hm07erArmnFncSdRRzVF7PcL2KDQJZIlBxPN5ivjktRGUzd/Bd8n
	 rfQAsrv8PMBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9321BD116E7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421017359.15152.16279638741001814905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16ecf16a650aca34827203e254da2ba7fdb0b7a520fb4a5825e251734f09f79
Date: Thu, 27 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764210173
