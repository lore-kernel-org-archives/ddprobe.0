Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8891F09A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785060634; cv=none; b=bYe/iyqYxkz4JI4a5ryw9q0c5RmIFviL6lflu/dMR8nqB6gBfGbMbedZl3BXanE3++DKXLAOEiGxQPCr6B3OBjKKCIABse0JysBUeNdtXs8wVqbnVGjQCXSrTxIaDCkoNmWsiKosSIVa/xDp9+Ohr5b4n/sVgAQp52Tv0g6uPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785060634; c=relaxed/simple;
	bh=5OXh1JW8AJ50/OVaXZYKOWAOe5vYxAPgeccd4bT6uzA=;
	h=To:Subject:From:Message-Id:Date; b=DEWaQbBXUulcyzTLJ6D+ngiLubkKH+2A9W/u6bmdSuIqG04yI01uc5pYAZwY8utI2l2DKvggji+dkT03XyX27e+SdIJM9KRKJTTyWf5Ui5oL1CtdeZDOtOaXIyzp1SOORmjA79BM99GaGQzAwKwdGi3OYSTobMBV+DeW4iVGPs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M19lCoJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M19lCoJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D15C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785060633;
	bh=5OXh1JW8AJ50/OVaXZYKOWAOe5vYxAPgeccd4bT6uzA=;
	h=To:Subject:From:Date:From;
	b=M19lCoJ1VRoWZYQsOJ8mELUvPD5dmEH4UMCuRssFgtxdRqIJ5/YLrnpHshlxCwZHp
	 PZHv8+hjXw0XZO/wP4I5Aftt+qGi8hQGkjKdjy78qGYANsD236fIsNFwKUf5HDyvya
	 I2aCavxK64zrKztYiyj45ix6Sd/jkF1d97qteiuufW98hNasfw1lhRT+tFTdWTl/Vz
	 eXxmpQMO7Nommro2urbUuJqhi5nAWRVaNGL323VSbySQdIjsZxMcmei7Dkuf526xHG
	 IbE+pOx7s8rC5kvQTMQq+rOy5IULBuzIpB6Ke2sjLnL66dVGZiOs8EuVvzI0Ed9iF5
	 RqGOhddVMDwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD46C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506063368.19640.13045090551186811505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c21fe276cab19b571427aa53de6243317fc8c281a56a3f9fda9dae15ca78275
Date: Sun, 26 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785060633
