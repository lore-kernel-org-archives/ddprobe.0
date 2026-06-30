Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311833B3C19
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782853114; cv=none; b=lB0fYPgf80xe7QvdSkhkHYVBxPqneHwuy0RoppMY6kFw3mF9zRQ6keVVgZnNzQCOzDGKkcfOnJOZDwkdbpN3SpSDjEu/GIzYKM4b9RRw2SpeJmr5DM68//xti4RuXZGRZmg2W0dqQVuaUbUW/Zii4xKWR/2nRLhpBE22v/iJn7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782853114; c=relaxed/simple;
	bh=huah2FtS4qn+IDdLSEvQ4XMnvGyHOqsKZeLukgHUnhA=;
	h=To:Subject:From:Message-Id:Date; b=WE6oyxtnjz/F7x5yU/dU0vPqcqICY2Jshv+HlXbKJH2acllS+Fojw5fJLC+yHzSdTCA9R4tOMFHZpPXxWSUx0vEGXUM537EekdwVzbcyofaRV4EygHhtA0AiZNrkd1HMrMBR4ICpJWWbop2sAA+Ozwk0oTZ/ewuTec0vd0jnidg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjncCih1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjncCih1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CA4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782853113;
	bh=huah2FtS4qn+IDdLSEvQ4XMnvGyHOqsKZeLukgHUnhA=;
	h=To:Subject:From:Date:From;
	b=jjncCih1TwQPwokebg1rGUes3g0f3cWF75loyXoGb1srfYh7Gvm3nAD/0lCEmvc0M
	 BFpmhKXv8pvHlY1Os+wL+zA85NehxpfRTynN9G0XAKID1oB4xzwjJK3rIiWOsgc0ag
	 esB+YTZaCOzLpdlehnCUCqwM+KAf4pInvE+AVik3zv1qJo+oU3eTBXGpTmpg0RdNEh
	 rBvtYIEOduSqDJK/mL12afTYaIBcAHTaogO9DHU0MVfB52XxZ+Jibo2KDPikC6eGBU
	 VAE7BSFULqOnVowC0qrmmVsUxiyK3kouJ6H5JqK6QI0LydZvAl7Mg6siHMgy13AxRa
	 erSbAm4V6L9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8727C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285311368.369.8980412903771648037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb34b1964f5619bb7372e0dde672bb45cf663e376ae1c5b68218e63993d9a4c
Date: Tue, 30 Jun 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782853113
