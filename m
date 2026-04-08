Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DEC187346
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775629534; cv=none; b=naYXd+J8OJ+SdBnkH0W+M4J9bIhh+0TWhXVBrjIISUjse+lWkJqKMmjh5lxD/q3pPNhvH8b6pEApRK79wpy7yJ+wVWkhPSrCCt4fpD9FThiZaVK7H81/8ENPRUXEzhVj3fRV5hgALtV82cDHYCW7LgxlleYZhplN8OQMvNmwAaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775629534; c=relaxed/simple;
	bh=mHxWYsaHEhqR5amTiUOY+RilVXVYW4XcqMnkN4x+G3g=;
	h=To:Subject:From:Message-Id:Date; b=JgakHm8aRQfQt43fUF6J38Qmof/rN+kSQF36S4OFgqvO96tFncsrZtvzGQoiipSMI04vK70/3h+Kgwe17FMYn38efKJIZpQuupgUguDWXztfb0VaVDSWh9Wr/TGOI9aRyDnaIYT9YEiSDLFiylt1+umgLwKxOEL/BuUvcmeA1HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRneXNcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRneXNcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25FABC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775629534;
	bh=mHxWYsaHEhqR5amTiUOY+RilVXVYW4XcqMnkN4x+G3g=;
	h=To:Subject:From:Date:From;
	b=YRneXNclSBVRkIWgRZS85tUrwsn8OdzWzfI4/ra8Iuszw3YVDFTMxtHaDLeqTfxdE
	 Qt/AVJnV61oA2wJaa7NhTZi1uF8Ft1WhzcCAE0R20sKqkcz1iTdy9dklPdYSGcBoov
	 eAScyWtiISXCCb68gtaA9hhT0cNMuXZkeGEjwepwwNJowTTU+Toc56R5ietvNe2hUA
	 qonylcZlbGtD3LnQYt4mi2OXSKbDXJXrgn1fHe97e5DJKk3inGYYxAGkHOJiat3KPx
	 DyG2URt31BO+a1tcFIqvA96dCbNdhzV79CLT3wMchqJBYmTnfDOa5sFUgW93/Q1tGb
	 tLZFIhDECbP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB62FD5F7D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562953388.28142.9414932404989968427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd8cdd9557bc2b458c5c3a0412acb20c2cacc3668a645518e7448c89f29fe2b
Date: Wed, 08 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775629533
