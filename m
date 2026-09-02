Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473AB3290C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788381034; cv=none; b=immrxrgvgiQJye8wvuBfnr9HKhxNshHKA4T45nOR04gxEiGDfZtR4Jc9hh/WGPOUOpZFLhQjJbbAerbD10yHGqiaYUqYRC3kb3G+Sm7c+9v1qqeg0nd9Tq3fQYVG/ql/vCkZieqXOes8Sa90jsQbMY7OrZ4ljp3knl+JKKOqvJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788381034; c=relaxed/simple;
	bh=bIIyM8DqHaNqd8XxqgxNXM3BN/yLWyicZtqgenDuYE0=;
	h=To:Subject:From:Message-Id:Date; b=SqBhJj0wQ0UhbKoV85xX3svsv+48aDv6+mKCZlzrd3j4BUWkIzUEJzu5xtvhYz2sNttT9/3h+BDqtQcolQNMWpR3LTfbo4gfJsYt9OXEdn5Hk7dAHDOx2bmLbmBQtepAcpPJDkEMitfQF5uFarI4e5CLCmGRb7xQ0w+6tlHZB68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9RmSna7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9RmSna7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A40C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788381033;
	bh=bIIyM8DqHaNqd8XxqgxNXM3BN/yLWyicZtqgenDuYE0=;
	h=To:Subject:From:Date:From;
	b=Q9RmSna7Erm6JriTQ5w4DKO2e9sK2RlI1Jedqaaw6gSYYatEF5gFxzU250AFYqDL1
	 g9kojfwLb2yjbousFajdnIbVL0MPytqbIZkhRkoulSu3GZDr/RcC8P1Q4EibGxGir+
	 qqhFn2aA/5zTOGzHM4SvdOIbdz3NVmefhCYHFvxDK/Z4UYD3uLAlUvqSBBoR2xN7Kf
	 pja7zXts0KFMrpmFjjDcBb+P8fkbs2Lj6K+3oVaKpJNWMANH/O/T0NDGXkUhDGDNPd
	 KunPDRWjl+WgzPthuF96RP9m3lIelgjIe66AQRaaXPkvPB2oSXzPTz9BXbv3DKL2oA
	 Iku/62pAwGAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1688C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838103369.23533.11106365252736452485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e109ba5fb218e0e6cd6f63168e15e9632e1eb757e1edcb09b3d2751c43109486
Date: Wed, 02 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788381033
