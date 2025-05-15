Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F82550A6
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747328394; cv=none; b=EbgktwspPCowtHdOxNqvistsmaRYep3I/PJY3/DnOM6R6jrH4omkr0Y6kcHhpbCKy+wcfwf3mqK3GcdKon1UxmsAf3jrQfjPPLmti2woLsF3cgvsduddroBWsfLnH/zg1ClljvaTqhKcfoXOZYYPn6LTXL0pBVFCAqVElGO8k2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747328394; c=relaxed/simple;
	bh=nunp98JYUQXa5FIfsIyEFWNhBzYSDAHXNvlUpR7mkDY=;
	h=To:Subject:From:Message-Id:Date; b=PFEpRo9Wz2RXB37J5+nXCvz/hjJgRkJMjDXfoo7u03kYw1BGzDlhX4ZK6ld5Vh1KXIVruCqWiMDwMzUGDfgvs0+bgR8dMF6ywZO/jT+lbt8FgpT5sI38yp1KpAUiybFKqODSlbJjkdamprx0nFokcPOJewY9f1WnAO8nQzW8h6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8oQpbbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8oQpbbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D99FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747328393;
	bh=nunp98JYUQXa5FIfsIyEFWNhBzYSDAHXNvlUpR7mkDY=;
	h=To:Subject:From:Date:From;
	b=p8oQpbbFEn5FiidF6QPXNuG+naouTOQi+033XHbPdV+kTGtLGJ7LGq4XjTy4ILGKv
	 TQNplu0DkOnsY9XDkvL1Sk0RX5+jEJbrVPyIhQ+zQAQb04PbFC/ZPvi2isPheZg51X
	 wRziuxucjuP4vQrCLisVrwnZM1N3FCAeokn1loW64lcuo1QbKlp7PrriMWO+sy6uCe
	 4a47uJtcxF/crMmDdVAN1zmGT0iSrB/31UK1H/h2lD5K0l9wuZFnLGmHQ64SK+i7rK
	 gEnZILH5rtfAIXJ8H7CZc3vb/KoM1OTS1I/YioLAUd+6GCMqCWOkl30XaTd8ePakyH
	 4RA3EvNk7DKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7BC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732839357.23310.11866948776657612040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a63b2c8640927642f44f3d0c8be3bf4d7094ca9179b2920e60cb58a9c87e5c
Date: Thu, 15 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747328393
