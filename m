Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B06188936
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727739954; cv=none; b=olRkk+w3Old89MUSFc68zetDH7ITBGtsKEiNFLtL6OVdfUcBTftIKhbfpTu3F7hD9vqUSCHJS8RKwzKpR9Ee5bY3Q6Qk477rkNYHsEdw/NVojeIv+5jHRZ0Mx6Pej3DC6RQ++JVo86BtX3w8LwRvMyO99ECQMSoYHM4OjQ98fl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727739954; c=relaxed/simple;
	bh=JoooLXj8t9VWeLQUkX4BbZHzzS+MCPv84RpsplvId48=;
	h=To:Subject:From:Message-Id:Date; b=OHZ+EH+SWsxsmQV4kiRdIy1DJzzDTKQF8cI41NTyKleLQs6yoMuLgePwzd0TbjSoxv7eMI4Xc9B/6d1uRlcujVWmJDMtrGzUB+JbU6MflazLR32pryv3scplIow/BTq40CV2OTG6zjwnFFlb4RqRh5xf8cuy3AYmTxBN7qFBKnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnroFDod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnroFDod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9DC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727739953;
	bh=JoooLXj8t9VWeLQUkX4BbZHzzS+MCPv84RpsplvId48=;
	h=To:Subject:From:Date:From;
	b=jnroFDodhUh/K2oTQd4wu9/d/w6KhTs0mjePsg4tpVbwPupi4iXhKVO3KjPmEyh7u
	 mID1YrE97377e0s8J6wPXhbrE+/BprDZjSWzUAia6B7vRAHa0C1Bel95UjGJac3QfB
	 V6ewHPo2vUrVsxc9IUhHL4fXMqQKtkyH0+zkuixGP1heZgqmGHiNUSUuP3gLDUkHCX
	 +K4mTrm7XJz644O8thoL7/Z5sL/14dElhJqSiMB0bbCQirLrOn6OVO+oxYk/9S7w9W
	 kSlrNTEG1IvvmjLJTAFSAeLc1Li5zKxQ8RyzOx55QF7SfiyKwEMd7b7VWTPwRwNeUY
	 wMiWDAVnIiexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98115CEB2CB
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773995361.23262.1081314300494348503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91b4a4abc24cd1f158270b92000ecb51e31aaf269e275b9e7dce9d4f61523e6
Date: Mon, 30 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727739953
