Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A94B3C1D73
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785618634; cv=none; b=XWP3XJICCN8E2OrPJnY2LfGEFBOwwkNl2MnGhG8aVf5NkFh+vOUQnj/7PxpaHyKakDY6JMIZHW1obyHTq3s0gI5ITiKR497lXCJqjQlS6V5Lxn/bV72rbvoL8Qh+wlm8BTmsnDBMrr1jjBeuTzkBGhQWYpmxJl9U6XFznVeSKWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785618634; c=relaxed/simple;
	bh=Yw8cx3yH6/1u/vVOvIEZCCwWg5hOQ8gs7o4ovV2p2fY=;
	h=To:Subject:From:Message-Id:Date; b=FPdvVsO43lGjRO6YikLvapkvobY9n1Ta4pQCnRILXiafeJ3DSzQMx/YjLkcZRLOnioHaXvmLzLFcaxWr/QWi/2eimyf7NbanESgc546g2UafWwzMlzqfQNnYadQ22RutotYduVBCSTcFeb2eCSSYvx/FQklZhzB+uEHbn6jzu30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El1OPeck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El1OPeck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD257C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785618633;
	bh=Yw8cx3yH6/1u/vVOvIEZCCwWg5hOQ8gs7o4ovV2p2fY=;
	h=To:Subject:From:Date:From;
	b=El1OPeck28t0nkFx5czNuDteM0gJt0tbGYs0Bkbv9PUIr+adB6ZJksGaW2yYxsRfV
	 sP7fF3MDxwOs8+szE0GFrWadfBqdB+qtUSpg9cdZobmxBF1V8x+U3ey7DU5TDqjthe
	 Ei4d+2nDb7W4lQ65PwMhr3UwYvN8MZyzM2OVA133xNr/Ra3Kov4woCsmqzOYGS2Cd7
	 qn2di7W5svohPXsd5C7HzhJcj8xCxInWwgFKmTod+ELmVWrjUgfnne+/D/Bv00JSaz
	 Fz9Rho/+gr0YeFyX8iFWfqjMy5kruZ3yNYpSlR1m8VdYd1rbsKRQ3IrUvjjx1Udbrr
	 xIrc4yJ5N4enw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A932BC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561863368.28008.15035324877169994477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0d66e0729ddf70081eca6cab30ddafa42ba8e07b10f869b49538b692afb478
Date: Sat, 01 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785618633
