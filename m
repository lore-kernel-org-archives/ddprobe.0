Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6193E352005
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792211434; cv=none; b=mn1LNNVztmDEXbPi08jnGn/1qT1Av8zPm4jsQM1q3SgiaaREsD0rpjy3UuE/1z6y8wRMEZccaVmauxcLS/TjtdQWN2W3Jn7cZIxYnTy65pqC887ltV4FmJbT2UfWWX2WE67PwhDc0TXYRgqwGUOOb3BIdncLdmZQ0Xsq7sFTwHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792211434; c=relaxed/simple;
	bh=4T+Vex8FB8bCKoIpRoXYvY36TnHu0ZGNP3FZMBWjqmo=;
	h=To:Subject:From:Message-Id:Date; b=B2mb4P1oHYRwvZVy2pUrt7PyTwwExJeFOfkkV4BYZ95T9wQILWvD/3P6I0pOsKVYa2b9Npvs0N3uYAIEkB9V0GeoYFvJkY6Thq6YXpbfdK6eOpTqxIwqjZ2SHevB/0wqH3wdrYezs0IjZY+NiWyjRClWbFoODkxQogHK4Cdz7FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alE3/eR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alE3/eR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5EDC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792211433;
	bh=4T+Vex8FB8bCKoIpRoXYvY36TnHu0ZGNP3FZMBWjqmo=;
	h=To:Subject:From:Date:From;
	b=alE3/eR0re6ZfO37pTx711DQTSA6Zf1VKzaiOk9aBKB0YoLhNsWZVDX92TpC3VXe2
	 SVCiyidGoDNhb9cPFwj91pIo5vovH2xxRBr/f59iykTW4un5Pg5A9cZc9uVKwF2cfm
	 TlnHBjVYZSKxhGDIOoMoWPl+aQH5H+BzfVnA61Lef8SZ2JpTQZt3eWqlnhLMQoVn9x
	 5fe1qmz20s8ASDTT1Dn8tjumiKP00/Kg1FKCDk5tnZ1LAEa5FZM7JZO6kR7/cIU+Om
	 GQU+DDTnpT77QtBkK8G5bMGirJVPXDdKAVkEYuewkBk0B/xWtClUoYan0YzMN8oiQl
	 7VPFMS5A6i+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A61CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221143370.13426.7694372638266064961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2a1dbeb2f69b0ecf7e0b3635d9c3af34e6e1fce9122170662f7b680c8e12ab
Date: Sat, 17 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792211433
