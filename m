Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D6734DB7E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773603294; cv=none; b=Y87TLDozTT28IgMdutDZKB1CfmuXZjyr8aUwJ7/WLKl8gTgitqIoYmZEyIqvDjJgtkQY6EOLKtHXk3aeXy7wHNeaQLIhBMhAkmqu521DIqvxtQOT52S+Ejv3Qwmc0nXwqG5hcDJ+2I1X83bZN36gcQrZkOsOzfQWrYB6emLis1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773603294; c=relaxed/simple;
	bh=9OaSOk5ELZ/ZarzFiPWm6luNiL2YiSANe/KgKzxLe18=;
	h=To:Subject:From:Message-Id:Date; b=TSgBMxvO2Iel5GXnQbg4tDXZBkOFaQN/31hfHNnG0GmHK7zhNCjQs6SJcSGxRZb1FqUDVLaIZCHPSmjtKdyUs6M0BQKTNmbVy3nJ5VwzLSWtYbPd8FBKTr//ObIdYozsLhkUjyaNBDz9e4NdgeDHgvgMobhicXzve0D57tyYVxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siz+bRDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siz+bRDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773603293;
	bh=9OaSOk5ELZ/ZarzFiPWm6luNiL2YiSANe/KgKzxLe18=;
	h=To:Subject:From:Date:From;
	b=siz+bRDdZ59ezVQfbCdTwJ6Jas94SIFr8P/ECPrWIl22X7mn+qL8ol40eC7T143gp
	 vGn/bXGA/pnDGhuNbPywRe3ufHkdBx6niYwLfXBCTGOK4WuCuSiASnbaFCP9yInZ6F
	 C+aEJXIvxCLfIX7tX0G11dmlP/vt/ZxN9IZ+oVtVWt2GKsolkMJzKKVT4yzFeQC7hA
	 dM3e+mA9cPE2q9zogBYeVqNrFMKodTWQ2GN9vfneuA//FsK/DAJvPbUBzVZ/6TSgxQ
	 G664XHNhy7t/cWYWJdvexpTfU9gXqAzxNdT22g/7UUZP6zyi9XfgwO+eaHK50YIgcq
	 0BWrPFWJP3ykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E59F30280
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360329358.11457.13863814766337326215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26ce15eeb5a8661bf8168ae0bf35d10d43ff2ffbacefe4d5ab4a81e020a14e8
Date: Sun, 15 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773603293
