Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5252DB7A3
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787626234; cv=none; b=YfoCeJcOAxCZRU+uIqUGaDewU/B+7ssbGHU7lJhmPeGD0mIKSkTUiyNqR4SgYf7LtxNWv0yPvElgg3yYS9BI5HmXaBJDg4QWl4EPz0B83LIMxHCysPqO4MdT6QUaJGVCCc7y/k00DJu2DgrMoyZpqHr8PS3RQKxPyPbJxPUVmeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787626234; c=relaxed/simple;
	bh=MPIiswSxmgwc+Icm/e2jEQEDtdZdekw/hBH/I8zvSUs=;
	h=To:Subject:From:Message-Id:Date; b=pobrnfx7qfmEhmgN/5UI70NrBzGHUfbI47UMexSWDc8XUb+XLKQfU8SEHbId2E94V/1O5pfozYMNYlT3EASZwk456LJgsAR5Jr7SmyWSCUT9wD9rlHmF3kpJKFabhoDqsUYFzSXEMCEduMpHwcXKfi7q9SLPB6kSWtsLVBuLv9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9tt7buH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9tt7buH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86CFC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787626233;
	bh=MPIiswSxmgwc+Icm/e2jEQEDtdZdekw/hBH/I8zvSUs=;
	h=To:Subject:From:Date:From;
	b=J9tt7buH8/mNoiMrIdAgBRVKnRZt9YTxYQfHz7dcUlSjWuN6SsVLKXLCYczY9WRyk
	 /zZZTCRrN7z4NjrxDdAWRRyvzcXsAcEvxvSDqNVFqt3dNLJstMGU/+J3XjUWuXiI4k
	 3Y9bsgO7BDfGjRZ+5f/KHqIh8jwJaJI4bMUFEmXtD2IdXSJsA34Lw+PcEEtC5mzBtN
	 /vKxFo3KgNZc7pzj8//2Id1HxAjHbN/srcNdjgPZRFlyqKGTCWcDGxuXPfLFRC6GUf
	 kahST34bbugTBeZF3ezhUYs4BBG+i5DrdcVVj2PsYUtme4ov90s1hXPPu8B4u6Q4lz
	 cbAj5x2P5hSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0638C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762623368.26930.5128089985931204204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34ae94c995e2985c032e19445b2beb652cdc3445985808add080b717a7e7140
Date: Tue, 25 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787626233
