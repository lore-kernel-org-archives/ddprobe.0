Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FF7C125
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727226954; cv=none; b=aO8gazmP7McNav2jFIOrHYvTL3aAMzHTAa1t0Too/FbtDhW4s8jV0dglfm49WYpAGEzWaFAONaCRNhXWEeAtOhSj8g5go54Ok1H6bjKcOUQbX1XmD3FUjNUO4aSP3fLbkDnLrxyzncrLobrGnOoVWKumyOWli5+7idbCEvaY6lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727226954; c=relaxed/simple;
	bh=FnrMvFVqgYqWNEikN+bYsS85WXlAPNZ0GsiP1rZ72/Q=;
	h=To:Subject:From:Message-Id:Date; b=RHsL+6BQQ3tblwWUPLVR613GJRhop7FIqe5u6cjo0JLh5cACvHs6+Aht0YFw+VrGjLHWT1PnxiZzaKkD/k91ovFwqPNMrDKOyx6WnhRXEKZgNoF9feRQvtMzuwVtXDwkFPK+uGEGWsGvT2SlLWJi+VgOS62F4QA3q1i4SwQle10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvfszDJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvfszDJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC589C4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727226953;
	bh=FnrMvFVqgYqWNEikN+bYsS85WXlAPNZ0GsiP1rZ72/Q=;
	h=To:Subject:From:Date:From;
	b=MvfszDJReTLurt8YcU8AsHAsfodsu1WXYVm7CgDd/KDO0NAWBj6aMCfqmxayGhu5M
	 dl3JTeA0JKPMDTYEXnoQkQWd1a4sO8DmJvUKdMPrNHcBGAOXnqkt7JoQ9/F6UOZH7w
	 pRWbNwTkt/dOkE6uY3UItL7w7GshUNKfVq6dyB+QxS5irto/QxJQcz28mLAAw2D5qM
	 B+0vI6iMzqwjgrWXeLtniqhLlBS3/XI4+sadlvMCwSVoNM/h0naCzbOEpB6ONakiR7
	 YmEY35cSmIMaX2ZPXYyGDUt1VDQCBRo18jZKDN61VAPcL84CGwdakCz39DsabNNwcJ
	 QPf2BiZi1bZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B2CF9C69
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722695358.1503.13805855123916763440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d0591cd1c3da48ee2881e99025c0324adef2e906c6bada8deabfead35906c7
Date: Wed, 25 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727226953
