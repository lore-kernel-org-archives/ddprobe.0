Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2037924677D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767098034; cv=none; b=iKPmGshbucA7BuLgEAmnQHT9OoeV2sW1m/LoyNwUElMZHejW5gGoID+kFqDPcTB1pHy8RhsMOjjS3VdXNoSMuRxrtvQOSFuUX4Q6jQ06Bx4/IjMlYkYSUeT5P/zv8Z7IdapYrh2sxNFvs2O0tFz0Yi5ZG1AZAYZ1WuPV3kaukk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767098034; c=relaxed/simple;
	bh=MZci8j+2EErOUoIVuVDo68GOZNcW9Mfa0vYIWR1VMk0=;
	h=To:Subject:From:Message-Id:Date; b=BHqPBfoz/mEExrgs3GRRKUuR/qPpNHe49TOaqFuD1ZkFedAqy/YXOjeE5AXPnl+yfIH6FQ69KIbVN2lqi4c8p+IOocREMgyd2kLR3i4ArhcQbT+gr21nk6lraEdp4rmseyLAm1T1Iq+9ZevlLsLEwQNrK+bI4COjshps2febneQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J//+si8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J//+si8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE28C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767098033;
	bh=MZci8j+2EErOUoIVuVDo68GOZNcW9Mfa0vYIWR1VMk0=;
	h=To:Subject:From:Date:From;
	b=J//+si8M27iO54iGB79FiR2i+Z0EWntcP947bisZ1qUFed9UZpCpA74EF0OPsvdX0
	 iX/YvdMUFsArp3cY5B1qVW1ctA9ZRTkO/94r2rmbVKbhhCtc5DAbC7csYR4WWeVdZM
	 dQR8+muCqWk62mRU+g2rlH47wu50hRn9rfBjxqQW9c0h/uVKlX4CLK3f6OEGZIOJ54
	 9FsgrczbuGoJcuTlKiIMYjS82DFtmfSprqqyvXj9IbAE9ssjqgHTmddlCTNyeSi0BG
	 mRmLyo/smgTzrr5WsyKDQyrTS0NrysIRukmcwgl9+5dymeWQRNhOGPTvkF8CmpJNfB
	 QhXkaAl7NPaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF7E95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709803357.14695.4157424474661660584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2efb07c1de0a927fc903072f2aba1ef078a7d9e2a2bc1424d1829e3d4509bb
Date: Tue, 30 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767098033
