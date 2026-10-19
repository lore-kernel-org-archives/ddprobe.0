Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837174D7D3B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792406434; cv=none; b=ndtQwwrDuMDeV6BsSoo9AlE3Yh4GIUVt/VknJ5j5BFih56JM+HKrh/Rfythdg8ZSFrUXfsDm7zRv45FhHv3lCWocnT6crN62aKJxovgafaT5xm2O/yGOHEdeIT3ts8IKh6PJh6dSgOoPcjEf9Fib0RuuT2LLfopUdYkNceGQYqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792406434; c=relaxed/simple;
	bh=rURpGoBwoWK9Zmu4BypASd5M/4svkzr5s6pqvKZgrUU=;
	h=To:Subject:From:Message-Id:Date; b=T5qW5MR9oYMyUpM0ZOB4o0CnYOZvs8PP/shNoYfxh3aI4WB3EtxNftecP83abuQkpcPsa/Qut5PaukKHGLM//YW20GYglokeRhyfPd5ZOoURpCi751PQ5gP0kwhWK8ZaQ/h77cn4J45Q77ADyQEr3G81LcvN18GjUOnQ7W+K8S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvsGZ1F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvsGZ1F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00DBC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792406433;
	bh=rURpGoBwoWK9Zmu4BypASd5M/4svkzr5s6pqvKZgrUU=;
	h=To:Subject:From:Date:From;
	b=QvsGZ1F8EVnIjMW+/UY059bAyQj9VrbYEVuYDkJykqvKEDebLX4OhNAnw9qcPcSlD
	 Fv2nNT0b5UZjpcwiwztobklItyIlxlA3BA668UBv0pkb4ck5ryzc6kmG6qU/qDW8A5
	 dFoD0V5ftPuQU2n+2hp1uXFtKuSjwPafDmDE8OD/6rHn/qgVwvqPASqoM2CRd7wne+
	 R4uGe7k/oQNv9RWxkkaCyUrmJJZBBuOrfYduUeQ0+utz/uum3M2dbjo0zGueknL47i
	 bPjqaa+36jd9Gj9QMRI06rS47h9zhHy1TFJxDEDl51RC45lMqBSdi75LRLKlrC1YlU
	 0BqNwr42TpABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89D6CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240643374.10575.5209013029930424053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d853323348b1cf685483c6cb863f56a8f22de99e6a9a56820db644a766f80e1a
Date: Mon, 19 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792406433
