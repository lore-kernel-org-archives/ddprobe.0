Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91B3E3DB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779884554; cv=none; b=ujn2zrfNfa6HEIxcEobn4Lm6M6w1cQLMIJ3is5yj/578QOgZCVFO2ciQXcJ8Mq/mjQJZlohskym8H0JQgVN5ZP2inIDCUijqSnzzPAr2h+bqrQbhirNnFSQ6GmNPfqz5ahZKHWn9kq8HucGsPphrukBmPyLsdJgdhO+Q6fPjLus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779884554; c=relaxed/simple;
	bh=y80Vv+/DnkrN5dHSa2H8qnR5H2PenqvckJ27cvaemYQ=;
	h=To:Subject:From:Message-Id:Date; b=cQ1ukhXSkzYEWZn4jUMrbbyYWkAvF/1BL15F4ip41OaRBtL4oPrcHvQKmKWoKRiN3qGv9mVnmQIpc4FetqvQxK4KAV+4hXSnyU6V09cjrnWABAYKRpSqVtM0aVKpinJmGllLrITiKOVGVwy98gp97sNGBhvupn1+WnXBKLwTbZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFyKJ7ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFyKJ7ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF4FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779884553;
	bh=y80Vv+/DnkrN5dHSa2H8qnR5H2PenqvckJ27cvaemYQ=;
	h=To:Subject:From:Date:From;
	b=sFyKJ7ZJL7eANJES+iIOgPeC94QE7ErMv98W7A14j0Ke8hDBextOO5qR4eM5tK/RR
	 zWm58zXLsPAqRW7/+0LgOYUczJDpMCL37w58A65nGz0LITKVqSKQUvvg3b9b/t/w8t
	 uCrihuSCQOi+Q4+EWr6Dd+THVHrVjLJdspAsZO5I6Xq9OWYn6RY8eNPG2TGb1Nu1IT
	 08PD48whWdDBMYEOQ037GSSzBncE7vCyT1tPIvAnjXqFZ/lGtHIzGEpjinClO89+LU
	 US0pi86NLr08l2R15RiQC8SVspvw+cyNQcm4XmWYm3k17gcwC9APf8IRqRCH7iaE2e
	 LQdwPIcee55Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5974CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988455373.22781.3159368718385863386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02660d232a68e9fd7aa4d8bc075a00c6be7b95967345a1b2a861c90d08045694
Date: Wed, 27 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779884553
