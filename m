Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287212D0610
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767379434; cv=none; b=rbnnHMtr24UolXVeeVeCABDW52EP2SYVZAVo2rF/qDioGC7aHqNp5EdjBfvThr7EV+KoyIb9OCOVxb7g/f2DbFqy/EHyJKBFigm5XIEIo/GJB1HZqGCg3RQGh4ZFon4Z4+NXNIKKKZ0CnGbPoT1mZ/m31Xrz+hCMbsGROZNj4zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767379434; c=relaxed/simple;
	bh=ELOZn6NfacBkcU7+HieP/laUdA8xckvJ6KV5AabNfeA=;
	h=To:Subject:From:Message-Id:Date; b=Av0iozo8GNqg2siVglCi69hUwtx4JmmOYKZMnUVpo2I8/SpByuU2qSkMbEsZxS8WbYq6RuOA1U3Qt/fliX2RhfMPGDWNoX7O8HHUdQ224FhpCQJLWHKlBlyYl7gfw8VFnRYKmiMmZit839PYzd3nuypMAD0xaLkqwwxHrMPRwMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfbwsDxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfbwsDxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3746C116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767379433;
	bh=ELOZn6NfacBkcU7+HieP/laUdA8xckvJ6KV5AabNfeA=;
	h=To:Subject:From:Date:From;
	b=NfbwsDxmaW5EcJjuITnx8+mKxRZcwD8FH7PpCYSAdvxbAuHP3Z2s0KM8QRIJvwELG
	 uBjsHSqWli0CRe+5ZEb+R79bJQd1FrKpV0g903/lA/KEXn7UHJb2OpQY4SfWSWza0j
	 REB8cHa1XqH1pgDW6tgYYWR8gsecmwFq9H6R2Ej+iHwZfSHVw83NX1y2sF0s7NvPtk
	 DlX/KurKy5jzut2K3IYHpG3fJZvkBQe3+wvwPZYWmwuFHXE3MOBk6F1qfFd8CnYFq3
	 tSR+/quJExYPPiLTp0WqXvyXWUC4Ktpc/bLOgMy9i87yAa+53wYx4retvY/bvLccvf
	 153gIZolp5jtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92152FA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737943357.10252.8254259783152699444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93a159820ba167c27a7e8c4cdc0c55c27327eeb35374a4021313be6f6ee64e3
Date: Fri, 02 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767379433
