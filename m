Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41F6324B09
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383233; cv=none; b=IfXVIzNG/PnSGmHM+d5TqEsoXnj6ddGt/BSOpg9P1KHw+y1Nppr5M/krDqWFcOWb98/q5FckvLbDTfEKV19z42SPsNsDBJdp8i+8oZQXeldDdmiuD9Xh6k8BtBSY6i0abhFbLrQc1UzRYo3kaWVPgBOyeIi1krLXxa8xkUItTLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383233; c=relaxed/simple;
	bh=Yx7+95fLDqQzFM9ZjzDXLBsaOUAY7yu7ysxsM5wPN70=;
	h=To:Subject:From:Message-Id:Date; b=ieemKAoIwlzfGQuGmWWIosBF9ZBeo4etY7mqMokKkhlcxghia9vCiGIS9UDPr8ETvv7sqeEVCuAabDJSSckffK09G5XiUZBPFLNOz4G9kbYA7RuubskG/t7hlC/J6hhFRrEhXncbsymyPGr7sOK9OUsgcotMthOcfYQvPQ34dIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEoDjfeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEoDjfeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C31C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768383233;
	bh=Yx7+95fLDqQzFM9ZjzDXLBsaOUAY7yu7ysxsM5wPN70=;
	h=To:Subject:From:Date:From;
	b=lEoDjfeZ0wc/quYkjIqy8zvp+cSfDkfcyEDXMiMptRCzFd/i79nHxsbBqjGIsqshs
	 0ENwhtq/kjNm9jCN36rWHoLimR1fwGxcfZkLhcElhkiwW8Rcl8cKR4LslJJxywhLxx
	 toBf1doh6MeJCcbQR6kYVm3OIk0uu0IlSKeBddM9FK7VMFhs2kfxlh2YDxRUtCQReF
	 0P51x8SdPFdSWFwKzngonwuyQjZf3ZRAjZHHvjo8IcnZwEuJO0ciL4taKu/DSZac2Y
	 i6ZjLKEaUZIG6rfhl9v3oMxIlYecMgzKVzp4CfEObT9CNGmnrDo/VJKNr31fCm9ypk
	 +t0LdttMShzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84CD31A3A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838323357.31418.104845435007022808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d067def45757e2eb38524765e478184b52993625595d63b390b498df314f810
Date: Wed, 14 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768383233
