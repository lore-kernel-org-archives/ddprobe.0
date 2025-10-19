Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3928311713
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760864394; cv=none; b=PcA/zTZ1kFAy7Ck0RkGWgWsFUM4EYLwWgNG7Nmtnycxq6XZp9xL1W9K1//qIMJX3K1Ca2fP/Gkq2RVjCc0ZxwJDuuXXe7GrIu9kH3pPuOEQEHZzGpZkwfGQ7uWynlvhjvf+NfGmYbcGr7UDWrP6KWDsNUttNB2q+4BBc888OO/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760864394; c=relaxed/simple;
	bh=kLv0SS6DWSTAM4JyYpFVaucvju9ECfm0SOUZCZILb1A=;
	h=To:Subject:From:Message-Id:Date; b=psBekIXgR0ApOrWKHXiFdo1D0DIQOuOU2U8mQU4oFgkfLtL6FXHWgUB9UWi1JcLpzilfsL+ZiM/Xg5kdDaKxQfOBnxnNWKvJ96Id8mRcR5YlMoPUtsvYjc0t3SWIdXAuZLk+Q1dcRKSeWtjWIliV1kLI2RR5IEkgh5FIrjdWalw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmGtMqeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmGtMqeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760864393;
	bh=kLv0SS6DWSTAM4JyYpFVaucvju9ECfm0SOUZCZILb1A=;
	h=To:Subject:From:Date:From;
	b=LmGtMqeu1OKPRa/VmRSSp5logDMNlwLAKNzjNzW3WL5nAo5Hr6LGTz8pIxvWWYTlx
	 TV6FtbnCgHGTpqpnLaX29vWIpc+Y1CNma9AHLiocd1mYMT5fbPIYaIBgdk/rTjl5As
	 RE/z4+he8njZ44MinMa42utNqAdmygWKKxx/fNcSVg4egPDJq2zR+kxkPYxMC6498Z
	 t4SNBwrtfUY6pOhFN29vi04yovAS+a/AkWxeC9SFyTZ7h6TvhCMT4h/cnXkiq9faG4
	 gQ2geIb5xR87svNu5gX0dxySP8VT4V6mV3lMcYWWK4Vsuv0NKrfhtywRVcy8TVc0Sz
	 9YmRefK0SIpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224FCCD1A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086439359.4248.17540341001144964459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49ce7248edd31e9e799b375a655cf63da9da6672ebd3b64f77a8a1d794a72a3
Date: Sun, 19 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760864393
