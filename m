Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D6343D72
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774725294; cv=none; b=OiUXKndrB/s6jI4kK4gn+o69oXlqTq9qZRtA70E3BNJb00QHT5KY/AejQX400r0GVO7cOxW99AlqnHjmPr0vGSS1ljKvyCXdd9VV0hmBH3ku4w7SqFYeqKBGzR0LRpFJAquD7WyGacVA+MSgZw/C5OvkBdiS6fZWQZmHSr5oBow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774725294; c=relaxed/simple;
	bh=hg+u1ZnEYkrz64H84SKsu4cb9J/3guuEy3RDypf7R14=;
	h=To:Subject:From:Message-Id:Date; b=XT2vwiAaVu/C7aWUMm2OeSLtgjmbZ6yCDlWIQ5DWHJih/K6gfzNb5K8B5lFi7QikffvrEVzJX5ENs0KoNrVy5XETO8c9Gi8SEYI3+3MoSu24M5kob71ESwx2+KnYND0dsECJ5dQN0WCCUoFkWrGfYPdfbPwYDkqmerOp91mFS/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKzzTLDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKzzTLDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D99C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774725293;
	bh=hg+u1ZnEYkrz64H84SKsu4cb9J/3guuEy3RDypf7R14=;
	h=To:Subject:From:Date:From;
	b=qKzzTLDRlQWaPF+4oG9rLe0/ZVaEjp8RaOXpBk0BQA2IEDfnLzfG9O0LiMvp4yTpu
	 1XNuO8mib30QJKeMERb5K3b+stTjXmk+mps+EoXTFW8yQ7OQONLIP1RyErSzVjl0z1
	 bPGzilaWb7jAMOMbxbQOFaIpJYUeTsBkmMPUS7Q/90ZBYK8CnSiHxrvfPLGpvlv0KS
	 JmQD9r/P6q2sg61XFp8mZOq7guNp2PUVQq1iZrAJZSIz4UxNb48VZR5/QgDq4WlPCv
	 4+aBHU1IEO4F9NU+HYabc2+LUBD7dZE+JmQHLt0mma9S7vVUUoZe/b0BQEjE/0QJGz
	 5b5hjezVZLAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9456910F3DF3
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472529358.29190.14759225114867925271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59f7160f5348daa1f74a1901dedf7f968b0c5207d214e32fad9470d6fd76507
Date: Sat, 28 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774725293
