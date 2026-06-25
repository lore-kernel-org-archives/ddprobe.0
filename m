Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAE639A81E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385054; cv=none; b=CX46UMt6CJnfxg19vre33uu/ZATTQGrk/JL9ISCOYpdLPackP8s4G9/KuYzUR3Jbz44vmxMDTZRUdN6DZ08pNvn70/gUgBpamhclCjTmFGe83iV5uj0UY1oAaHVApQbyHJpBlUuo3NEFMZHqPJG2XYSZB8CU2zWW0/YccV/Rlvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385054; c=relaxed/simple;
	bh=kntwf98lgDYUy6YyoBjq36xpHhhDWhuWR8w2tyquoE0=;
	h=To:Subject:From:Message-Id:Date; b=h8MkxNNyotuTnevExxvi9hFru0U++XeFoQviyFgUUttwefeo3EPMdUamI/F/8RUTAE+Bo6DdUYQ/exCTvHuwSRRnxgP7ZM/+AVEotI6S6ZANZWPBbaBp1RHZAJMBDyqQSxIfI5MHeN277DEQeoSaUqRk3PwTsgSr6N2GN+Q7CRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJC2cJIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJC2cJIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 251CFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782385054;
	bh=kntwf98lgDYUy6YyoBjq36xpHhhDWhuWR8w2tyquoE0=;
	h=To:Subject:From:Date:From;
	b=vJC2cJIz+STx/N4J5JUfALbYFmIkVwaKLGvKIiwZvw+XpTDf1fHvR/8E6O4A2yVvG
	 OQg1LUI0hw5cueWpkFuZcTKdhb5pJTeYskoLeymLgsjRgfVmmj0VpfIShN3LlNig9V
	 1B5p2jhqFto5chbmPMZBGWaS0Tn0YFi78zg907h/dEt348MSvsYFXG28mZzNUJN5Ba
	 D3xTpsrH8QTSqxAB4yA2Pw7gPN+gjpmcnjaZttg0ejH6OoYyVqvxO56gDRExEZlwoK
	 Q+xFYjoZa1do2KOYR4qPkNArxPA0Aie1d+P+exRFX5QKdk3V3QzpIrYNss/cQo28Rd
	 CyFmiRU5+6zcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E148CCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238505387.24064.13867329442887215522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18b42aa255ca015ad1ee5da29a91d83e7e48a11fa24516e28d97a79c64b2a53
Date: Thu, 25 Jun 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782385053
