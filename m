Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD00436353
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784566114; cv=none; b=N8TbBCDkAxnch0xaWXMSsOsF6KLHnxtDKaWx5sej5U+cpExr1cxcOcMegEKUrtK5WQFncCkvc1TYvjaF6WbKN2cUx/zR17o7k4j2U0jCGS6mVEvnvwgvykxxGABl+WHVlROYjU319rtNcVeFMvNC0umjtAU+7fTj5OS8/qblfr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784566114; c=relaxed/simple;
	bh=LIiRPkROMopn7J5buxTaMlGsCf4047Zcm2LryN0aviY=;
	h=To:Subject:From:Message-Id:Date; b=efC2GsCEcxa/ODNbr0i8ZjYWRMtPRrbwrZx7igoHiiFesNnH4XKWn2t37uvjJbkl8lCwMwv4MaQqCzA8LEz/TnYGnVUOLUtTVhu3RBbx/xkt4XIPJOPtdfJFGGlDwpmhIny5eA43zLO3DeYK2TWZwJzD8UtOdcRHxmcIY0yBkRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJuoMHe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJuoMHe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC2CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784566113;
	bh=LIiRPkROMopn7J5buxTaMlGsCf4047Zcm2LryN0aviY=;
	h=To:Subject:From:Date:From;
	b=SJuoMHe9FND58YuV23npmdoKCdMh4a4iP+q252PemqOLJMhBMy+tjEZIb+7qjCs6U
	 EByPZkBnce9B3ieira7/rIhMAvzrCvGSswedzUng7I/QXsHi8wBMBvH5ZopVCffJl9
	 n7BFkMPOCWq8eWdzmjlZnW5RADiAO8xETL2zNBZmG3kj5Y2C8pk6gDCGU4uVouNdn2
	 rkQBd27otrXecK6bKhkJ2tT4JvIjwuc/vkUf/jcoA/nELAz0zmG4LYnuRVMWlbahlM
	 2Jy3DMyYep1TbB2nytzI+S3btrALUgiacOJXC9Cx1uqFZT1do78P7QHZ6dTh12UFH8
	 4WuNNkwrOGuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BDBC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456611374.16612.18442077962764940703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa61e9efe36ad32cfd691e2a629b6c4174992bc15efdfb25dd1911ce32f3da2
Date: Mon, 20 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784566113
