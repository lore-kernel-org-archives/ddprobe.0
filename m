Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F0345CB2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761062394; cv=none; b=I5saQtrVrwcxTEuUgrPEY5Dx4yd66oAKvG2GfXZfZqTh/P73BqmZSGOmHYTVJdCD32HKBe6mbrkO5Fm/DOV7autgAm106Je4THz4hiX1j5Fcr9evkHDZZKjeWr3QYRMeoC5Ifugp5tTbihOQePvkh24Yuhdaz+lOGDZT9+gqjQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761062394; c=relaxed/simple;
	bh=z4BJVDyu4bBbJtzy3yeOzudCSeerds29/GwBnzTJA3U=;
	h=To:Subject:From:Message-Id:Date; b=BQHWHDnK+ISJBlVDjL1USh+V4dHpMOUk/YijJUOMxVk7cNb65g9kUupsO24UFaVDTfu1pw88cDHI9jqmclGKuWeZLAFFyUpqzXB0vFexu8MSHEgFN8xinCtyej9D4idLtZKK9XBn4EWoDrXdyj/+Mjr3I92x29jXJ11vJz4nNYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltR/QGdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltR/QGdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761062393;
	bh=z4BJVDyu4bBbJtzy3yeOzudCSeerds29/GwBnzTJA3U=;
	h=To:Subject:From:Date:From;
	b=ltR/QGdgv7/9aNy3Pe+Ikvm7Qydl77MxlFZA79mObwBAuULLv9vbObEtTEtbUY/C9
	 QP761o58H5ExXJuqrgTiOApNaDB6KfVvSJ0JI/vXJu8VLi5I9wkXuSW08d/DQKWJP9
	 uJKdkt3zg85jiv99dqQfixrYr/Vnsp12lJoml8ubsKGUBocWD5J3fSXtWLWdsmMJ90
	 5apPPKGMqi0xXQCGZ1tRV6wojQybvIIifwKOZv6oWFQ2XgQyl/nqIewZgUkwN6X93N
	 gBhqZd0vuYEobLmGpQ2EoAdxeW3hlJlxxovJXvyP9MAvv/tThWYmLjtHvLqpG7WnmJ
	 TuamDGNyvKf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E03CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106239359.1607.12361139507769537151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80003f036ebe8aaa3e8488182968c0eed364773873a0b434367a2487b4bd6791
Date: Tue, 21 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761062393
