Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D16383
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735691154; cv=none; b=PGEAdkAj2luBLfgciGukV3KVJqykxcYXlp3C1GhJkpkl19D2rnybILBgE7+Mq5TkdAAZPN46OqoZ1uP7FmE7bGft3yHMTHx6Ztxsv3Zc9n1KRFm9FiMh4o60aNQOM3QCcum6WxoJxcMW6yxMYweiZzPEqOYDSY2ynOUKlqHZYJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735691154; c=relaxed/simple;
	bh=Yk7tV776XB4/4ViMVThFNtESgmeY+oKLvGHGcfQAPWk=;
	h=To:Subject:From:Message-Id:Date; b=WDIbGe4EF6gOMgM55L/y4pxlWjtkhQZBsgd9ntF2LBrkThbtIEUDzXqjDEWDUh/8Sdy0pk71JT4fgQHwno9sbHPN//ngN/N6rjevLXt7RoXe6v2+EMt34qOWlK/EgcyV/lld9h66WczpZF4CSAw2ZCjQeNLvK09PFB7Ph4UiprM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv9UvyKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv9UvyKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE2DC4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735691153;
	bh=Yk7tV776XB4/4ViMVThFNtESgmeY+oKLvGHGcfQAPWk=;
	h=To:Subject:From:Date:From;
	b=nv9UvyKhEL5RPOnZCe9mWUlMp5y8aM589D54xEIQX/F0MrKtlkgeYqf+1nL4TfA3y
	 MwtCiWJe5kAJigJ0DWap2gIX0KIDrV9D3v6ZV/4PXiHge6Y66SbIy+axs1/FparF7O
	 RiFVg41AWMQJP0MmjtCWaUeWCFfhtsSoMDrF8od80SW3BtbZc6S2aDnlUWn1ybA1RS
	 wXe//5e4YgJkhHbYMK+McrblZ9isJRZz3WuPI3a6Fs+VADnK+Tvv/wKuHTBdydxeFT
	 Gk/HeLBhwyB4gEgC6goe88wiaMHrk4krnSB0EK6b53u4pLlNfaejfrB79P3QgtYZKz
	 g8gZUvtE1W8ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF5DE77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569115360.22798.14074470467091250078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7184741c901aa37d7b8067e1c7f3d471bc76d067a0478639b15797c09b725f4
Date: Wed, 01 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735691153
