Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3AF202C48
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781499394; cv=none; b=IcQA1fhkcLT7qUCf4p4Yuq791LyC47vrc0tKLvDx9YJEnroBOfe1j/xgXZwtrBvGGWa1+Ivws3FTWOTf3EZju3ZgGSBkH2LCevxIJAyRlkWtOLqm7QImEnbFUR1cYfN15RAp7Wtf+u0Lzs1BjXkfdA103tqocGHdWk0MBa7kKLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781499394; c=relaxed/simple;
	bh=KhY0zcqTQkMIiVuD+zyCD9CIycBIU5K5tI0uzTjbUvY=;
	h=To:Subject:From:Message-Id:Date; b=XMvBN8N/N8mjeAU0R2k/k6BU8MPMFHEhVoS2OLB0w96BJfYy4eNCXIN+0X5/MYa0AvkO3oWA9055UJ6lmxkHYBIXRXXfMpaertZt0hcL8KGIEJul8f8QG5/622bFt4bo8nfiOqkvBPcn5iI9WWBedSwrFt5IGEEDhAT+rVSWHAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItfYI2zU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItfYI2zU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE16FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781499393;
	bh=KhY0zcqTQkMIiVuD+zyCD9CIycBIU5K5tI0uzTjbUvY=;
	h=To:Subject:From:Date:From;
	b=ItfYI2zUkC4sA90tVhVuYzhurP2Nya9fLL/X2LW0FERA0wT7LSeTTRqXz2MG+XOMY
	 holQCAyuw/JNtch8NVewjWSwVRdbkdcDQT4LSRoDunA70kONhIW3HYUlokZIJ5B77e
	 A3m4qd+45PmtHPICLk7k2p0cdxAyZATjAUJIVcliNfF/udBAjiaa7FrCQREZDnVNlc
	 iObEVcTjD5OZ2CV6oOUfAJmK3/EHFtnV1hvefLugfVJ4U9t3qur68M0KImdpetDItX
	 a/XcmmueiRJd6QBqXd5URLsF2B16UKumfE0I5KqI4ZyGHS0QM54k1+OqQr6gaPdueT
	 Z8qJXKTR/6BIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B59CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149939369.29429.17922565874918874963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af14f7f583b809f892be646412a6ee6255554c6619728f1792c359e7dcc0555
Date: Mon, 15 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781499393
