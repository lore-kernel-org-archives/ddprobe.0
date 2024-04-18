Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364F15B145
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713434963; cv=none; b=QSuLcq3Qz3RM9Em15hBo/2m+xuEJZkPB/4KpqXU1lXKNms4kCqJZLpiImbOMRiX7AgmgjuBdWZaYd/FaTT7CN+cYOEbWmy821p9tiVr/gnWDXxZE3zVqjaJ/ybTDQjMhyO567GP+EYc/Br0oD4ukwJoPRr9mums7BkOiQk+K+Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713434963; c=relaxed/simple;
	bh=nhHcKTxo5epRGQ7Z6Kh4hB+BY/CTX25IPaIgNYl8J60=;
	h=To:Subject:From:Message-Id:Date; b=onxvCGmB77+CASf9uIqnuFrM+0yuYAxbV7ct7W+XCxJjHwzEWvTrxo6Emno4b138n2lIjwSi4fDh09AYn7CHbLMObwWOapkX60YA1f7E4s2amyVBVKMVYI8GvhWWkjBMzGWjDjK7MugMzPoKMNyCXICyWLFLhFRdesfKF/rGzbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+EYvuMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+EYvuMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6579C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713434962;
	bh=nhHcKTxo5epRGQ7Z6Kh4hB+BY/CTX25IPaIgNYl8J60=;
	h=To:Subject:From:Date:From;
	b=t+EYvuMwQq8qHCeo85PTerp4ASMnLOtTO3cCOyX4VbGJXem712j5/hHcFAXhDcpx/
	 rL0/VzzTenA7hnedrQ76ouunf3fmyNlqJU3GrJy9uRKlAV9udA91fT7GaIsGqhxGBI
	 CoIZA7F/BYkK6+ShguIZLcxeL1RiReePvIBtxOpy5IdAOvZIqAgv8Mo+Z5QiPCRR8Z
	 lBAAQKYv0nka4DtV23Gi5klYihblRBsuGVI/qpJ8DKR6vMm9tnxAPyg2KnXf+LwBTa
	 hdkqwwV6qdW+sw34gvpq4vaAAVpGjj/V7RLPDNBYOKyVOqPgiXJ0upJOCxIzqxQPpH
	 7g6jo8vMq2EBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C574DC04FFF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343496279.2552.6503174056542829212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30b78df83e44db9938f80fe171ec907f6f27217c320c3b7c5c083b2c8268fa7
Date: Thu, 18 Apr 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713434962
