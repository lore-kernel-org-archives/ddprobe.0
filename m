Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C60F111A8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744906794; cv=none; b=Hy6rfQhdp2v9Oog36HrFr2S5HEBt/IzERpd+WvL7rad+gMQIKo2vUKxLLOZ4PvY1pi2wmXoIrDk/x6mCzg54lnuvze79iqbedt74LvAMV4uaajce9nGQfHcvSQX8L3vA/szXio3nXCrV3n2MnQSYZJayLgqdjzMgr3N08jFiEv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744906794; c=relaxed/simple;
	bh=TvfgbweWEhv8on+jzYbfRyE/0UYiJRi2Eii3UzsXkXQ=;
	h=To:Subject:From:Message-Id:Date; b=oUq1A94uiohuL1l8ED0zow06iLxLayFDs7nQx5S8HmslC6cpYGZX+s+rjLBtSLBls/wdWGwpRl7k5pOvNArzbETGN3fSw4vn+T/ywLJmey2ejuEoQK27H1nKBYwThQyxvKO0GQt/n4FsgVeZq3rZeqgcjS7RD/eyqV40QfwxAmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5BnKQ5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5BnKQ5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2E4C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744906793;
	bh=TvfgbweWEhv8on+jzYbfRyE/0UYiJRi2Eii3UzsXkXQ=;
	h=To:Subject:From:Date:From;
	b=S5BnKQ5d/8WEGMIepjZ6Psx9JJkUrWSdhNxNqpAGwuR1zy3Ir7TzzsOAg6SeYFKJ1
	 Xdu+AGA1Y9IMBSJK9Yv6WqcJQztQs9KPCpmaE9wNn5Fcxs2hLz8m5rPH2MTBEMahsg
	 4jfdZLp/6orYHbz9aVzkJ6ZGQ+ULH2XLkmX3gUSal4tnVpbHfDwwtSJGx2pPX+k7+x
	 KxSereVgPfovgUJM41XTZtCxrHlFSLmz9jGLC34O7vIOsWKzYvhT6ts/GSZwOIbv+W
	 G00KJxU5g3P/r6164zdk8H7FnPi8xVSyBYji8WqtYdVxpxhOS+0RzyjpFuUSkNrBLr
	 Lc0xsi1p+naFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F68C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490679371.19675.8285396536979336609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c6e393aee1672815075f7aa8ba6aefd5970d5abdf9a7b8a3a5521b7205c6ff
Date: Thu, 17 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744906793
