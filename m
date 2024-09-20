Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243DE1804A
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726803954; cv=none; b=vFethnzhLKsiXNDrRkosng0yshA7lV6zXQ4KVvNQZzRcrfws/dOLIkSAULRS0QGV70QyM2+59yEAELudAIL7miGXg1VbGstLL8umK9Z03RE3C0mD5vKDO3AKDGGnmHNbGt65nPJGQapp06sqXvJft3kFmOUzZK5NllFAMVF1M1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726803954; c=relaxed/simple;
	bh=D0+ruCNbdjwhBbT0J8wzRsvtU8DUgIEXYB8p9iTOlFU=;
	h=To:Subject:From:Message-Id:Date; b=pno/E9lpkxN3B2jvAhZy6vrQB8Cm5FU50WJZmQ25CWi3rE1dUJxRb/n0t1IUGU3Gt+X5dqX03bubLfyv5m61r0dKIXf6oaKnlzNonxufs9zOquvaFI3cOF4LCI0MEUWBeQyjSfhf8adhyG9ZEqN+Rr9DEbMFV9KYxmZQ5PDR36M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDcS9Rrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDcS9Rrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC576C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726803953;
	bh=D0+ruCNbdjwhBbT0J8wzRsvtU8DUgIEXYB8p9iTOlFU=;
	h=To:Subject:From:Date:From;
	b=LDcS9RrmnWx8DrdqUFbxjEjVebS53D4AWTIsVrOoCzyVq9hkTHs7ba0G+6xsftf1E
	 EPRODQfWmT7yAbXJjUbIhAtQI+ThE/qESkzTvAWkrq4qMAmhHdxmlBqVgLpHon0C64
	 ztA/q3etxAEX3qBPIOYMpmZ/eB+jt746mB513tzEGVnFu1QmPnBWFMIuVWnZKXoIli
	 4oGLihP6Z+bwMtIAm2HCTQIqbbaaqc8mmTRdVfPVl9gMwCqgNPHLR57sGLTZX/hUXq
	 ZV3CxGAQGWVJIwMX9KbsFyP/ls4qvWLRv0XRVbGV2OqxpLQVXnhJ56y3CYHt4wWmcL
	 328OuUUBV7ixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A01CF58C4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680395362.17097.10730123685009865354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a432f00ed755194f0d6f19828b6bbcbd9652bb846a93b42e2df041f3f3c559e3
Date: Fri, 20 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726803953
