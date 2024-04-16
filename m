Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCCF13A896
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713311363; cv=none; b=ACuvB+bvIia3qoM2+uwvLtcShbgA25fVcSFw6DMjXUVLE0LAbAnyd/8yjU4POpUXY4ETDEG4/gL/QALkYZosiPnxkHGGJa+eBfUMj8Qu52+B93pOpfxvhv8kXP0QcrEHt4AujrY3cHbM7bxIobm2Lk8TxhCmPUyWhGOLoAV3Jjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713311363; c=relaxed/simple;
	bh=eqHkc0+Yay1pRte/i/E0S1J7fMxuSBZ/h0RzfBhUP+s=;
	h=To:Subject:From:Message-Id:Date; b=tlqYVEYo8A5YzBK47cC3SWY+BnHwB0V2piDuF0Kec0ZGEWiWcfTS1e880l8Ylm6QP5tTn+PeJFAAkMqW5Zes5pZ2iCttawtY6k+jFq0LMbHaMIXm+GWv8ri1rpTD+QjGek0iKRyVlEvH2BKwVxLCWReWfxZv+L/pf/HisK0ptWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSwrB6fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSwrB6fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C64C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713311362;
	bh=eqHkc0+Yay1pRte/i/E0S1J7fMxuSBZ/h0RzfBhUP+s=;
	h=To:Subject:From:Date:From;
	b=KSwrB6fbJ1Vtg2wa7XQtoDhmZk2NeO2VwCA4P7VTCFOHmeXlYKAONyDufvv/Z3Obp
	 kelHqiGMFKKcjyUcgy+2xXfDj4f/RzHEkKp+1KMdibmhP0eQYMGh0j2behXGN+btxB
	 cMSw17KVNS1OieOFwy7VLBX9o5zRZnwsCW5g8zhpDjQD/+4qv6Ztw+Ksd0Md62cm9U
	 O6V3aLyTlsr/5MBw9DTyBuDhxy3jYcqNOjVOzF4EbTtWvfwc2jUY0oAPXtTxPjVvPz
	 Ot77cq+4tgj06+qbY5GMmUwvBV2IB67yqch1/dVQnF9ogOTobaV8LhbSQk7p2Qt5kJ
	 Ct6QgeGUfZRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF580C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171331136277.23413.14721517829696371647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdf07d63dcabda9ec10a8aee7accc09c84fd17ce20376ca185f0949eb908fe0
Date: Tue, 16 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713311362
