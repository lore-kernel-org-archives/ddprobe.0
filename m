Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966A55F552
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710804496; cv=none; b=cowvxG+0Cmfbm07LV3fOTH4FIGkdZnYFb8N7/DSVGZ7cSWi4Wmy/BOU7/kRJUbvFvojLeMsDh+H5JRc2B6r/zfQ6KJQDKuIbgbUWTlTEveRelAaBFIOfZi8ghJMLrAgWRtmth2m8wW5j04IbWVBY/pPvW2rtwjRfdfZVWIP89bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710804496; c=relaxed/simple;
	bh=DUPOvP2TXRHBlboqewM6Hb8/6b2xFYLW3+kdkyj/gvU=;
	h=To:Subject:From:Message-Id:Date; b=jCoTcZnrMpx/54rDOfviKpgNhZZRtu2fw2XyQ6Q6pBuaN0+/pYWsEeJC79Y5ZnScCIY/700ppTsXDZuflJSE6TjcU+h2HmEbrZ1Xwql6vldZuXEPkwO6mnQmF4va8t7N6nsxCFvG9vYqZInvVD/WjYD4aoMtgP/ueh/OQb55Wz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjafNor7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjafNor7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758D5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710804496;
	bh=DUPOvP2TXRHBlboqewM6Hb8/6b2xFYLW3+kdkyj/gvU=;
	h=To:Subject:From:Date:From;
	b=bjafNor7Kqu9perKUU66Na0vXVRWgwgaXep7U4xl61WV8B4ti4/DNJJi8E9x/wqBS
	 wgPm+BuSOdVOaBv81i8hP2HyIRc9MuL+NydFrA2m1HnFhR5fPFaKiJys3jN/Z9E4Qo
	 9q2KkmIhf6oxj6cDN1XK8Bdm2S4BKeZuEui2OAubtdhDcIuZYcROs9J9l2vaisZAlV
	 6FN5LLdstxtJUF+7ekOW/6epMuBZbqtUdMTSrNQM7t4OYdc0MUcKXN/28Iu5Jx062I
	 6jbjM0D49pk8CUKebNWsFKhd6l++DlTUWXy/M5xMXDkagGzBxsGBtxfMERXUKFvjZC
	 q2ydPIcNUuuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64169C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171080449640.27921.11987615127300363740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdfc5209b0e6f0c2e1d02670cb38cecfb2bd62913c054352e0b87fda86534dc
Date: Mon, 18 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710804496
