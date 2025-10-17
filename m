Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D50B2E0917
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760705394; cv=none; b=bHDcIF/+aFdSrmaq0xcb0k78j65IgfxKE3GDVXScU3VNXdYqOjhFuJtI8w6g1u0hyjKSjorNu0YjLfmlaQ5qHoOjIqscGppNhvvizM8fl2ZHtydIwcsJZMKET5HMap409H1UCZZHJiul6RAxYlnACmLZRG6BSGIa6PKTItIbL8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760705394; c=relaxed/simple;
	bh=HTTjW+tMh1tOucJRDmbCNwDriVbJ4Wyd/F8gSxjaw6Y=;
	h=To:Subject:From:Message-Id:Date; b=hKyaCvpHQPcy1j/JMvBKLGJNF0wrZuKv0mv0RJvqpwI0iPv7TobJtdgcQ2Qpo/jAlkZUwtxij4OVa1F3je708o5ffW4Yisw1wCFYAJzmdXkq5p4+8O78u+deiYRW99B85z+OuQ0b1OO6P0rSxe5BS9ORp4VsvZHc/DGprAWb6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiOOxram; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiOOxram"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF630C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760705393;
	bh=HTTjW+tMh1tOucJRDmbCNwDriVbJ4Wyd/F8gSxjaw6Y=;
	h=To:Subject:From:Date:From;
	b=uiOOxram1nqE+D9vxK1jVewqKbccgz5vSlo9wEGu/jp5lB0M5siZsLgYc9agFiyhV
	 QELKJ9P+AW8npyhDU33+oj2y11W3Ju8/Z2Vpxd7h616gpdww2b6NznfbNbRYfiswbF
	 2FPjS9yv32CYVnrLfMRCsb5l/r3sx75VGzQ2UdvT5Sf1DD29b4ARThyluO5CQFMqOE
	 rgJ6KJN/Vmw3if8w0HlqAN5YshvT3C2nh1dV6XY3YfDpDeBI6qfHT3VDIb/q9y7f/H
	 Y/q57ghJaX994ANzu4/1QUIl4Ei4KYMrxSORe2x8ivPdcjgwC5OixCg2+TNY0FFOzv
	 2soZltvTe225A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F0CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070539361.9846.9056784878785460535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f449e983c751f8a5b74464a0012d987bedca52f3c289bd374b4ff15d0f80d0
Date: Fri, 17 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760705393
