Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E03825F7B9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782231394; cv=none; b=JMmUy+Zc/KRK9ycrdDPEUQcN3pQ0oq3d85a8tO7LFEEOteAzm1+M9Kkog9QL4veD10bZP8VTKP98MECJCVAT92S26hlhDxZyUk087NxTxZrUAdxcWWQDQuP6QhY0czidKzxZn6NpQDUvRerMu18q8NxhDWJsyRA7bvQrlbYaV8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782231394; c=relaxed/simple;
	bh=jIOm21m6onqW16F1/xJO8IU4ZBb1fSWmFi+3Mh0Uuy0=;
	h=To:Subject:From:Message-Id:Date; b=D90moi/3jqzLHec3t+uEGKkvnxSWhSzMj8wRgLS3F2YqNnu5hUFJ97obf4Ad/Y8Fc3piHQu7yELOKUSDA2QEN64nnXDwvczy+XLoq/daHyBnIjGLeSm8ntHQepAnMfiH7t4l9iA1QHX2r5tnPLlTk11eYpXv4Kih7MgaclNdyow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMLQelte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMLQelte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75B5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782231393;
	bh=jIOm21m6onqW16F1/xJO8IU4ZBb1fSWmFi+3Mh0Uuy0=;
	h=To:Subject:From:Date:From;
	b=EMLQeltem04wL2W79goU5WATUJQpF0iPxLqkYKyu3m9wlYb7CW3oEryst/9216px/
	 aGsynXvV6Fnvf3xLt6DHhagDa1xGAWqtoanDKBA0plhz7mN6dT5Uq7F9smLLIFpjSb
	 rrI6UoVFnrNxNqlvnMXWFWiSQHvkkRVBBqMpHpU3KvdfmphBbDaIKt42mY/HgmCjC7
	 gIvyEqj0CkcimtZWZ4msOrn4U8bR0Uvt+I9vk3L7pKVAK/DEF7pCaGrlyy9yWIQcsA
	 naqRtFMhIcO7AAg590hQ8JALl2SdM42J5kJ0ZqpX/U7P2u1n+oG5je4eeqQniCzGKH
	 d2OYNng6t0cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B3CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223139368.10719.9157768722579830849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88542c46f3cc9deb12a605d040fa3a564cebe71b84932965f4850841776effb3
Date: Tue, 23 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782231393
