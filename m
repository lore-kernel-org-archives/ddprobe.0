Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEB8243964
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788061234; cv=none; b=cCaQ576TCUSiIYiHbR8swVieofJ4igqIF8+mwN9wveEL8rzy3ulT9gV1lJxbSOGvXB152au7T6zOxrBYFWnueif1RvIhndutyBfs6JC82RnWWcYB73wNkfnI6Gy2tWGNcgLOXdgKJnOxml6v4+EhU11jlWBx3dS4z54611DBhcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788061234; c=relaxed/simple;
	bh=7vuME+A5PqZV6iHYOM7YEN4XOWyZuqHefzoRPqfKWqo=;
	h=To:Subject:From:Message-Id:Date; b=qnIV81fpk1XSsPZoXzuPuLVgu3V2Vc3UM7CgkaZACWjtk+wQQFlBON8Ap5n6iUEWcFxxHYR6gtO4RrKctsRTY1H8iFpfFiNNEhSU8w4SnRSjZxJD0gPTWA9Yk9xeIvbIA18iswVPzRQWi2xKdrJWzcFcV3/egB4Q5Bus7KSLEBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O73U2f+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O73U2f+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97C1C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788061233;
	bh=7vuME+A5PqZV6iHYOM7YEN4XOWyZuqHefzoRPqfKWqo=;
	h=To:Subject:From:Date:From;
	b=O73U2f+OB7oS/+Uzry3Zcwq/+kSZIvaWOtRebNsFFmwiizlxBmoVhzHhFNPDs2lTR
	 0KFdxJE4kkTpVdWSrXruXG0XJunQ/UZAKaKcM8H+5we8l8U+nA84FbSdEYZCv+hCMV
	 3HTyWzaCRq6DJdicfG7VnGCFYtmQCzyA+vF0Sn+SD/8PuO/yHQ3YF2lNq5GdBQxlQc
	 SjVuBNnYXMkoBtnaVRXeAvBKoFHFUpJsiT5Ut4lsV6Q73exwsv5D6Kl3PoXwCJCpl7
	 9xyX9Ljpavlo+w2+vij7Iw/3FMbJbLG5pj5BmuSwPpHFU4XirVbUfj+qfUKt2jVO+D
	 qFs/F8XOaj+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF83C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806123368.26500.3637009329601468667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0804179b3e64f20e124685865962c20dde0929a836b5b093035fbadda070f8ae
Date: Sun, 30 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788061233
