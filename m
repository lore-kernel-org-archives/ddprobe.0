Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368D7386550
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775672134; cv=none; b=IbC/M6FVWYHUw5Ik/hk+W4x9Gp0itTWxhpiVzr3Y1XUgUL/57LXWb+EuuZrDiVw5CvIAqnFCkasnqHi28UzgkmAY4Zh7I7DS/0S1flCbOmo8EON2iwYpAJgj/cz+A8AqDsT6CTGn23dwncHj1sMcwbAmQqfuPd1qXV60s6w6g20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775672134; c=relaxed/simple;
	bh=qqCYl33rHDqqtJBabEdjPsN2WYe63WsQj6w7L7s+r3w=;
	h=To:Subject:From:Message-Id:Date; b=bC/OSFEJtVI1edoION4QLkBo7gsWfJtaes9N0tjPUJs14gRlIurOEqc3qKbz7GbUS/6BgyQmuyopgDBXiE3fbwNFI9xLM05/zefptwLwz9v8ZooxMWml+xHlaZLxoICeJozAZpP8TAKgrlWQ8T6IqVDHAE0GP9PYuXWwgx9OTkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0PrLF62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0PrLF62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CE1C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775672133;
	bh=qqCYl33rHDqqtJBabEdjPsN2WYe63WsQj6w7L7s+r3w=;
	h=To:Subject:From:Date:From;
	b=h0PrLF62hPlSgvFQpPN+xMJgfMIlYC3cBeRAhitnkCN9cUQxTu/T8KJuY3C5TRy+V
	 NQNbSoaSZCNdbKfUIUhUUbbox9vgTt9AserR6l/IcD4mgCMh/uSRkKpcgas2NW/5p6
	 qYKES0dwr/YwetrP/tupF8yXKR0IAyb/uP6e+C1itQnx0e8JxhwnmF00GyKxXqrSgE
	 t+4iVB7JICyjB9xL7INhLA03ROBmWHVCxPtS4Mum6q1Z5G8SAkYdJZYHc0zrLBlUCu
	 nrQs3HyeJlYdWHoTOBo1IggAU1Onomq5B4vx9ZxyElQBkTtsndy554u2BAoP+j4NCu
	 OQmq8MQiVcVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B168210F9964
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567213371.10516.1204703978814366683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35773758c50eca939f6cf30a0abed15104a1486e4364178368ba8cb223f30042
Date: Wed, 08 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775672133
