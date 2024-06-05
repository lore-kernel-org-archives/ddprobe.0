Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E657624
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717612043; cv=none; b=X8i7YETQC3oM9NXllVQe8C/mYi5U9j2n428PwwtpGmwg6c0t+dxvpxKQfkIvWEe0AgJp4SyiVBwSLNvwOhyk8UNkJl1mmfBVbEx2vJ41D6N9Tzk8+ZMYGwjNBdViNonGBY78d9JmE93HeCXUoQDNVdCyVNK0hnljJPySWdX1IF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717612043; c=relaxed/simple;
	bh=DFy+QoMY0Xum9rFmOs+52WMEG0egZJ9f41HRgK7oXOw=;
	h=To:Subject:From:Message-Id:Date; b=Rr+Ef3jb9MN4SilkXQ0RJp/G3xlc84LUt6QGDJd90EN2Z2KK3wcxrZDmiEUQAo02sERkqRegBP7RSgzx9x9aspSoB+CMAX2jEFEYu18bz8foY/UnOzMpwudt8kWp+jyl4zknR49zH4kxW15ubdixzIEIH9N0x8QBYmNaUUDjWJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw+iHXiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw+iHXiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79F5C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717612042;
	bh=DFy+QoMY0Xum9rFmOs+52WMEG0egZJ9f41HRgK7oXOw=;
	h=To:Subject:From:Date:From;
	b=Kw+iHXiJ8Tdin+i6k5oN5RpJVu86wY5tI7gDXqjpEGfzfzkORcz37AqzZnPYe80ks
	 p2Exe+NJaaILAQIvOmBuBXBxywcjzKqL1SofVYxUlqSBh36KAoHeoA+IUbDzReKB3M
	 IOQobmUI9oKxkQWMoCiqQgHFAa93j1xLUxQ32NXjQplhl33W8kpNfm5/SSqCfaRVgv
	 saFZdoxwJhQTjBkReVFLeDstZMbNzC+gFTJ2pSo2naeMdRLOORK5K3QLJgki8oeJNR
	 e8E9yJ3kB2Pci8xDxj72sj2obcGbyX6TELhpLMIjmJCopxffoZdQIntvdfVqgBCb+x
	 cGCBbN/ViIztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CCBC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761204279.13195.3257639158440715502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87637fd41244da0a7f8f1088391039003b36ecd3a3671d7633b6a3afd479ca6
Date: Wed, 05 Jun 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717612042
