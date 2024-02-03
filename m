Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005745F547
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706975297; cv=none; b=FYwXPd9jGOrYPY2IEytW/VRVZjY8qwTpWJzfesAYTa9G/27dq4+PpBm3CoNdQwk6T7FeCK4JoIWeH8WAQBn+JTQPUnbr4Q2PE25DNETCKgDLK2kLBBc6OGQ3sUtZaiV27IQE0CwuxyFuwRIFJ+LoZSb0eF/4TSCzUPb1SUc6DWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706975297; c=relaxed/simple;
	bh=GjmcJTTg/nP2IEaAz+ZnGhLwhPfVJNqHmVILC+ZUKgA=;
	h=To:Subject:From:Message-Id:Date; b=aM6EWX9fw37+B2k7IbzkpNLxRlkpebhY1G0aTlkIjM8sc2N//0n7WHe8vE+K7yBfWmbtCYGmN+DL+G2kWr3VXoWCNqunge89KlZD3mgIBI39JsQV3K1e0XOaXmk4Cww6XV9CqFV+Bzk6+F+1z2htzfB+wsLSn6pT/pKtA9r6Hp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfFfbXMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfFfbXMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72867C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706975296;
	bh=GjmcJTTg/nP2IEaAz+ZnGhLwhPfVJNqHmVILC+ZUKgA=;
	h=To:Subject:From:Date:From;
	b=FfFfbXMIacAWi5sMoAwtljciVu3q4N0JRWq2YgtV1gpVeuxU1M2r3mhWs+hOUTjr1
	 9m+xv6pPBj7dv0uTOglxSpt+chilFhSZODqZ5kyt5wnevCKIAyWXEM1T6lCS+k1xV8
	 wWf2bLZ4P4IxvpJFXy4mggf9vUPdoYDjOFNOp+kdZUV9K6ZL0SUkK9W9xYJ89qT/hI
	 z8qoV6LXpWqcr28HzWLQZ0KpS/00Kanu9bnLdtzuVe4aqRGxVOUG6ksJhvrh6QIHHZ
	 +4Nkd+YF7L04Lu3LfOATI7OMiwm9SMsuvDbHQ0AC6wUapJqSEzdPJ+oW3PiI0gsmyO
	 08DYBkDUqD9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAFFC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697529636.21873.13286058225479879544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1336b22c3df19babf341af7b9fa28ecbd2197f9c06c27b39d46ba5767aa6f45c
Date: Sat, 03 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706975296
