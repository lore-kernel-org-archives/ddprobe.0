Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ACB2DC348
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762159794; cv=none; b=f6l+X4O7L+xQ+NFNOMtzbDF+dRX9ZMWLYDnwD82BfyRylnFVGizLWwXb79R4r14e6l2gzbeLtCorPGXC8oTV2IgsGtMbtv7MQ6JYu85371S0zIDx0yFkZOz7/G0Cf4aBlW1jtyMDaOJBA6VEZGsQ1z4GzCJaUZPgfk3tAmwM8Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762159794; c=relaxed/simple;
	bh=d+osaOk/sBTF19WrbIaii7jhaFkB7LN9s/4BIRA9nvE=;
	h=To:Subject:From:Message-Id:Date; b=AF60LS6xl3zXZxtCdyNfTNeq0uXWfWIbuieD4ysL/7VHTU/PHQIH/t5LR/Hy732DgZeXP1dj+6H9AyA08ayYFIqkdKv1BogDV0pxssqEmBJ+QZM77MDKptis0Rl5fj5dTPWoW+KxppUtcNfjaCrv1b9q0hSjNC35yBLjEwFkltQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKUeJOLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKUeJOLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD266C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762159793;
	bh=d+osaOk/sBTF19WrbIaii7jhaFkB7LN9s/4BIRA9nvE=;
	h=To:Subject:From:Date:From;
	b=EKUeJOLQK0XRNqK9nAdSr7mgTWKR9MrqLyYEXacsvn0Z6Ae5hyuJ4ojr6uA6ohhUv
	 11glvxNAlKFVOwDFAfhafT2nsIStO7KE5klKgU+r2vQOJtGo385oaquhCXPDv7JIkj
	 T13IREA1Ra/Rlxdlb4AMLAaH7rOpaFlFhM73oOw5kIgwyzG0WI7fZqC4xhowGABJnY
	 V0sL0Oo37YFNJPZaJfa6pbuunq5hjfoKf3vX6Fl97kKd23I9ASr3ILxiUa+r2Qjs4k
	 l0PnPw81mxU1ZeU4FuqWoLTU4r8q6qFlEd0HtYxqCesgbd3EqlMF2weUYM4+9Urvc4
	 Sz80zufUheQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC2CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215979359.29169.10942174060546757787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abca616905b8ddd6338b60f42d4f5273f401056e0bccbb59b122cbc02fc99ee2
Date: Mon, 03 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762159793
