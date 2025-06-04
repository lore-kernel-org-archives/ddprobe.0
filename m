Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE9D2620CB
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749013794; cv=none; b=E8IloTDOkd3FEMpD6x4zE+3ypQ+on3vpMDZAO+o/mifI3kwogmSJys69jTviTrAOsgqnSsbGkgFZdn+Y7x1J60d4d0e0t3JNupClUI4eCiqZd/e7IDgGo0QO/QT9z+xlnGXrcQzxYwmGL/x+VKTAMkgLhQFJX79zyQnpM4lWUX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749013794; c=relaxed/simple;
	bh=MvyY8MQzSNouhGRLskJEf1HAE4OS1+RA7IkQhBgnlAk=;
	h=To:Subject:From:Message-Id:Date; b=JpVGBk4RBlRj7zp5hEoL1HJygEfAu0dXGMoMfUWtlCbFaLBXLhMPEvrr1c1PsxCL9BlQ/WnJR5U52k4Zwcq5OFHtI60Ast4NEwonagR6+zKQT5kJAkqqBQIzkoqGWrTWHSsFqo8qMYjx9sHcahOVAXp8jrWoDDtcFqFIa9r6yS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk2etEhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk2etEhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C56C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749013793;
	bh=MvyY8MQzSNouhGRLskJEf1HAE4OS1+RA7IkQhBgnlAk=;
	h=To:Subject:From:Date:From;
	b=hk2etEhOnoyPZP/9Q3pb27xtcI4uqyZZbN7HPyF2+PjR2M8Wa0NsnVqzTnRNs9x/I
	 cF0s2kSREaXHc/tpaFSSwaEU5qkPu4fQv2zoKdnFdoqrfxqSFYy/9JkmC8bzqaOMCa
	 /hASPUWUoSq7yZDZFRCbkRHtyLyoVMAuQPWIw/fsre6XqdNQsPqkw+2u/zcLgeTXlt
	 hKbf/K1+5PIKfGnjaasgAIRQbVH1N+0r/a4WNA8ojQMBqaJZyT87BmN4mETOHFAFWx
	 cG1LbOL2G+T1hOaKOShe7epbzsA04jQiXN49Hztop3B8qBaWAHkcIG1boDZDzAPJfP
	 GZf5yWqJPGptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93589C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901379358.25822.16016381915790681368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323b686a85e0912e2841e99c2f7a05279bed6ea737abc1101e618a6dca3cd41a
Date: Wed, 04 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749013793
