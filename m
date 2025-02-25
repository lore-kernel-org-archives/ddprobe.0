Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D481261372
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740480535; cv=none; b=I/BXz+K2HcIUR1RroPVIspchwqp7DRT6CbE7dbD3QTPArKtU51AeEZxmAErl3IVu9wdJeODM1cMvAxk30LWvc65JKbIV6GdcOJvcL+yK4b2YKTzwRvcdFF8SbyKGs55c2jCNXdQoYGcHvs3muLrmvkd4MrbYpWjFYHjt0K5QwG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740480535; c=relaxed/simple;
	bh=V27G3Zot2f/S7904T1BlQ7KxkeIZbzD4DUQWiN1itJc=;
	h=To:Subject:From:Message-Id:Date; b=AWPksavHZaTjHj2mYiG0K3ZfQLvqtYfteZZ18VPh5e+M4RWB4m6AqR4UaHKZjcpIvTnYBDzUFdoE4GH2z/pISDcgk7mkg2mMTJKAXTBc6HuB4rsFPFKWNe2bWlZuHaf9FC3qPhfy3Y7Nn2w9xy/X77VAG1/zfbg7MDtRLdFJi5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6yA2ayh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6yA2ayh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C2EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740480533;
	bh=V27G3Zot2f/S7904T1BlQ7KxkeIZbzD4DUQWiN1itJc=;
	h=To:Subject:From:Date:From;
	b=e6yA2ayhmFbmIJg6CwK21BIgpNyi89b9Pi+NRP/f4gARlhSLbQpQaoSr9j5H1mEY8
	 L/dUTsuggI1xwYlrDcia1ftunNnqpZxc6lZwuPBzbNEBVWoelgu2yESJYVnDChXIXd
	 RkGDt54z2hxWhWNmmj1ll7ZrZ8bYAWA1VOM+XW84GbAO5bzce0wgtpo2fvPBETyvGn
	 aXKJvuW6IAVgqYxn3bnIfJoFwyHnjwnAXOk0Hs7kEXGNwUmYVjTaopbzXAelqoC6S2
	 vXJ3V73EKtmeOXlKTgZ8M8wr2eBjRF2IqsWlgLODcrbp4EgGFy9g+JWy7NOhVnH3Zx
	 FOQ7sXE7MZGzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA74C021B6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048053362.18230.17901809166713133567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e701d82b03b7647bfe999acac2ea4bc2107b83f02cbf03a3e4bdb39b245e2d9b
Date: Tue, 25 Feb 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740480533
