Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215847209C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789929034; cv=none; b=qnngMN3aVIYQ4rY/QYIdFrgF5hS6gIT7x703pGn+gW8wawNgN5IfsSVDN12hAJPmp+indREcdbml3FQyEM5PzHe1YmU0mLnEOVFVgIVeTNYmxWZd68GO1BXzwWtiYY3ptzXg68sCwYuqcBfzefrmXZ36WaJ535PTDNHRz8lsJr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789929034; c=relaxed/simple;
	bh=O8mVmWdwoHzv2nVXXMqLdgT5wik28+oA9qpN/CMYFDE=;
	h=To:Subject:From:Message-Id:Date; b=ePJr7ITCCcc7e3i1fGznQZqXfMZxDZNM2lsc06zkagLvKHoQleS7P+PwsBTMQmxc3t3sXk4myZyS15TeQOBjb6xml9qVASolk1CeuMCH4Jw4pln5N7ZMoTSdSc5zmYMcqLIpNljAzBDiah3nP8QVwK2F79nofadCyf9VI/YLctI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0AFLn3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0AFLn3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09A7C2BCFF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789929033;
	bh=O8mVmWdwoHzv2nVXXMqLdgT5wik28+oA9qpN/CMYFDE=;
	h=To:Subject:From:Date:From;
	b=Y0AFLn3hbCwdqgkC6HtUdisG0OzTbX9qEwkscCV7HoocX9AODMTzhXT50/ycM0yWV
	 fnK/C/ErzpcWToejtPD6m7N/Fk2tYlAKuN9iygSZ2BTgSpjZYVuIhJqHh4LkKLoCVU
	 tjdTt052wq+ymCWwmOA5qtfiCFbCYKbw3ktJuZhXTVH4UWhoDiRVNBvhThpCS2r2Ob
	 w5laPoCBCmAz5HXrFF0f8rtF3ad6XPV57E31GBP+OJQCchFyi4qejtEuv0SMlfehYl
	 eCV5mmVH4dJLgBddL/fojN2v5EBPl8sWocyzomsyrpwPdVbH30KISCdMxkANpbsj7W
	 RIsIrjGPTwc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01EC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992903370.24752.9780669450793102333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2265bc4081bdbd0a92eed228ef7d19501b0052675105acf1dc6153612a82bf
Date: Sun, 20 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789929033
