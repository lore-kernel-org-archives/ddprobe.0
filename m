Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3197421E094
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746760794; cv=none; b=g06ajE0EyYn299Ae1aPWqg7qChwUiteYvbxSTzhBWcbU7aywyHDOvnMs5/jp3QH+OefhSonx08ivN+HE37zL5dfRMWO8TATUzwOWmJTx4DZLk5MUjP7GUcH9cLFDV5oZL9dDvTDZMbUUl36iWbZmbYSGDrTB7OSe0McQ2LnNNbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746760794; c=relaxed/simple;
	bh=M40rilkLWvug6NxQDWAYm295LRVXjgtU5r/VKq2GQA0=;
	h=To:Subject:From:Message-Id:Date; b=ONKsG7oSNyeVPyaC3J6lCNpMDd/bQcW6FxfAQB0GWdKl+RSDnk1x9dqqgLGN0YdPzsAvd3KaY5dVGqoLDSfphKbEPax9anIhYCmAHHMeg2Vku+nC3tzAMPtpfblAdMT4opRtFbDbA1+F/cpxWLv1WF6OSBw5C3gQ41QK3bl/PPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy6AoQaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy6AoQaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B7CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746760793;
	bh=M40rilkLWvug6NxQDWAYm295LRVXjgtU5r/VKq2GQA0=;
	h=To:Subject:From:Date:From;
	b=dy6AoQaVK9K6dkziXi5w+RfeQmOeZJMHBvebJ2E7xy2BEVjbF36z2TC0ZjrTCWhWi
	 ic6SMFYzd7GiZOkMzinBx6mjMo2oU6zkv49WekhXa5Ro6IMHbLYKspECvLR2RgIi+9
	 ovLvNsw55N0D9NPnxj641L/cq4vW0iuUG0TkbFywSk0dusJT6eYU+bG1MJiVbUv7PF
	 wNyybw8Df1rasYD89ZO0Xhx5viYmuG+dCQ0sYoOIOrgBw87qCc7E1W+lWNxqGuf4Ri
	 NIUydd+L8gG6EFD5spBMaJ8dEt+PzCstuJ7Ha8xk/aNPZDiFxV9cxjwlUZQ7JNsgR5
	 0T6Jpsm5qlQVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9DC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676079357.27294.10941349376185696485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad336de5466dbce73e56142ae4b1ef9951a9a54232fc85b13d8ecd24e421ad8a
Date: Fri, 09 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746760793
