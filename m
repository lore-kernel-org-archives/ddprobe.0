Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515826A1A7
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779503554; cv=none; b=MpBenVHZ8UuOi4nkaIOkggMVrZ0y+VtmGZGW9qpGP2zJZSEWzQm3cX5RwxDk6o6/O/YkkOjcGRB8h8xZrqeLksgB/juB4McH/njhPkgecuSL9SGZ+vbCCd/zdXA1JwFra8icgNkwRRnXFcCWca4qhmTj1Vxra7LDPq86/0P1xGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779503554; c=relaxed/simple;
	bh=UzZh9BOJQSAkcwxFXmhloX+MnZt02SwJNEcVAlcQyEU=;
	h=To:Subject:From:Message-Id:Date; b=gI0sEjihtvPz7Jrnbgh6GGmyt/Qhz4xe+Rcm3AxnTqC72EoHVsUFm3fLXRDcbsXXRDUgvmXsIwR39bii0CNuWHNyZKp1SMPxgcjOP8N3JkXe9MfofkFQ9Bl+eS0D793vLs5UG4o452sNQIXi+F8QpOStjuT3pobUR+jEPnpOr6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGFOIDg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGFOIDg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4451C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779503553;
	bh=UzZh9BOJQSAkcwxFXmhloX+MnZt02SwJNEcVAlcQyEU=;
	h=To:Subject:From:Date:From;
	b=lGFOIDg6KoZ0k5ZN4+ogAGTNZpBnEZTwyTLZV3D4hejdD0le94DpjkMMnNENszRAU
	 LxGe2SQ+ZiXczLuCib8FChJlq4gXZqoGfKnCgcgcmPeLp3PLc2izH9RG/q2l1RuddX
	 60XtsXO2bIifI7ezM/x0EgI9m3XQJvP8g1eB0TVJ8LeL8F49vvtkmb9C7veJIlLUN9
	 MXQ7IreeO8sGkENzNeGkBqOZSVtCMtw2x+KAEKHtdXSkn2OTAeYSY3A3LqsxtY9Wch
	 TWukOvZzSPy34zcKiSIKUHojN+xhMxCEaDLh1HgErxruLvtedpTv943o97xR+sv3kA
	 0T/1TeNPddlyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA1CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950355369.15494.7339682308001071389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343603abcfec113c704e37d8c034c007dc0c9f614540eb66d90e0e81aa9b4194
Date: Sat, 23 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779503553
