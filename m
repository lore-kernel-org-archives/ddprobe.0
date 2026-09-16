Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5E2421225
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789567234; cv=none; b=mPxOgp4cQRe7HNEiNJGAMEo9Hab3WEaK8ycx3uU0ZyElZSdNePN7mun9U9nrgVRdSRspXCPR5esCcDrh51txAFHITzW5kieJN2pOQR9YtwVXgGgmXjCpN9Ha0YMTxXjeN7DrfFKbapUfsa0jREFCqSbln6hrsBK2L6HYHdVC3qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789567234; c=relaxed/simple;
	bh=qNouoZrerolKBnVscPUEhKM3AcoDqI7E1LU8TvEapy8=;
	h=To:Subject:From:Message-Id:Date; b=h9XnU9BoQMntbY68AS6ygEqDgOqoNMCFucSi9156QhxOzl2aQPUs2L3/XtRnomdI4ASR9kdN4Uln8PJuJQ4/faUj4bbV1Po3mpwc+XqwIxGX+GIs8+xMhaF7XoorrGVeYj5WE7THtzZnJn0e7zxlACgv3etogVwvUaKunWf9AAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4lJkTwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4lJkTwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789567233;
	bh=qNouoZrerolKBnVscPUEhKM3AcoDqI7E1LU8TvEapy8=;
	h=To:Subject:From:Date:From;
	b=Z4lJkTwY6zrNdDzjQ94Q3yPTMYkaFhuQ+tr/RtvwkN4sZGWhX4wDmMZMdnqxzpddv
	 Ws+Mr3I0OORBMxjBZfIMYOWN2VSBxRPW3urZeRy3id6wzfiqey3ezlpSG9D/YTmZIq
	 odiawAvMNXnDjNe8jcR3db9Ep/dddXoY+m0qUf1p+xVEW46TcuBfFKykIKTfQ963p+
	 GnmW7tdlR5ZKnTgfD5jLHr31J9cajYEfdHmBHl2yWCDxrj1vY5D6NnFK7Ckm78xEgM
	 BijA73gNv/1V7FII+V9o2guxbQPpF3ztBUOLkfZN02SJdzP0iOQL0DQCrYdURJKthw
	 caNPmn0Ld4Exw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D1C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956723369.12160.1691826217307816200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dd9d5c7d04293ba84e319408f19f2edd5ae4b5d251dac2a829788bcba2dac5
Date: Wed, 16 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789567233
