Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B84C2EEE9C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780883674; cv=none; b=ZAUDSoOt33I8Cc2fDycYgbcxtDHB3BY1/uJvaiAHrmmNrJ7X/Nt6U1sbUc8VCxtzF3oPaIz+SjBdYHwTnhyOKxMtsbMfIL25k/mUCQz6oyKuQWN8/tBVcKDyS3IMlXb0U7bhb03aBLU8QMtYPQd5Skc5Je9r4L46q0pOxH+RMJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780883674; c=relaxed/simple;
	bh=WoX0NLf0bJhCmDhC7Z64lXai6mvJKj3XngNEERDAGT0=;
	h=To:Subject:From:Message-Id:Date; b=SsITB9xlzEjuuZVRnSB0Mf/b8l7YipXLZFhJQE7b6Zxp6AFKHx2Q+OaJYqDUg+MZjCjK/tHSwj/rKkFubz9AnqiBWteNokm3wlZpgbrbVI6HFCbLigbNrv7CnV4KUwUUg+ffbTZwt0izYzBGFQc5xAjNVLedYWVPqDQM/sQdlxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGBS9NJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGBS9NJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14BBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780883673;
	bh=WoX0NLf0bJhCmDhC7Z64lXai6mvJKj3XngNEERDAGT0=;
	h=To:Subject:From:Date:From;
	b=iGBS9NJlGY5lXqfuJWGHeI1Ptx3+49LjSAHQeUO0RMDF8H4jPVtTumvJEa+tDA3gY
	 l108yUZCQy4SBs7p2X7+SYZdgXWrjsfqAsx8aFDtJmaln4x6VpU/P9CVfndWFZoAMb
	 Dc85KGBW4e1ND+X+w+Re4KVmp4vqxqrkbqbBWbZEW2hVXBc/FtbEVQgirKwZYS2hor
	 yz6uQ7Zk6LMQKt21RskVMi1IOEIytEvmBpdgU59kZh/zAFxuoN6fIa9xHKfhbL6W0f
	 IbIuINMYxER5g8sqRB5thkO8l5sM+Q705dymEsSIJ2o9RmEU2HJ4Rc8HH8HYJB9SDf
	 H70yPns45Z5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6CCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088367368.3648.17065318149808039547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bb6c7543d5ad4281a1a9a3b2e2f6eb27077212b3c4f876b6975f3942e559ef
Date: Mon, 08 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780883673
