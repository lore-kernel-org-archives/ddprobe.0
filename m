Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E1B46C4B9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784659714; cv=none; b=aTHDor091y3UzqvZVIpU//okda4lQUYHfB3Cp8h0YhD/1qZ0SXoqHxGxyD7SrgG7I+RMo7ntVIT94q8QekcAAGrkk+uU/cb8lk5aeanPuv/z/qUb+QZUjTpyxwFhWnyzv6lYO4MYz0D4++VoVHJMMCyPswHm1gv7XpdPADggxz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784659714; c=relaxed/simple;
	bh=Y6ErI85WoVbgCel6jrfAeuDBVMULSPqXZjlrm21+bsU=;
	h=To:Subject:From:Message-Id:Date; b=JSi5MF2g3yZdrzGb3FkbQBP4dk75LyPgFyFsxaR6pQXYR5neakGx2eP0aIvA8+TUL4Ma6B2RbecVWFu7ppafosoAlNAsTxIB2HoFD7N/MvbtUU4J/bglB/30aEhKxW4QHbTg+qwSd1fRSNTkXKAUlmNYCDnhTnk1PC4XuViiaxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbWFExvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbWFExvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F87C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784659713;
	bh=Y6ErI85WoVbgCel6jrfAeuDBVMULSPqXZjlrm21+bsU=;
	h=To:Subject:From:Date:From;
	b=bbWFExvTIevo57zthYMQ92dPkUYdEbgyu0xbkIRLxSnoKtqQd03DGn3v01K/sNBhh
	 lG8Ga63hIMWUoGivQeWeln4ITW/rVaZh9e86z84fl9Wm6r6x7bFoi5mQ084BEziIHT
	 5zwTHjJGT6wwKctBbUT146Is2Uus6WMEcLxL+pEJyRXrzJpQS2bau4OfSVhNOMaO3P
	 f+CTwh77582Lpi+P9dLhzlBBtSDnODQpkRRqHZ+PCAWkkRtOGu+e/pTl8qvwVqnPEL
	 6qHHthoLhZvUSYK1zVgqcYOWHszqhIwNTULdDxgxxdd0FXXOZOg36T3UVXJX2WGaMY
	 7RcRoWfTslD6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA826C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465971369.10615.2992576319720779810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386dd2f28979cc9745f9f218e7a54dfb9be1c4ef0ab4e164ae5f23e24faa7836
Date: Tue, 21 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784659713
