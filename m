Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38F25745
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727669154; cv=none; b=BpdEusAktC7U2C6wKEBcG1owHkX+bviCfcbseQfnVcyCDMuNrdeEuoNiBYZFk7LOx6axXarKYs+zMXU5EZ8PBkb+5VXEwjJta+gMLmrCHwtIJuCSxzrRE/JeFosWLZnYXRv/mvj+cS6Bsw75WykbAeM003xD945HVPiPchZ5dTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727669154; c=relaxed/simple;
	bh=OrkGMxPWr5vdAZ7VjUGWs0JpB7EGboNHL60hx+S5JvY=;
	h=To:Subject:From:Message-Id:Date; b=bbM0SVm5cStMnNlBwaEv0DDVkSv9/cn3NX+1RD5biys/PSrWAqu/OeosAoeYe6igFtEA0VU8BETfh8L3xAbqswSzS7lEAoTFvCKgq1IadMA9FK2YiEio0xsxFQSfGkX+vtaOubxJALRjd8pVQgwllwYp/FmXgYbgRbC5nQGrQQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpA8LNzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpA8LNzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEACC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727669153;
	bh=OrkGMxPWr5vdAZ7VjUGWs0JpB7EGboNHL60hx+S5JvY=;
	h=To:Subject:From:Date:From;
	b=BpA8LNzPWpWilcfGYkpv6vIFOhjJCu3SClRim5Cp1DkGcP5IKxb1QViCPn4QF4Lsv
	 r2OhcOhqNWMbbaQR7E4vHFeOViYj8PgncJHirbUQ74h25cgrjyXUqx9W6NhuIStP9/
	 K4F/qA86CfR+oXPgtAk4NcZpfDFLxfiohjaSoT3lMGsiRsASeayOBuUOPQ6koqHG2z
	 sRkxqjZXU8Pu0hVYPoaQYTrxI/CEXIzlPcI5/qLO0BicBPVoJ2E9Ty0T2ZZCssVJrf
	 SJ/ozYavLb1djNx/qPbeFhYQUJdDy/7LwFxEDUfiVLRZQ6/hI9cjJtC9jjMnZ655wY
	 ZeaASZaPdYe3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D653CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766915363.29899.18044624831464580429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290c0329fa929383afd73707978057933199e91165be5d6e7c0fffe22aed66a4
Date: Mon, 30 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727669153
