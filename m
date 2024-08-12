Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213180C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723435554; cv=none; b=LR6LqYE3O5NZPUFrpqCPX7Zg3FIE13Q9RTj3s1fK+gQrztIzHzD6m10iBw5Xux4Dw+cyrg4L3dWWVxYyJoMOKZMHPsnDQH3dVhVAOIOJfIdk6XAXWZJtYSfznOQMN8sDvTH/WGRc4Tc8hT6j53brMb35WaoWkdI4pIaYN27yA48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723435554; c=relaxed/simple;
	bh=LQPknUhieaYipOg9xkzTQhG5wk1PO9Emojzrr6nCt0E=;
	h=To:Subject:From:Message-Id:Date; b=rMDUcnSsNLOyHEc0qiR2qb0CeOL9ZuENoRwsGf6aygKqRYZYm43uvecEyI8wa0w3SjPY4KL8gObgYLiuJwBGrJDKxL1HvBCZH/0DSeLmZAYJgnenNUXxHZzVhTw3MedaaXXhB9nJ4VeIxwZQBVo4h79fDsZHBGfR9QoJ0MeQB9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfvbBHNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfvbBHNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC72C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723435553;
	bh=LQPknUhieaYipOg9xkzTQhG5wk1PO9Emojzrr6nCt0E=;
	h=To:Subject:From:Date:From;
	b=jfvbBHNIEnOsl9iR2rMFV4pTpArGhueGx+7mE9BgFILS8C+50U+86qlGwKXAbQxI5
	 y3HpyPgoMghHIrevI2w8d0ktWK02wXnpHtlmxhUdTXKhZDiLnXrpVoqQshiZjXfBd1
	 B28A0il+8lYmJGRxlEqHa98TRXJHaSg5EpKILd2EYeNt3p2WgN6ZHTQ5fHtiWU8JfO
	 3jQElzhMQiRQKeAdDY1SxnuSZTM4pzRECuF4JzoChaOfTYMR17WC99Ai5GEEfIvCOJ
	 Use2up4Igw6jJ/XyOrVjvoGJMjficb016Q2lHSDoYrv+7PUkzaaWhGMvOUvntsZmSh
	 rp2rW15OjUv9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1619C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343555362.5475.7713228817283381407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d622a99ec7af42a6f540c69e500cf7629298e76d96473151e09eb4519a306f
Date: Mon, 12 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723435553
