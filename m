Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CB17E0E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718787563; cv=none; b=X6UJA3QAYtC9oneSbRlA76QOBz/G2ms/mt8Wg1m14h6KqDr14x/3pv0IVDSAlYP4BIPrYVhrWajMN4Lftjt0riWeGNH9vfeBjMaxOaKzm8W+xKIjf/F96ipFzfabAi+8JJZXQ8ODl5mf4q17b1TsfM30s5AXQacdtMajXL3J3Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718787563; c=relaxed/simple;
	bh=6eMemh/6ePjej89mHdrNdOrBsXY815D5/1qVzwlaQX8=;
	h=To:Subject:From:Message-Id:Date; b=Uim/WBvN393W/0M1U3+If6fckL713sPVibu+w2roli2YTDfEAwelR39wuGL7cefzJSlY/wfHX4eJ+TEULPyDIYhHw5D+nAiu2qDpdvL3GySGCl7bbMLFZIN8tkWUss1MTPA4WJkfbSHVBcP+d9jAHWIBmdWZgvgIA4BgJS9w5RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzKAQg6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzKAQg6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68EDC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718787562;
	bh=6eMemh/6ePjej89mHdrNdOrBsXY815D5/1qVzwlaQX8=;
	h=To:Subject:From:Date:From;
	b=EzKAQg6o5zTsRr7MGaAtDrlqJBVjj2jNB41TL5UTqjJhBC7wMtsPMZxZFv4c5K56x
	 d0KGuW5S6NB/doigsoC61cQ5MZpuypxRxSM7mA4PDyIs5lzXCJd5Y7HMfZgQlR3oTP
	 wE55E6dUCRs9CA6KlKczhewiqe5saQF/yNYmPZCt5f1wqvsZjFWaKk5atduP/OsMmq
	 znkU+uTXrYLHzy+oU8Pgs7GqScubownlTZKMbOg4fzI9Ae53qot/KBvlW9zzpvZDth
	 ezKkuro9btFYSaIhGja77Abg1TrmkfNLblSUU+HVKgTknQyV0Hot2pzRKm0PygTFL/
	 6ohzF7ftYojxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E75C2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878756277.25343.9254205744623881924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c140ef2281d4c18395ebc6fd63b2221d257d0292ba49696ad97836526daf17e
Date: Wed, 19 Jun 2024 08:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718787562
