Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9D2E719C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762830594; cv=none; b=FluQPsB3qtjRrL7qBGENw5DWBI5VwoI2H0kdpjuJgRQbbCEnGTzDAOQjPGv1FB0CRk+E9RKSurowZUVweMJ8fKcMP5py3gB+DpFs8PUAuM1o+2vmei5NjtmxPgEqDb3Z/JILo1lqGKq3c1gLCT2vQIEnH/RvUFeMB0mXXgMnmhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762830594; c=relaxed/simple;
	bh=+Egcr6PF+aegXkBKf5Z71O5O8HG0I1M9GdcVY7IHrT4=;
	h=To:Subject:From:Message-Id:Date; b=nxICUJh3sNak1iPDcay9owsy95/T9XJRPJodJmqYjIFYSSGcxEoLc+XwGh4dELa0PyRrR7LloJIebjg/dqAGljJc9qtRGtC0AqBWDQLCYR4iUIr41SGoPI+PaTKT+Bj9UqriiDPwk7n0u4Dqw5E40GmdujYmp7pWzXu4m3V0BPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRmTMkkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRmTMkkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF15C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762830593;
	bh=+Egcr6PF+aegXkBKf5Z71O5O8HG0I1M9GdcVY7IHrT4=;
	h=To:Subject:From:Date:From;
	b=IRmTMkkYlAN0LUafBobmK5+iZc75OnynAOuAGAWzFpeikD+RXP6Icv74Pd/1cQnD3
	 sH+Onj5KSdQUA9xNxqvJ9XMTcb8pkkj/w7gfYgXZhAKWasp1FG/0nOWE69W7dD9/Eq
	 5QGqUxyqQnO7NSgM1ayTSI3K5zQscBhBo7YzO6gyQBWS3htLl58Ul+k5ihWHxzN0I+
	 4/8qtvcRZio/b+bBves5GaofYETV5LI8cDc1alxT9YnY3uPvlNpuFDfI1gEiFX26Ms
	 67FenSaaQo+g9gfTvVyvE1mcmAKPKdjyKVBB3dpIL9Oz3jW5jaLNhXaVfFlkmluvsp
	 aEp0QeOPtAFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DFCCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283059367.10946.14678855057956744425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f5503f4706c37a1c54680b293d815e4b95816a07d2c014c64a2a0281a069aa
Date: Tue, 11 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762830593
