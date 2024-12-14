Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAF226AFC
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734143754; cv=none; b=I1ZZD6y1Y1ZJ5kwjL8Lf8LUxJIh3oeqAOjnkuQjuqdZsHcY8moAXiFjMDZBffk+9L5KV9A1bLfFhUP3dnA+8ClNSKDvapfMNjz7znJEncyZHXBFiDa1k/LPkpMhmKdIdwWhb6xa75IkMcW9CwzgTIgTGWF9Qymxj2dS4tBI2gng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734143754; c=relaxed/simple;
	bh=zWJuXcmIYbFZUy07bKrj6IMuslboEJZHboeTY9gz0E0=;
	h=To:Subject:From:Message-Id:Date; b=mV6O0jphUNYyI+nAWkEuD2pxp9oS+qYCTWpvrNJ8OersVc1av8vK5Kchqbsc+dx65UKV4UqqL8JAcs0VFPuWa5/UqRGT55LBxt1wIuCm584NRpQfnZQPAILzAVtUOBzV+gZoed45koFCQY0M47wwTeVv5WX/i9m9tuunacO4dpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WerDS0kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WerDS0kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74C8C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734143753;
	bh=zWJuXcmIYbFZUy07bKrj6IMuslboEJZHboeTY9gz0E0=;
	h=To:Subject:From:Date:From;
	b=WerDS0kFMgIinYs+oOlY2ytIK3j10QVSMOYLLPSsyp1HeuwjYIPglqF1U8NXu2WgC
	 wjiQOKJBPJY8J+lZw114pgPzXq8y8ulzNrnUHJbUvKuPgQ/SmKZgATChjpXGomhOzA
	 EggQ79FZSWT+SC52LEDxpyRoURUOEQpx/b4zbdahrKLXsCyrzYMkmx6jVKOFZRQfnL
	 SMBEehC7iN1uXfu49f+cbw4/3asBTm2MGMB6R4IgowTvW2XfRMyB+hvYFLpwimcmpU
	 FARpYIUdBmfA9p/EAoGBu/czV3J5EYRiQXhisu1GeBRxirIfHE595/G2KkdACjmpMC
	 +D6OP2nu3eQ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F79E7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414375361.32116.1475593350078722518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624495c41224d3d077087233f3d71473ce447dde4c16e4371aedb70e94a19601
Date: Sat, 14 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734143753
