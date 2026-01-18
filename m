Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12562155326
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768773834; cv=none; b=urNfm8fd1cwnvIvvoNCNaBXGm13tAUM876pSs7Oipx9TmCftrKeOQvMQjByzepLxiPgUUAeu8d3900188yxXpFhNBaLI9uBZn9mHi7D9EkTbdTH4aR5olswAxhu0f2Cu6fUP+1wg1WdwoiOvb6m4jPn2pz7y6jKpjNzOqT6N+uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768773834; c=relaxed/simple;
	bh=Ocb+KQdozxTs1Nd5AuV84hXXxXelXgacO6V2qgKfEiM=;
	h=To:Subject:From:Message-Id:Date; b=IkQfNpr7yYQHQ1VtAMTB8Ot7/uU9hE5bsJz++OJuklsYFX35U1dRd1JIk60yaBH+/X3pNhEArhZuNv8cJMwDoJAoiyFdx5gxHBXOaa11VS2U+A/s/mCqxlQu7s7j3lFmW5wR0DbH3+qDaAch+RpTGd/jiZWSgxzX4UogVP3MbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8BnjW1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8BnjW1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC1C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768773833;
	bh=Ocb+KQdozxTs1Nd5AuV84hXXxXelXgacO6V2qgKfEiM=;
	h=To:Subject:From:Date:From;
	b=L8BnjW1wdjmS6Vcq55hSB8iJq3ejeTlYoszc5KBvoeIoIZd0rJceHiN/+7u8CvsFJ
	 ndyBduxwqsH+oMmMD1rekpt+yK+S5YtAPIzGKXcsgKcPSfDYbqpyEltB0bh3xM1a/M
	 mrUSsw3A+0/UQ54vNlEDz3ctFtimgV9Zfpjs5ePjSWys1sk3nenR3QftD5fob6ssjI
	 AUz/2PadWpIRMLA4QSdIg1xgyzdURGPc+sj6g+Te6fkQYV+VnQQtGKxYxL1W8TpPS+
	 u6ROCfT21lo5K/qMMXID7x70nJ6qeKrmkhf8+tNIw4s5l8u4PC97VZHG+Sk4zALUjh
	 AMwW0e6VpX9WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90227C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877383358.31940.11451063616215722528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9149cd3a4b5059e7953d7a59c15f003b9ea84bb9d97ce6dd33e6cee1bcf50faa
Date: Sun, 18 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768773833
