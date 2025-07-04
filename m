Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DE8134A8
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751666994; cv=none; b=HeSq2RjyZIPu2XvuINNE+ze/DIacYP8XFry1TfNq5XaVCvgFoaAgN8mk8+NCIPkvpmbc7o2glFlnTqmzjSyZvWkrzCk6y1UN0Au2NZQGQoy8DFtErPUCZUrqiSSek85SumktAyjKbZlsOSHHzT0zQhl8es/Fp5PqHdMp21j5ECc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751666994; c=relaxed/simple;
	bh=c4niLZpUeWx38zICp6p/ED/tW5JYriTnz9FM8IHLWVE=;
	h=To:Subject:From:Message-Id:Date; b=ofE4Z4ubxP8sGs/wNHRqx26W8zpyT4Uq6JFFS5Jo+Zi7+42mToEqfchx7SWwoEFCe+9iZ7mWmykZSBDraboxfOZ47CC/nMw+gC0OACyTat/fX2WzJ4JHhz8JwMe1QIpayb9psWHhxRXQ/xOQAK5ddYclCU1yGh4gXL3n+55sEhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPTf5Xdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPTf5Xdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751666993;
	bh=c4niLZpUeWx38zICp6p/ED/tW5JYriTnz9FM8IHLWVE=;
	h=To:Subject:From:Date:From;
	b=oPTf5Xdxmbqiw2I00YpWqvaUcwiCMlag5K/dGvZbmvJrcqzJweFf/hS5uXkzYgRyI
	 wY7h1Le1XxU2+Pk1KusG7ag75N8+GSaEU9pv7TzFGRklmCttQyWMOKg15eZS0SGwZS
	 QXROdyw7yNcpPUKRgodalkpJ6wchDy85ec4QsTUAkhjLnv8dKTp1KFM3YJv0aTz9Kv
	 Fzh1xTwTAJ8zup20iq9rmsq76tQwXJNHKpWLBRudqAm9O5Ohj1ucR3JA/K4zXQBXva
	 cHSktJq47DA4NSJTq/q9gqSRRUjpyJgIJdaS7SIcrxW9h/j2s8S6or5B2i53Qf6tQ5
	 EJqVUNsf/3L3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B41C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166699357.23755.8147217306619725966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61015e2be36e74ecc7029a6beee7692692ba5e54e1dc268b5a9c037d6b89df5
Date: Fri, 04 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751666993
