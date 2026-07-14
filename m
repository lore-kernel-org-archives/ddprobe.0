Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B9F332EAC
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784051914; cv=none; b=Zl5sC0f54iyS5BBk+b37vN6fds1yKVC2zj/prqBJyZUIwKoPqNaqzbDVtDA2ySnEmPHC+hr40JFg/Pt3G++UnhJPuqd1LVLlOzAtUcgslZMl2b60hOVpSyRwilIg10ueLHwI/7D4+wp32+Vsx8fWUEtLALqRHmWQnygQQMawrgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784051914; c=relaxed/simple;
	bh=/f2smnSeSSFLHoQsDcK1CHtQCf3EyreiMwSpSVd3MTU=;
	h=To:Subject:From:Message-Id:Date; b=eFW9QZDoj9lteqI/MRHYkgn5vaYhsMPiOunUF3Tli8Wbcl8xS8px5RNmB1i4kX0BN/Tf2ol4Z/J7dvEL43WQpg1YbaD+scTAsINLljy6b6To/qnDcoNAV96daHA/Z6Rq/DKF+Ir37bAj9/5ZfzphUmK3n1iAp3DELgY48YO9tnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwgrQlws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwgrQlws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784051913;
	bh=/f2smnSeSSFLHoQsDcK1CHtQCf3EyreiMwSpSVd3MTU=;
	h=To:Subject:From:Date:From;
	b=HwgrQlws7fAYz987lw9V0Amg5abRq0cb4WcR9KbFd6TcUMd9dE7dFFFNTbmeVaO9d
	 HqPYs80MpSVVz1G8E0v7gVud7D0+GKGSTPGzK8q71FdqkhNra2ODpZdsotXjikT4B9
	 0/MK/M30ekadtF4MyR8H7Dh8ucBDD+2npvbXdCjTMFzPFmsAjkOM7TuZuQGuQ8oT/w
	 7OhugLFND8N+iE/XOeJl+TPX/516HJDxoZ+N4/ZiQWofEAwmZJ57pmiRWRpVUn1dAL
	 x/a631pBAH2vqX8EuEviinmV+UxICPPhddgHo13nbA1tGzuGrWE5X++M1Q9FoteA47
	 S7Z8tLpzBf5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91ECC4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405191368.8139.8659686654598340179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947a8db6a29bc07ac89575017b68ec7b54dd13af164f18a874b8c137b866a456
Date: Tue, 14 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784051913
