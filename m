Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166DD1A0BFD
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752534595; cv=none; b=ZqjUBCBHfccjllTG37GdW4u89FGreqDL+XqWbsrJuheI6aSI2tynrPkd8U3qapN0pab7Guo6C97sb4HDAlxEN0VVpYXpdRPr9VJFM8EMq3KSGnk69W5ME9YLU7x16bIuFVXe+EKm/cVZnBHWO+PtGOF2+hp+7+KS43LjBAMhiyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752534595; c=relaxed/simple;
	bh=Z4qwf4NJUiVQFPmCuNwh+Yr8UvjUraFTl/farDoagrs=;
	h=To:Subject:From:Message-Id:Date; b=T3wkSO8Wex5HpXcK5gybMV0nIr7e+3YyAmPJePArAkkDC911Lh5TEwDrskYaBWEAdcuhD4bL/07Cho2F6/DDYqQMHfCevyBVs69iJoeD11TPJlFd3FKFTlHHXYtwkEM09IY3Zo2YC+dX/KYQ3565eLujy6dmf/wictcqF+O73C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqPnh4fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqPnh4fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752534593;
	bh=Z4qwf4NJUiVQFPmCuNwh+Yr8UvjUraFTl/farDoagrs=;
	h=To:Subject:From:Date:From;
	b=HqPnh4frYWXTnp33RE86rG6wtjw269437MVGbOMyTTd2aqqyipwfY44B+pMV5zmYu
	 d2zXZTFOuO1MZLaSt1/YoQZCaZEYLRJ7X+dOMRYMwR55S+nfOXGt6fiRhU3s64Szdu
	 +IMN3z6v34PnmuYatkZGJdzJZnpaI2Tu1EtH82uIZVO0iAiIgneVtN2NxPvgRwVtgX
	 JqH0ypHJi+RkKjkzE5t9lybl3GLfvOMuZ1bMZZjAYV+lSo+O3H9eI9DOwY9GyyH/D/
	 h9bVB69RlLLY1P3acQUtlpI58qWlCZnnlWu44rExhRLnm7aiowVNG0soSaIISDc/6M
	 umQV8B6JdhoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94192C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253459359.8303.8116752171958180985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6feff5c362bbd69fef055d678d2d0a84decd90e007cfeb5b2186863d4eec02
Date: Mon, 14 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752534593
