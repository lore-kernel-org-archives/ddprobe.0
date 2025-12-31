Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B2B219E8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767140034; cv=none; b=gqWq3GPVaJIHvkGogUB6tbxFIQ1ZPBhzvMH+ccgtRN/cd+LhIiHwL1W+rCpp5oOC4Kbo7E0cQ8OLuneOEKKXe4ebd9j5ojxdC2dauDAnOcViH3WceELMx6y2XOXMQ8er/1W4tuVy5GbSu+JH975LKocLLfm53bR6AcExGjbyQWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767140034; c=relaxed/simple;
	bh=XohGmUmpdXIPlAc3jURPkazSOzFs2PqNQqhot/avcZQ=;
	h=To:Subject:From:Message-Id:Date; b=WUaZaaoKbX/F/1RwWtI5gBfq+TbzkfHzuZ5APKCaBYjqjDOe8B/oMIdvSMGYb03i9A3bRHZuIXSonFWX7Wdfkp9rhUPBcHzyaGvXVhhtusMpkC5dQ+eG5L4C4aZ10Nc4al3A7s31YcaStSJRhEMTp9tu8JiUKz6gEge7oB4fAk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVVje0cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVVje0cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1523C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767140033;
	bh=XohGmUmpdXIPlAc3jURPkazSOzFs2PqNQqhot/avcZQ=;
	h=To:Subject:From:Date:From;
	b=KVVje0clDOiLqEdD0Q8CeMccplaCuyKvzOp4GUCY68UtQBk5NDWtTZOJfudcx6Fbl
	 MmCSskDqOcdHQItO8KNuj1KdH6S9kMO0XmkgtPL1hli3/mhvSyH9KgBUt0R1x8YE2K
	 +3mNiBRxc4eScRR+URq+zQGpj2+mrAahptzVO9T96+wJTIRNj06e6EYKgjnhq4LDCi
	 2zN6bWYJdGcJ3ByjbrGezCE8BMdJdZHSjcFost5z2/HAuPfBrZVX3hU8FiUZ39pQpd
	 DTuCf958az1qilBq8kPAxJm21OGrvp6HmBompo7Hv1D/pJ5PPUmlmYjb5oDHBF23+a
	 bojDvSeDH/xmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002CEE57CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714003358.4645.8508031009663497536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f414a4ec5931048123941cb9b689ab6784f383e038963d84f16ca5620a0489
Date: Wed, 31 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767140033
