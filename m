Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D722D4C6
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745004595; cv=none; b=KrB8f87WuZUi6iRhQeZeNaTMosrA9/DOCyn9S0KBApicRxrmKGvF3LqTpDJVKZlD7lyCL8fiC38HqVZV0rC0cwsnJVxDQubvkFWftLR4mE88U+TtKwdy3uOTUMZgxxSednl0uR5a0ZTYDNU0jgR1TjpCWMXFZHaUndxQJ2JDV9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745004595; c=relaxed/simple;
	bh=m/zVy290yIF3I9OWAJB8Z8m4UScPwtjEjfxrt6PofMQ=;
	h=To:Subject:From:Message-Id:Date; b=BYZi7xiLpQ7hLrVkLb4e7m130VZPMkhIJ+LQyaXYHOH4rB3lVB5wagbX/cwzZpRwKcagf9elm0ZKvPfgCknZkAO+KxUpi69xpRQ4Tv62mu2d84MLy0GHQW98/bvOmaWritA8g89l0IY5ydbAooxnes1UHFWPRbhvkEB9Jx65UL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXG2Vufg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXG2Vufg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745004593;
	bh=m/zVy290yIF3I9OWAJB8Z8m4UScPwtjEjfxrt6PofMQ=;
	h=To:Subject:From:Date:From;
	b=TXG2VufgR34IOzzZxPKnwYqpU7we+C+R7aVB+LVgPdjcTNA/jtdr8FtqN4nGA0y8L
	 nA8uyNoWmcnwDtl0b1tWKA6tP72qEfqM+o+fVmTzzeZmIdoL6TmD9SOIZfjUw1qNNP
	 rI2hHbrNh5R5s60iaUdPUY22fzaJSnG2C8XX3GwYml2C4q4oCbKVK+O/a0Q2p/cmay
	 GQZdXak9vFrM2q3t9ghAT2P3yqSASyzAP1O6FYWQnWmBqwakmD+vMzkiUwqo+fFCLj
	 BpSQ758sgn7XYYreO5Rxtw8c0nrfqYwWp/3YIKkv1V40xmFxMJqhNYc7hmhCHlBZ4H
	 JHZ+khvnzeBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9924BC369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500459361.31974.2272154250989554323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d837df2e778811aee439c4a84cedac5c1a6e9aad8235ffb61544367aaa256d63
Date: Fri, 18 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745004593
