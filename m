Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240173C8C74
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783508315; cv=none; b=GqLsiIlkGFzhbH4QD/ITAjf0NCBl9g3by3f2t7GsNR22fA+FJ4k1Mc07J7MqtbHsiJGsU3Dln9FtSh89w3X4KoHywnmKEmygQlw2WYUxuBbV5u2i1WtnZ6OFXYRkEYORRlqiubydq5BfyK5mab/sbtfjUE0HCgt+ZwJqGtSYhtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783508315; c=relaxed/simple;
	bh=cGngBWlwp5NAqwXcYalu9LDo9I2WnUUiSHcttexPH9o=;
	h=To:Subject:From:Message-Id:Date; b=AmZTfWXS9PaQ3nTjIEo7HPjoRhU4H8QAdZDiWPeUVh/kV8nTtjkvskcB5cW25I3l064pSlsIYWc6Ttex59SEPOlOpWlohYd+kpCRuvrdCwqapQ5Hxh5SAAqODmCCdDD6rk3Fyjhzuof5u1vV/Wfkh+yyuMkWE+0RpA9uCx6aPdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyYUMuf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyYUMuf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D227FC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783508313;
	bh=cGngBWlwp5NAqwXcYalu9LDo9I2WnUUiSHcttexPH9o=;
	h=To:Subject:From:Date:From;
	b=pyYUMuf+fZdgcuJ68hPAoxlCg8gycrrEs9C0sv69BKMBXGvUjYEZ7IFlO25LRcF6N
	 rSutsx6Bl/h1+10SyCpH64XbQP807Zzp8q/ErVFdsKDUL07+faZ6HLVSzctQoStV49
	 mpXv9F3kPBiapLg0pVswPfTeNBgrBGh/7+obg6KeZV6vkegnibHS25Qtp9vIxlS5tD
	 rHMjvZHLZ/WXo6BYsfd4P5PVX4fdDnG37aXzqoUmBjU0JZTr7LkTT+6vclVpPCfZH8
	 HH1Ba+Bwy71BXwS5ZLvRe1l98IAkSrdFihW3FFtpepwE9U4wWreYF/dORBRLpj3op/
	 SYMd4gA87cVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC25FC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350831368.31443.2361263679558051081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466ac2aa33513d6f376f0b02d19a470ea9a6dcb51f6e8594f198ef341ffe66b8
Date: Wed, 08 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783508313
