Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D7B4E1BD
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708818497; cv=none; b=c4HAS8p8lHkCdqwJKKFyql3y556UOVig5L592w1MNKPqkydgtlfpGc5/7m6/pj24dvHfSHYYcmuWgr9pxsLc4LgO7lJERLG4dtY3iiCVnGMzD+j9qZRXhrTeXnHCqQdzHOKt95wcYtzbwNiBSLVF9Sx06+OWkCB2siiPq36uH8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708818497; c=relaxed/simple;
	bh=jkb+YipzqNcjEzfPI6cIZtrwBtsXyox9aQwmqFE81Pc=;
	h=To:Subject:From:Message-Id:Date; b=WrXimJEziHB9W8xaHTRc4xhoPJXT8YhkbZUGGv99k7JauGmer/TbwHEm50RTRufrO1WoO+cdKc1pwaIZuKg9cdLaj2my/xABLbNckAGhyd5CFUtKcPGc6OFCTnhCsIBos0KPSu1mAoIc4Yx0cUJjFiVvaix1qKm9gsTx4Sm47MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpHYh9Nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpHYh9Nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 899CBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708818496;
	bh=jkb+YipzqNcjEzfPI6cIZtrwBtsXyox9aQwmqFE81Pc=;
	h=To:Subject:From:Date:From;
	b=XpHYh9NjQwMIjKGlymXaBN+0SihlEZFxrWAq9QXPN4M8vTNcSplScUeDX0TwTV6AG
	 vO1/CBVdgv69X7EookkSAWXe9PebshKcE/G6zu9n/fIoGsMigGwNFbPF4hizatmQti
	 bdO/krxY7j3pX4cCG1tbPWA8A6Zzxj/BVtIVBVbriuXT2Ux2mefWMS8AXQGYnMM0Ta
	 29ArxRvCaMQAEHwEX51Bqkmg8Sjqo++vd7ByjOC0v5dbsXYU/xWyf9dQTI5EF1LaBs
	 Hvd5qkccy+ZpYlITml7M3N8dvOeGTlIxP9N2Xy6rXQZ7/DfUmQMhwKNKtWRdYJ5mZ4
	 bXU6psRSwbm6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4F1C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170881849641.11185.8744152465801104515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09b856e535795780fd1f7f7afed0b268572c86a1ef9911204efc1a69f228f5f
Date: Sat, 24 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708818496
