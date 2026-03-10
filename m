Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1CA2BEC43
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773170694; cv=none; b=Vnm620b6UiWQITmDTslyBUyCow9Qi2p0ONvJnDylWfa0WQ+FIo7dxifJo85Taknfv03vjaQ4powaPCJHvZdXSORE11i6MawgaaPgjR8NzagecLGY+PRItRwI+xF7ZUxBoKPRVFO+74qWo1U9NWITj/EDxr1evw1WA+HPlaP4Mpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773170694; c=relaxed/simple;
	bh=4zwdDxymlViBV5F/MP/oUdAAhhT07AHAEuT5e+IbJIw=;
	h=To:Subject:From:Message-Id:Date; b=aHG3MzwqhK7qHe7esDR/dfUTaVUIzlysztMrYxsNeMkc7Whz4+P943HnafKjjM2M8leqA2CZP2lpQbYs6vkjdI+vfbZJaEeMH8PPhFToLY4U3Kguu0cEyTTeC/gSqarWAL84LwXcMLPih/sFR3vmHk6pvVicQfeCTIRxmmxds4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMqyKAKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMqyKAKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C7BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773170693;
	bh=4zwdDxymlViBV5F/MP/oUdAAhhT07AHAEuT5e+IbJIw=;
	h=To:Subject:From:Date:From;
	b=YMqyKAKRREdBXjBPvXhkXJ+ivkMLYnRVSSIbmULyIZ2RT32oQuvFoMoNJkNa9Cffr
	 RK+A4HeVVHAQmEYNLD6IOWaKtE0HYTZyzKozIpCIugGI7k5u7kEdG53JMqWUgaolO4
	 /TttLZk8M2pjU3n3MTHoEwyVcwUZX8qXAzjEHEYqvfmOx4d1lbjmN5IT2L6oYoiW/2
	 TSXvmLlSu/6k3yjNNLcoSr0Kg1zd3Zuo1gm066n4OMTgZYNjr5fMaaURb9Gags3QOh
	 gqEOjYVQddxL4v4lqBWeM9xd2WXhMvPwTEPx7Ic6EP+uxSS1295M04lNj3e7tBRxT9
	 UiNvuwnBUv3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C8FD4F19
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317069358.14070.3653152782331244229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0597d22e685fe1c746a1fd17ad58575d61f4bab03f1c61011713f6bd75812ab
Date: Tue, 10 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773170693
