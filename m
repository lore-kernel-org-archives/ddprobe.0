Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C01125B08E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779531154; cv=none; b=QULdenyWZtHKa9IU1HGrzxhr/oCxQ9XJjxJYv5CT8kwUhn3jVVm59pQY+oOijVO9cQcteo56ImOzqHln+uiSvHXO4mLR6klWX5D5SNrRCgd/QP3wJnaJVW+r5sxD3w2MpPmEJ32S/mEBFH4YeY0Eef5BlgJnGD0P9ebp2j66aaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779531154; c=relaxed/simple;
	bh=LSX9RWMqs+/ctLOGcSPpVg/bmyDCcX8tFYKWBmZ/l0k=;
	h=To:Subject:From:Message-Id:Date; b=az5yLFK9VFp5vGQZnW3FM7oR9n/c5SLFbdRLm9w82JbJnQoko3qkMnQDEiu17fy3yMl1Ob+umj69PV5CcCqUAyE+RohSCo02ZDTzNn3RQnFF51QDtOBbdmCNTF/LdsjJQKTvnxW/fy4C3PMNMSnyRa0CqTFnBPW8AiOMwBUUArE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9T7dTw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9T7dTw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBC5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779531153;
	bh=LSX9RWMqs+/ctLOGcSPpVg/bmyDCcX8tFYKWBmZ/l0k=;
	h=To:Subject:From:Date:From;
	b=k9T7dTw/CLkr5Qhkxywt0JalS08bZmiB8KRNS8D2Fn7SPB8S6V3rW0O2zLM8cdV2I
	 5VHDKjLf5XIv49JgXGRxfybuYiUwuol40v3aTbrt+ewAUmQi9jiBdMLXlcGTk/1g0b
	 d4/drKPnnVavnnwU23b7U7EehB0fukB05FgjFa4rCIS/QygrQBfySFJi/pSRhZAJtL
	 Sf4mupO7v9tZYDuSoggg3JH0E3omdE1+PUOHMDARvcNqwiUR3RLFjqgoQgbDBGxSjy
	 FBNEVW9WnqOGsktlJ+z0rJJDbf6Nl/xwzBr8/T1M+aGSUgRo/J3EipfJ2zM801YaVm
	 na0VX1nizcu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11E8CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953115369.1461.4386521921479892668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c18e196bcd810b71d0a8a1d667db2ff3d43126f622021089bd48da3af1d351a
Date: Sat, 23 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779531153
