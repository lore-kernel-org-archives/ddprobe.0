Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690FA29D0E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747015794; cv=none; b=A+wTlbLUK7fw20TiJXK/prNeyYJjT1UJjEhwr91eTdByVn700JSF39C4uqycvLKvfHVK89YK+c8R29OajMWUoKL8U0mrfivZrY6kZ0Rlhev2VN22qKp6s5ccn8zVaR4WT/5tSkI1gJrb7pNP86iCzY9HzqBO5h82O9M78umYRWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747015794; c=relaxed/simple;
	bh=4gCyERiyNKL9mr3PPguJ723EQZ9TbAuylVibQE//a0Q=;
	h=To:Subject:From:Message-Id:Date; b=Haiwx5wFJOISSP36wAU8Y9v3UgdJiFhgLRD8cd4+M1xWRP9ivDZwRgro+WGoyOOXQQrypTpbdK6oodEaBFthUzBPhI8wn1Es904s4Lh68LNsh3WeK552AjlYloa1qatoWHIYJpQoEtK10QeGMXYcqYsxdgl3YBIfD1VKLSLhFcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnaR9LR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnaR9LR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E20C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747015793;
	bh=4gCyERiyNKL9mr3PPguJ723EQZ9TbAuylVibQE//a0Q=;
	h=To:Subject:From:Date:From;
	b=tnaR9LR5NEkhU9fCX0rjpegl/vtW5100u6ZkojhC1gacUq4TNjjL/8avdDpRUd8x1
	 /PdlSvehgqMNatxgHya62xAVmX6fSu6kHb/wIfWk9X38gBxVhJLIiS6+3PbUYJkPi1
	 HASUdl1ncgMhgdAzkFLEwg72mqhKZ35m8/iTiVEpAo8+pWPFf9AISLDjAqNWru0olM
	 WyQossC32irL7betj0vvALNtL0F53S6Qonud8FNy3Ql23OrgwAc+8QH2gNcill7gTC
	 UcKflyyy0lJKRj3LHhfuJnBfhq6D0kbBS51156Bkdlkx4pt6tQdUvQhsaOGj1wIryT
	 JSvALb/mC2bkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E01DC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701579363.12494.7118968126912738454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81bb555acf9c58af1caf0f448c848ec45a175a28034bbffc1347aa197f60e2f
Date: Mon, 12 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747015793
