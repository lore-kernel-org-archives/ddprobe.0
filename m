Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518B621ABD7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787607034; cv=none; b=c/4YT7NBe80azX4gx17CUmT0a0Q758zQkfZBZ3vx1aCZEzawfFaUB6iV82QFNZ9Ro4Hss8vfWL2qDT2+K2c4h+SQQK+CbBH1ZV3ixnCRDiTdxgQWhQEwOFBZgqKnFK/sKTfi7TpgTDXYRA13yL1S9aMCbHFqTw+Ej0M1Q/pbYVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787607034; c=relaxed/simple;
	bh=uG+MuHLv3jHGjW7savGO/IoKi6MfzCElaxxJytEXDwM=;
	h=To:Subject:From:Message-Id:Date; b=CELxUK8VqmDDMdx1UB2HOMXt0TwTZYtbu5AOIQvEgtrAo4GPWOewzbTMNyHOF9eKYbFPgHr64Vcbmsl3QzRujrjYHYjDWWau8RomkSAN9aW8Qb08aWm7pfRwIiL7P2xUR5CyI5+9JCyRdGrkIf5u14WmpsFqMhyVPih9DpwZiSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuvRJN+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuvRJN+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D146DC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787607033;
	bh=uG+MuHLv3jHGjW7savGO/IoKi6MfzCElaxxJytEXDwM=;
	h=To:Subject:From:Date:From;
	b=KuvRJN+qbAdMsOzJWlfVbmWvLMbrLOoANUAXcnhlNA8HEFQc/lS6vrxruV3RGL0Zf
	 WsRfbjQ813jVmkb/v71LMlUmz1KGoZZxEj2BCE/X5GHd55Szsy1AQfyMAxzxl8ZaD5
	 muEghXhLGStz5oWG03bs+tdU1zbkK+H4sjUXZDiZcPlosZ/zRYsnWnbBo4TjyyF2zh
	 DLY4INoI8GcLb70jrYnqmdtrhz6YQ0Xg6IfS0obI7rvOMLoYrlsNZ/QxLJz74F1zbH
	 6x0AnKvyjFgr1JG8Uws8fGQVN+2g+muOTFvdcJequM6xPGOEP9PxWk6R0y9qP3Dohe
	 rONPb/WlJfUNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D2C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760703368.14135.13838788259878902532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febe51f061667330955dc68e405d1ab9eee5d3b6102ea87fea7eab6ddc39b3b1
Date: Mon, 24 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787607033
