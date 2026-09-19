Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415642749DC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789837234; cv=none; b=GR8Y9eCdLzHT9N28HckegJzhByEAnTeiF4YMtlLyg0r/2AcGUHeQu95eLfqLrIXTq7CXBoIwH0XJbDMUX44lBK3KGPriT3vzBpbWaPnDy78XMp7l/Aka8UTqea+GEU5RIPGtg3Rtw4SSDOeiNjM74JEniZaRFxlHbblemEAA3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789837234; c=relaxed/simple;
	bh=ScNbCUcvA2aKjH3xhjRl5UDyqgSiSg3GGX0ybkOXOvE=;
	h=To:Subject:From:Message-Id:Date; b=NGMuF4hLLGrEEBu6W7XlaCWJ39B5wROSIVYeBfOxwAQSz191NoqxJK+sQXki3jysia7r8nxyo4nYyUCCwcnwI3CM1JiHC2qS3r9SKrj1kyJ6Rbu2161aBg3b+9RFr0vaELD5upcUoEcVb9nyllNn3aJihxNPKZIXjyZRvS2kNpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaF15DZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaF15DZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEADAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789837233;
	bh=ScNbCUcvA2aKjH3xhjRl5UDyqgSiSg3GGX0ybkOXOvE=;
	h=To:Subject:From:Date:From;
	b=MaF15DZapKoH6FegnKq5G3S88Qya5tf3IavOvvJZj4XTENgLAQKbocRoDqVn/YxUG
	 QWIORS9HbaKKMxPnGA9CIMQqp/KFmIkNKWZxA1+pfmJhRD+CG0Bh7zE3c/7/uAP68R
	 526WqpSzmag1ji2T/4kSeMG5AJcdoF2YvgBHwThw7wtIFwKbcvW60v1grJwyvE0MmX
	 HtxFYFj4RUGEXWgI1uWVNpoAnw8fcLGu3irFZP5RM0LA21Qysy/Z8N1Yr4743TKr7z
	 xvVL9hW+1Bm2UlM5waabSu9xvt8JxKA1bSEEydKulpLDoZbdvApAM0tROZxd3uCw2f
	 X6C8viMbZlW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CFC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983723368.26398.7352968855506463739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c666d5b60c01e932a73c090cf25d9f8c5eacedbbb4a3215eb7e02058c4f88b4f
Date: Sat, 19 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789837233
