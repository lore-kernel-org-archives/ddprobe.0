Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133701DA60D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756039794; cv=none; b=mjDV9cYIzcK00gFHpzloineETKtTJIYQ6Y2YGXEKpSKZs8Uv4RufEedb3q6epz1Hk8C7P/HF9VNZyBnd+HTRSz06td2QjljmnniZYSkEHexEX36iBh7dwd8MiFaVQbchBEZOY1izrI0ehT7562uOWzi2exywebROrOU56MAgtfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756039794; c=relaxed/simple;
	bh=vI0n3QP9BcryCQE+lqJBXy1gXq2WkoU9ffWb5ND5QD4=;
	h=To:Subject:From:Message-Id:Date; b=aabIlDXvJPpvbQCNuiqcse9VtItjTRF87Kscfyqtnu7aVDp0IaVmxv1aUY5JiHFbYKOf/oo+Rjfx+8snsIz0zOmEAY8XWA7qeKQj4ZOvb+qGlHwo9aqvoRNT6LyIc8YjCU/RKKUFI0jAMyN/OhUZY7zqJeP6u0ch9BA0+oguxZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d25kC7WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d25kC7WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9DEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756039793;
	bh=vI0n3QP9BcryCQE+lqJBXy1gXq2WkoU9ffWb5ND5QD4=;
	h=To:Subject:From:Date:From;
	b=d25kC7WSBHgK35eJQbZQLHVQ3O3EdrmrWiC/o2+Pz6TR7CGP9jzHSDDZPz3pa5Byk
	 bw1qsmYCAd6pTAgdSO6Pbtvjjk3sOngSObMbiLGXekcgEU0NZWsKrE1eX4BBSJa2kg
	 w1Bfpr1AAGrp8ThB/i0MzTExPHxvVjBDeJyss15/HRWvXKqeOBLz8MUCP/28Lkvrhu
	 eJe7a+4VVWZlZeJBUJHUGfP3OPML8blhawVfZYh6RZNbJ2D2giaZwIoS7Z50ElYzV7
	 hRSizLJaup3OULvt2iwHen0s3GxxCXIGvnu0u8GIrHMPglaR7ujurmfbYJAVnKMdFd
	 K11rngnptuoTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70DCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603979357.13878.16103555800821776348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629499c3e1884fc800e9bb95af12bea27bc1466cff7a988a784f294ad9cf6426
Date: Sun, 24 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756039793
