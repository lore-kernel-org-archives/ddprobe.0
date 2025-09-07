Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1437B20E00B
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757287194; cv=none; b=LweFz/rsvEMe4J2uA0JeQNhn8stbFJSTkCoKE55U9uSIGyaL1+PCyJNkH8L/dszfKg50mpSEJ8yqZkrM6WXMCSMjWUyZWOnMOZu+WUb/ZUStPyYYGxIkvGpGBLBP67cnu7H2QlPzdHNJdK1wv72Gw73PUnbHDqyRWzXRiHTQOns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757287194; c=relaxed/simple;
	bh=ZAXSpGGjJsvI/PydpoL3omwbjwXl2qoKTynRmecRrwQ=;
	h=To:Subject:From:Message-Id:Date; b=Yj36x98ZMkj9MG8ESKSR8BhkqvYpeaQKvGHP5OjRStZCHtuqNuc0DxB/EbpD2WXMBY+BENeo8xOUYmW4IMz8+MvVs3beEMDWJetjXMBVsZmIwfh5QzkowP/T1gLHMqvFsSp0Rkg+bTueE7jTv+3epWob3ICX1xYhfGoOEBb5BLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNXdSu3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNXdSu3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D070C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757287193;
	bh=ZAXSpGGjJsvI/PydpoL3omwbjwXl2qoKTynRmecRrwQ=;
	h=To:Subject:From:Date:From;
	b=fNXdSu3Zif5kgA+5Nlsk4UFINdetg/vu+8CRH20PGBfmXXLySjNdpi4Q6bs6RX/Ug
	 cau2SYXmZ4JkBU9skjNXuRrzZvZ/Tbc0zvBQR6sw4SxfwyGM8PnQ6Wjp1uSnaApXWd
	 m96C2/LR5ymzI6KOTxrOn1Tmsxo5slbnjeHVZF/ODh6RK0B92paIKguGYCYpoe9GYg
	 rVC7P9KiN/RCJuqNPRRVoWl4jIHzenA3nIXZW2DpT7ZgEVjDJ6262jQz7Y7PKFbLm6
	 qcoga7bKNrNMrd4Mvx7dMeLdgtNREgIRg1xLhvQl0dxSMAp8oIwN1CggpLpEyGsFY9
	 lVp4pHxiGyQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9ACA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728719357.1044.3971580908277951572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b09195df1d0314333cf3e0bd8bda725579178deb43adbbeffa819d10787f6a2
Date: Sun, 07 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757287193
