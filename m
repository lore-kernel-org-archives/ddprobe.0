Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3DE3126B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789519234; cv=none; b=cT14ocDbGRnE/svzIjXnCwvPIelnhCgsNzIs5kFtd08e6RR/QXpTcuDmxV+Vz1QR88ujMibUGTBBzhv1R2E0mpJXNUNThyPYyx8BEnswdLirUfYU34qAiMlOsLkzNWxabmtsiS6jKe3f9nA3l+nYTGUhzk01Dfs4QMljjXhWgNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789519234; c=relaxed/simple;
	bh=G2u3VlZIvcIZzOcEL/LtT9jPkzABmUheUCebTU0vlEc=;
	h=To:Subject:From:Message-Id:Date; b=LlZZH5f6/i0IR/ohpqhg8VmPGV96Uu4HXKhAMXWDPHUC5UMabdLQO4HQ5ova/uEHejtpKBp19uEeJb8/AM/g+31mgayVFJxpdVDBhCPZKf+6c8GgP6WAx2YDEpPqIN/gZTPSd6c1COlFzxRaYLbrqwBxn+lKcGhfo02+VVszkGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chnJRUdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chnJRUdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA49C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789519233;
	bh=G2u3VlZIvcIZzOcEL/LtT9jPkzABmUheUCebTU0vlEc=;
	h=To:Subject:From:Date:From;
	b=chnJRUdp8MfgoDc2lC1RdPDnMdAcEdUePh1RRmyOVpW0X8x0lhWkqVbyC06a4xhIj
	 D3/vwgmns5tiZYEo2w7QhZzI6FqtRWyIL9GAvqDl4FCDXn5rgKTkURrCiOwfZ6K/v2
	 huHtfNz5ui12WW1In8vkqVuttdaFa2k5B20DE3/a1qV0b2Nhq4ra8Q6GlX51pWONoR
	 sfaK3GzD73XRqwyHhYL04OipnFweQ5xS5ygdWdQX+jrKwpFcU/S9vW5CRLquIARovb
	 WJ5qTbF39mkyVpHf+8tkQvpegn3RiyiTTL4mlJFuOTrFsP6dKz1k/Ju7px7L8awOrp
	 Qi/0ftijKcgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91F1C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951923368.25425.14010889931803019905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538fd72f1f33ae5f766e7ca881161a841298134f7f8e391661c28209a3fc7830
Date: Wed, 16 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789519233
