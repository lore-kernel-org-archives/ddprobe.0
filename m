Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A241CAA65
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757318994; cv=none; b=S9yegx1ISuhqucsEuZnIv1gAipf72OHtD+PzDPL8dKYV+A+HOOUyt4+7S69GVmcpEGFv1SdoWwzWq1xddrTLYWcHpAOCsmrdVjyTgCpUgaspzJsjVhSQJ94F5UzBgNgi9t0aJZSvyi/M4egNCVRXTDldii39+3QPLqnHp0/XouA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757318994; c=relaxed/simple;
	bh=zjDQhot+JQbcW+8tNN02xlvAg5gQKzbiUcHP1ZqTaMc=;
	h=To:Subject:From:Message-Id:Date; b=VJwPqCRVPbDvnsNHGujzyZXF0fGLGJS5A2XFgOgT60qOlOrWm9iYKjZZHOTbLRAsYi2Lp6zIhgf5BQtstNRi1cfCz5D6+VrmN9dInUws9t30o5Ba723CuTnD09U0SO4bLNAGe+KrV7+Sii4POSbV195yuIYYMbGM0Q0VyX1GCpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVoShG8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVoShG8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A36C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757318993;
	bh=zjDQhot+JQbcW+8tNN02xlvAg5gQKzbiUcHP1ZqTaMc=;
	h=To:Subject:From:Date:From;
	b=ZVoShG8VfVj0C70+fTGBIN9ALcAB2s1tpCQ6YDJheVSLpVZhKWSMLvZuHdsZCMMxg
	 bTRHGK+SD9NoYGnqi63VhovtQpSYrx5bMzuvBQKmnFbC+RY8uBX6ESOXLK0CvYiYnL
	 3ao2jmrLQy72DOxzbzWZQWDPeu0iDyjDYp5QBWNziqsdTTtHyqwybWV/EnYo5FrZCf
	 hj5uSbc+VcohXQC4Z06zS0OHM8/kgyIQxn2NMlEFP4evEH0coZ5+pTNNDto9ijcS8G
	 TFvJp22Ne5JT0T8RfnfucJvQsemE3jxYOVZEQTMowvjGZ2B6qb8XYmhF7+V1j5v5tm
	 XrYNGaUi9VPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42ECA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731899357.22523.1120204473767916311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1876ff726e69a9f13f2cd2075e1e5c869a186fb955a7cf0d884720eb6b95abd
Date: Mon, 08 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757318993
