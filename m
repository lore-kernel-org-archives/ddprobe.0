Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141892472BF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755616795; cv=none; b=KPjbZDV5s9jDpwx+FXykWSd80BcM6bEhRMOHn4ytDCkQHWjXsMJWPdlMFfotD36K+UzxwCpSNDHlewu+Bz7CSJWmuak3oOuasJyQzy5J0OwXU2pO9RjV2RBzr5g8YmP7ojH/YXbos4UQijSdGwZ2843lKQT8qHetFZlLcYTEa2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755616795; c=relaxed/simple;
	bh=DPrkcikTqrv5PD735unQbU35Jh1tCo39KwgnLUqNgXg=;
	h=To:Subject:From:Message-Id:Date; b=dVr5TEym/wc5Y7NLqRylofy20I4asCNDluLSJUQzdjSfWsFtuv6S+d2yzS53yYQgFCayzPMvuOl94cSBwNPWULJdTFS/t0Sxa3yv2VIExKWngSbBhXhANeIyGy+6R36q3QrrcvGrbGkoiuSzwPa7wyFALLsmhemWOYCZIgSyZpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpLyynBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpLyynBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17AEC113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755616793;
	bh=DPrkcikTqrv5PD735unQbU35Jh1tCo39KwgnLUqNgXg=;
	h=To:Subject:From:Date:From;
	b=lpLyynBrbldknBUgny1QljlkkhY0kDUSy4Lfu4SKXpIZyu7A4Kf2VVa+oMtcLQBxa
	 mz9Z801mVpq8/neisDwd04OR9YOaHCwjdeExUlUSFZcUL4R9BmyquE3dEZsCDO1wlT
	 mmtbGBPL0hW40yXh37ah+PZTxGJvR2txeCx0vNozA2DJWwA7Ysp3kW+lzbbAM7ta3a
	 0WniP6ajEUBva9mZRwYPGgjWoif4O0/tqm2K6wUvE79mt/XA1zqTZd6pRcu9CI6oTh
	 mIkhbX1n64Xvvf5F4Hr23kC/m2Quk6HvwYs8b9xp45V703NytqcGKkdokoFlmw6th/
	 ttbRNIkZQW6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA4CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561679357.31256.11407150896791372646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d553a2d99633da7cc8171497addb6847c667297a3354f016426f9438c95584bd
Date: Tue, 19 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755616793
