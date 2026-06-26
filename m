Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A88B39A063
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782489514; cv=none; b=oJwNRcF7glm9yllCi4MgOVoS3AbfbVdh6bCLrN2A16JC6WTnKpIojcKIo7BZstRPS8uM/JyUdtRY+OSNRPUrq1P70MYpdI+d0EsPj2ssApgu8C5Gi9xa+VOPyliDY/CxBWaffv9v3em/3B/iQdfVpodXbFAROCRzEadhqY4cdhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782489514; c=relaxed/simple;
	bh=HAPbOeGGrx5jiKzFBuZaZUH0vEwvlwQJZ7+P/Krk1hg=;
	h=To:Subject:From:Message-Id:Date; b=g/Kz5DqW5sZhbw6o5Kr1w6DxPZiHuIinJNEB6zoKaoBnr0hnfEN63tw4MOyEiKoWg/YdRd1XWiNJDxR+JBWumtZlLmWtrrASibu80ABIEayma+BLoveQJPtup5WSXYdREpSBzsLJqklitKvNmcMgJW93VKBZFWBwjqUEluvHuHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti6Qa3I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti6Qa3I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71C7C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782489513;
	bh=HAPbOeGGrx5jiKzFBuZaZUH0vEwvlwQJZ7+P/Krk1hg=;
	h=To:Subject:From:Date:From;
	b=ti6Qa3I+HON0emQ491eX6CaxTQojE07TXMObEGzWgni/hzkDFqlbgdEcjM4A/2PFo
	 X4CInKiQNA0q0YP6Jl+Gq/eJz5llLXggZYeNvIHQXHQMkxIZkVJJs+3fxW3ueutWaQ
	 a1S397vqwqqWdGzV4nrBmiU3BFsAT96teZgDs/n3273QlHvl2aOubR6ebE+Yztm71s
	 g9LA7FWBQ+bQXYulwhAAlJChMRpBsIKNj9K4/s6PfoZxlMQSa86mZUUoGHEIwvJ+Xm
	 N6/bWrjipHITidTwYxoIL6TQbPhnFyvoYQa2tvxbYWPpLlUZkWpv3GgIezqf8edLGn
	 qJoB/29LVvt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B98C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248951371.32711.1677842029985492052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a65254c28f2c61895288d7d0406b2252e7f66c13c8f7144178e645c846977f
Date: Fri, 26 Jun 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782489513
