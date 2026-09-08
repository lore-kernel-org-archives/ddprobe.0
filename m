Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C023054C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788831634; cv=none; b=e0guQU+i8j015glR5OsxpnX8Tbq6gRRr9q9ytum1UbN/PY057jUl54yNPcJMmhCyocg0mFqE9Wm2nDHuWzQ6/4eQIgnNOzLFHRXbdcLnkYWUz/ZQFrRNYbziAbydlFBohJQc8DjXgfvEm05kCCPKipUblIjZdOpttfh3nGKUVz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788831634; c=relaxed/simple;
	bh=MdpRUSPpEidoKqhqPp3rQ7guy2ZxF+XIDJoQDU/z/HM=;
	h=To:Subject:From:Message-Id:Date; b=GZsXiZeG2nHz9GE1RFOpe/ai3QUz6/uzcYqHz6poyH2xAkc/CYxno85swuLHXiuM2yxD6kDiex40xVGC1OEBhH3bDCeAyci0VcuzdzG9CykJBZKRC1TkJ9oGlf/mIx/5iTre3pBIA/c0f8rW9GztYejLVLzLprhiWCfV1JOL4t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tz+WPU01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tz+WPU01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5079C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788831633;
	bh=MdpRUSPpEidoKqhqPp3rQ7guy2ZxF+XIDJoQDU/z/HM=;
	h=To:Subject:From:Date:From;
	b=tz+WPU01oO2/nqSnLdMkqhj647TkOvQC0z56HoMZqiOpR1RXtX+fhysMLaaZmlgua
	 L0d76CONGPiCCdxouaZYnkrhSGC/ONO8U+LOEatICDs9yhNCgUOpH7Gxd787C8HUZJ
	 w8wf0ABQiG/KECPEts9fizk5B/Otwm9LZK8wPftZWf4ccBYHk3Kh+Rk72LmUKiJyXA
	 v18vCzuooJ7t/+hCg0d+ht69PcJP4JcagSDNvNMUR0Cjfr1pHdmHPD0gBhQKRqayeA
	 sdz8upF9qhaXqRwy5j3S8vqH8X9NB6cn4p9cbNi4U7ufeHY0KIws+0aVb1V/26pTmP
	 MvBzxlC/FaQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B094FC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883163371.7760.4637937447364562335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891ea46362349f9b4a1c3f75834ef10472791955988b3684f5bd075b189563c1
Date: Tue, 08 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788831633
