Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB382F12A1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769369034; cv=none; b=mNb8TYgfY+ou04OsBpwy6BX5Zsy/CGMoB3vdQRZPdbgaVSQL9BLPHaDlXp0AWuS5Wr6GZXnp87os96ZXBK1/1j3Hm0hAjV6GtB608XJ007vAsJdWr36WpiKaUYXWh2FINK218Vr0+fWqtrmERRv4GwXPpnBk9HUylT36L4Mi900=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769369034; c=relaxed/simple;
	bh=b+qXiNk3HloEnxzm8moJUtmz5wgfPX1/Seqa0y6lpxI=;
	h=To:Subject:From:Message-Id:Date; b=ZJUhTGZmGNo1lqzKS392mCFzNyjCq0GwYZxhy3H2EEDYR0SQQm3UAp/FJ4BV8rt7F4zhBJo0+VYCFTcV+L5PRFdzEXNmudb6no8vxnjo+VEl1ufzLhLQWtHLhZtrtcpFkBHNsRmp1wP+wISpAAi1Quwmeodn2sQkZPBO8ibX2vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ziopk6JO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ziopk6JO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769369033;
	bh=b+qXiNk3HloEnxzm8moJUtmz5wgfPX1/Seqa0y6lpxI=;
	h=To:Subject:From:Date:From;
	b=Ziopk6JO7A9l8uE2YLdSKoowQD7cwqzRHt8yEspp9hzTbZq76Fpq5B8oEK0u/jJ2L
	 pwsmtGpxSBqVQomminIf8NFWoLsFhR0v5X+ifBf3NBgp6/wFjrVjuHUdGYn0h6adnU
	 Z/4fZOt/Q+4y7r7dC4Ik1lNU6HZqypgxtiCZJt9FQj5teIyphxRslaAw+WjEChuLUa
	 8VhsihO4oqQPExi/TXivdh6gZu3P1JMlQPbgIyGKmaMTT7XpsH3Pxycc632dA6Pq/0
	 HOXb2Zzr4HoR6bxEEVeHctJlqPpaPd/FvbhEZ9WNI0V/GgwarCEYqi1bwEXcLYp+a0
	 /t2zBKnQUPYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F742E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936903357.32310.8396976092361623902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a000099def5a470345101780802eb7819bbe404bfd483787e7635b8658f2d334
Date: Sun, 25 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769369033
