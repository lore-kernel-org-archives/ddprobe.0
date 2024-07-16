Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49047A5D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721146523; cv=none; b=t8M8VIEfomMAwzWVLghzf54QJEgCzgCdXhT725SKSp31wvRSGfgt0xe1LehiL/CPKaw42f7b4yQWwcEQyjBkVNB6MUkr8rT2jMfg8FOgryA0b/MYm0P6n2qlhMDuM4IyYWAVGaBoRjzGmtpR6cCQu/uAR4HFHnoQpKMREN+QS5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721146523; c=relaxed/simple;
	bh=Vaj5nCOznzwWfdbE8oTTzKY/SQNGunDAYgXD+Z3xdbA=;
	h=To:Subject:From:Message-Id:Date; b=tkwBsA3iLz2I8oU+WxNmQzixZ4IQPSpJDADtObwhVNn3qh49KPhjZEhV4++8cNjqvK0audkXe2Ty53SxE51JZYXXP6R7D4bo6FLYabJEoejsTiV9rjYP5fKLDpcyXOHJeb/yAyzPhCniEgCMGmjXPLpjkjFpqYmCfa3Iv/Eyyx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0XM5cd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0XM5cd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB200C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721146523;
	bh=Vaj5nCOznzwWfdbE8oTTzKY/SQNGunDAYgXD+Z3xdbA=;
	h=To:Subject:From:Date:From;
	b=u0XM5cd+wO5zT55v3d5ZzKk2gk3mGP4rZKe9C+xLPo1GpaAIwCoyGAciU87+mBvCi
	 g3IUvegD4HexBJNB9ZHW3nkcwwVxKiz2uvvThzDTZhDI1ddTqIYsQ3EpQzs98tP+We
	 tL3IzY3qjcHUAqDqwofPjCdEB1JLVNb9Zt+BVqMTWEqYZxJHw4OJrwAKGjNMht2PDW
	 Snduv6OrHThP8DOBuosGoP5drdV5r8o2e5xEARiU5kU9CGIItmisUNMkwkd9SJiHTe
	 QabA6jRqNPjnhMCHQSC+zR6ds8NmsfPcZ/d8RQKIzHvO2crmUT418YEOq34lxJoj2k
	 m0qBOiUKZM/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2431C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114652283.2449.2525187731031276744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506c228cb8a3ce1c46ba58527ff43d829b64ee951553a3d29ba4bb910ca80566
Date: Tue, 16 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721146522
