Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6505425A62E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763400114; cv=none; b=A11es8AxtEpqB3QiHnYfEENYaY9RBaQ5rjzXR6DtZ+izoRIEslI3YczXq4xA/KmooqV2d7wmoJ/rSZOlnMiMdhZREzTueMNmpmke5t+VxAgbhqnAuuV8Z7SSXtXyzLjVvBRSL73EoXC0PCNZn6a75Az6/KBejozPnIKd1KF5Nco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763400114; c=relaxed/simple;
	bh=libxyBBi3/E39jwz7BFLkH61oNEyg5ayWH9gfMJKYXU=;
	h=To:Subject:From:Message-Id:Date; b=DXoV2NZ9qPb7adGE9iQ6V3DGN5L6ZtcLn/P4I9HbB2gcSsAuUDWNzc2iR5d+cHocvZj4kWfLdoaUiu19SGRUbrI/vZ96DJI8Sa6r2It0x4XPty5oe4iO4N4X986sPkypXXCKAvNtZpfaFMJTgbiZUiTIv8FnSQ4uB90DWdEcTVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3MzqfjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3MzqfjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2E5C19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763400113;
	bh=libxyBBi3/E39jwz7BFLkH61oNEyg5ayWH9gfMJKYXU=;
	h=To:Subject:From:Date:From;
	b=J3MzqfjFee495iDN9qRxKnCQwpK1d0I8t4/vMBoCAcVWKVagvOoV/05tWXH4kf09S
	 nL9YvkoQCJwKqHFNqZRFyGsTDDR5xzUHnMbhVvkVBGx6LPak3WjJEPayYzYW1uYorz
	 Xz6/1P6DjjEqgELljNs03SxBjWGrJMM1CJ5i3Gok1x99Hj0AakoOKiQb0jrwEv5TrW
	 sbDwKotj3BlTC5Aue9qrWfX+0bVONkYIKtXer7wQ1/CRv8bg51vpLC4O/j2xG+hh9d
	 7U5nrDe0XorZT0bZpN3miXMpRvCy+y9g3QHvr197HJdMLPLYA5IOhrF5AbjXApmn18
	 /5rJvcAa2FJ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C50CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340011359.23082.14108216453252725919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a478d2b45c9af3cc28161f1ceebaf3d1371cac2a6ccc6b50e2d7d2cacea5bba3
Date: Mon, 17 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763400113
