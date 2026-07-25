Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D7B34E763
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785007834; cv=none; b=tqN9l5DJwvS3z9NJkzflzWtkhW8tfn3cji8ITtyQyF8o+a6JZp/QMq5F+y6I+lBFZ2y6HQbi+w+tvGupncl5yfkhHuhmpOVjvg1rsn9fA6y6oWzUX0DL0Ihv4fAIvi/TwhQzZXSnR78pb2JMU1E7gob5AVK+V8Qif4ZO8EvpaHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785007834; c=relaxed/simple;
	bh=5zyFT/3gHClUku1sKo6RrQNWIU8WDXULCFc6HC0d4PE=;
	h=To:Subject:From:Message-Id:Date; b=bm2MaX65vf1oYGASKUI8wIjr9LRsQFkDUtp7r/VIoqMU+4gRAGvFaazVxUQpOApObLMWcAvxsBGMTg6H+Ru0mvG32XvEm6v23I45pdKfudfw0PLkbI2c2I6CGLDnvbUZesYpmwzb6LI9rDoXOO81qHX3Izi6MWcmzM4lw15yKts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpO1YmjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpO1YmjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785007833;
	bh=5zyFT/3gHClUku1sKo6RrQNWIU8WDXULCFc6HC0d4PE=;
	h=To:Subject:From:Date:From;
	b=kpO1YmjLzaN8nA2eD0jsAT0blddwZQf7+Y+X7ixXB3HSeq2Wtqsf5SWAK6KtAuKoz
	 bycjZI9KyPLO3geTV3zPOoxSXt1RQ6Oe+7CTzDmXr19LJ0xIEuagNJqijBUiKXgzr6
	 LgoOieT834K3cVzzxzdX8b4gpNjmudps9ZK8dU8NX5H0OdWVRgNKBoqdahLiIjqFFR
	 eM5xxwkeBZ6cgh6L9hW7e0YgQkH2YiRnFKvIzTH6L0QWQbUxG9NZmX82dk1mGcbYG/
	 wDeTo4UxLyUTOwRnJOJYUHwChhKEevd0DqKiUURB80nXZQdHONeAVrWKGR5Tehste7
	 WwBQJwx7Db3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB929C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500783368.27167.14840928190139992192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f71ea7560c2a58d365f119f10ae4770959c1eb6472e968f75b43c720f833db0
Date: Sat, 25 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785007833
