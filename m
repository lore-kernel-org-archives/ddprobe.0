Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF52E36E8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754249994; cv=none; b=cHp4nbgHD/SR4X0yvMCKulZ++sS6leO04DZ/y1nKy3NO5Dj/pOiWluUR5/VOO6gBxXhaoFo0L4AWswY8H5rD4bQbMs+xzA8o+IPTIqmvbNNx31pw6hckUI8hbTboZop337sZEFpGIEbnjIlDuty7uFOUgN7AFbSR96fTpiv6/WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754249994; c=relaxed/simple;
	bh=vhYRBwIe5ddQgbPWNw+TvPLFLtIxx0dFk8IQX6vMS40=;
	h=To:Subject:From:Message-Id:Date; b=RB8Qa5kozo26/nNqy/IVVVHbDh0japglAm05i99dfy7e52Vjb2uqO4n2fPj26IHQAb1D6Uq84AGdUFJlt5Bj8RoblTF3iU57WrEQiWBbUqO2QAHBuiE1bakIZmu0mx0E/OvVl0GXA3/LmwotK9DjhUqvYT6Hs8QjjTdrGbB1AQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuuIMY6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuuIMY6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E2FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754249993;
	bh=vhYRBwIe5ddQgbPWNw+TvPLFLtIxx0dFk8IQX6vMS40=;
	h=To:Subject:From:Date:From;
	b=CuuIMY6lNK9zj9rNN9mVF1o2Ms6LJXGKen21VDSjWjv9W4NT8Por+/TwEwZGbqTno
	 1AIrxjMEVtTlekyD5phm57jCovp6NjQRt//20O/co91g9KVNY647ILDiW/mzhVZdKr
	 lE4NANOLPR4V1/QYh8jSIOJoll0Bi1fPIlkZkLx4Ez30cxJG0EieGgByDGQ14632xB
	 x+VcePHH3MyQxo8DZpPh0bKha6NcGeyHnRFhCcbY70hueJtC1lxg3yCOUCaT9SL2rs
	 89ZSJWKA3dHAHLB4268oHgY6+KiL2nOFN0+yugNgikUgamLvfmuWbed75mk8BIaPyH
	 BKmGd6DyJoZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD6C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424999357.23042.3787864226646792863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bbbf7585b683bc8a2c49596ac58c602840466d17dd5dcfabe06a14d2337cbf
Date: Sun, 03 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754249993
