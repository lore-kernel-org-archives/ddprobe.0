Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5165022F388
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780546474; cv=none; b=ocIJyKQ+sruFde1ApvoqxWDaz4DVnnFvECzlWSpsq/Jlr/daKcW15iOMG2piDKFLz0JT1uGMK1ArFPPQT0jpUagoHXrMbN8Rp3WTZsFpUtwJELJCPDztZzakkYZdOCuvovFRzajbrmJDzjU74XOPI3sp+ZwqFeTm2GwePuiaSu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780546474; c=relaxed/simple;
	bh=tWnOB7cWGFppMnAyqZzi2BsVBzIPr3bljrAni97ERoM=;
	h=To:Subject:From:Message-Id:Date; b=tYYYm/CLORTQPa3XATVpsqhvtngPXku4LwrAvnejnzKHnyAzN9bN0Wr9q2oIexcAAaawNoz6KESHKSOvx4vMFn4EQP9d7qAIIVLlx+n4u4JhXNsgUffSipOkl0mD7YXmTU7j+/lFCJpM9NHClI4ktlOeM7Rm24eQ4bhDO034VF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKo3NcUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKo3NcUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCCEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780546473;
	bh=tWnOB7cWGFppMnAyqZzi2BsVBzIPr3bljrAni97ERoM=;
	h=To:Subject:From:Date:From;
	b=VKo3NcUUnGN202spqA3h2Ez7jT7i+ItqSbC7xYmmJVqgIQZuWA1xgI4C7sk56aBxn
	 KeYYdclfCLyKL/GmvisOG+RAT7RoESqPGKgr3PU0ZOWEohuxBLuKiSUNmFPyt1Lqky
	 JOq3pJHAACl4PMaEVcq0a2K6TGvzi7vyrsz/XCZV6TzrvxQbjOuElz2fta6A63s5s+
	 tnhvtXAOJ7SmotAVlv0sdi+ONXDua0qCJGMDl3Bjll84RYHFm8nlugl+yaPyySeglu
	 ImRDCVw+jtmbr+qyeVKTRrg7XwBrKIUnU6lVz0DaY43eaK2OvorGbudgsf3ZgeGBsw
	 VqaUiIbcCFncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26F1CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054647372.32510.3400443134610759321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e98f54c97141d71e2f92284c9e0065571a267bcd5f925eabe7d0d1b3273e8c
Date: Thu, 04 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780546473
