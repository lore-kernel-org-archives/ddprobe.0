Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2472A2C11E2
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779535354; cv=none; b=f+yjGMZnh2CSNWVt4jO3SsCQKWrZ+Nq0AsXPvbP5jYv4fNipHZH/sl7BO8H66+C1LQ6gI8NvxkajYqcp/L9B0ty56m04PUXdlhi68z43imslY+SJybYYi6etkJiyrtRyOw+M1KV4lw5pA5sYedvtQaRUhLMHkYX7bheR4t0jxnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779535354; c=relaxed/simple;
	bh=HbzMT5G6o7a8qoU18LgAwtjyoZhaMa/snDdaUKiEkYE=;
	h=To:Subject:From:Message-Id:Date; b=qGYbbYA0o+Bi2a6XryEok2YtUkXFOSTng3R+St5jUjAZFrAcbDOOmxVw8p4vR8phKwH7gJuOrj41rRr0lE7ENPUzqKmu2kXRoQPjj4hnJphJkApxP0tHdBuRNLz7Rnd+hddSrCJJE9XRtX4iZ2JSbheEkAjqt4wPkgr1/dCkd6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8xkBRZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8xkBRZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DB2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779535353;
	bh=HbzMT5G6o7a8qoU18LgAwtjyoZhaMa/snDdaUKiEkYE=;
	h=To:Subject:From:Date:From;
	b=Z8xkBRZsm41KjPo2zveOh2mFw9fkx2sMvRbSQiDWP/yNpSIcab3ZSTe9A5qAaV09t
	 MDKa+CRgbQ5IMD89L51txrCFubhTdBKQRjtxPLnTitz5jONfW2aE3z6iS810CNYDM5
	 X/S1NMCRMduvMisthI6JMJMpbC0HLTmz5VZLJ1xXJeQJXwCYji4AeWmU5OS7W1LR7l
	 A3KmJTjmIQy+t6jKpe2eX+yD/yEe/IW3BhTFQlHye3vGCn1P8GcCWFZ+LmXY2A0BtH
	 VUNmzy/mPTTvNZOR/p4/gd+UM7oR+DGQEqdOBCaeMzK5KyNd+Na7fkD1Ee+cVUebGg
	 gBLC/tVGOufqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD61ECD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953535368.16117.10393061272029410132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefad1dbcd29b3d4a7256a050702a164c4212de07715dec6d09e87187779c5e5
Date: Sat, 23 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779535353
