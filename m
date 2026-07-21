Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C7441A79C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784616514; cv=none; b=g3IC5831hxzmIZL1Ig/fzvpwIuYVPOrBAJy3N5yipVFYoLKsGxK1p/rIbiIl5dH23u8ncr2pMIJdPwqYSTYRr7g0ruDLkVJGZGsYbXjYhdJ2zztKIhVHmzvSiqpdmtQu7GJub/PnfgZSL2rFH0U68cgOrixFdngVBtq9mPPTPeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784616514; c=relaxed/simple;
	bh=4vsKBewto+xz6XfayFtuR5TiagQs3qxSgmFExUUKkSQ=;
	h=To:Subject:From:Message-Id:Date; b=e3mUAQhX0AySmb/mIJ8mHplea36BOWBsuiZ2Uyq+KVZKLgKUH4GmXrHFu2aIsV7l/cuBGK2SuWD4n23myYi7DeNXzyvagzQSKmJUx+uz20qnCqRqBpZWcwdR81HsebwGNoiR7+ZlaRU1I0EwuYuvR2ZJjUnyrbY2uakVTxnmjfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbBov78Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbBov78Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D10C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784616513;
	bh=4vsKBewto+xz6XfayFtuR5TiagQs3qxSgmFExUUKkSQ=;
	h=To:Subject:From:Date:From;
	b=fbBov78Qumx/9as+B8GsHAeO0keDNE47meyjek+dvu7vkLtWDRja3i5TO0VCHFv3Z
	 g2PVuIcRfsoOmDg1eAABT8+LeDyHFJXjxos/JeuTFYNk5x8Gx2uBuvDt1dbYt/QQXi
	 FMLgRSnDtuR9+ZL6RJdgtviX1AgZJf5Ll00sNjGpnomUTKuXwzceQCeUdO3HUFoGw/
	 T/8L3zUEg/xIC+a6olUjCAkC/JiiPQaf2zVJ8XB9p5HgxiEdi1DRgxMt1nDcMeUuUw
	 H5JgwSaJy3AvdWar4xam/NSFVUe+8MBHsf2yzAVcw2ogGgAA4Jv0t5qVmjG1A9KoG9
	 ncsUZRy7ac2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B103BC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461651371.32237.14760702181996697554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030a8300739a8dfd21e12207aa3e13a0968433e31c8e38e96df44250c1efbbcf
Date: Tue, 21 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784616513
