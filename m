Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547793F58C9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785823234; cv=none; b=YAFuHamEjMRmpV1xgli6M4BTUWuhye2nByJWVKTHPiB0P/S63N/qdSmY4bhxU2LyIvZJwkFiBaCBgb1XxNQTb/TBCselFw7moc4lwLdKJ04aW3BGHqF94+E+gWQtLF0uBvdJggYaPd+QAe0PKGQaqcym8Swbth85OayqipjmpuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785823234; c=relaxed/simple;
	bh=AAe4JWKYS7v9zUmLRYNs+nqo6JQa6QpwJ1xmP8P0seI=;
	h=To:Subject:From:Message-Id:Date; b=IR7vEf16JBo857NZYpPKogESEqVO2px9fs/OyPHCkqk/0++i3SyYgmq39LWzZd1cQM0SAn5b1TTz/ebLuN8T959thaQmrE92SQHCqrPBlm7tSfX3RWZbWJO7rV3CmOW/RMFouft8y8CIkK2gEtC/AW+mM22YnvuQSxuiPUAr4u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uT5XOPlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uT5XOPlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5A4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785823233;
	bh=AAe4JWKYS7v9zUmLRYNs+nqo6JQa6QpwJ1xmP8P0seI=;
	h=To:Subject:From:Date:From;
	b=uT5XOPlM/CkFODJSQYr7s56+uUIiZMl5L34YGNPc71+KYxwkN1A7fCKscgKGMfBW1
	 pu1luVYxSzKX4ik3zK6amo4Es9aRunjZXfs95ut09zFIUMeab1Iiisi+rTwLk3KaXG
	 u5AFsRABgdma9Y/DO6boInb+v3nAsD/q/1oF5N4nBynaoZa5jaZiAaYb0M1qnE+TOu
	 SVt7DOYsZRPhw/UEqPohDhjqfOQF/2URTWJwF2wrwXnghGYUnRyq/2vbqHKLD8yLdN
	 i5Agy9nxM/BhrUAnqP/nQdjK6kjq2wXh1PATswLi1wV66c4LHrFP2MKIY0Tp/Qn0mT
	 yv2dwfGf7uTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0782C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582323371.12924.18042884619814652595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2f60cdd31ed08c338afcb1c68d89108aadeadca4599a3aad62d29a61885b80
Date: Tue, 04 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785823233
