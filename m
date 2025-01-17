Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C620B20
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737123954; cv=none; b=UOkgUrTT7mzrwkc+9L7lGDp2WZOufQLJYoxvzGHyd2yuK+GGdP5onaamM+uLBzHfwIoXo7G4YuIIcimXooDfKgLxNpll4t64RbVFFvtOJz8WR5zCKCFput1JTgojndRHPvj7W/3ACQw593qJE4WN4TDiIjPEkz6AMPpIFNH7RUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737123954; c=relaxed/simple;
	bh=fELlvpWqG12CAg1TBXJDTmnZwMRsO9HaWnyUxXDZqts=;
	h=To:Subject:From:Message-Id:Date; b=PerucUVqh/R0KFayxnqUc+Pau63Ez+26nLBDl0CJ1DnsQ69PDhoDdwcrN0y6ETAj715mCDw4qzXesfUeH8i5CkifoojOl8z3XfkMI+PO8VsYO6WmYQJlK1Gac23WSZkwrdwGMJgQ7Yi34mTar88J882var7EsvqxY9Pe5o7faTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od2NQJnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od2NQJnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BF8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737123953;
	bh=fELlvpWqG12CAg1TBXJDTmnZwMRsO9HaWnyUxXDZqts=;
	h=To:Subject:From:Date:From;
	b=od2NQJnSGDmtQEXS5hRjsGRuI79eUzqM2Sd6ugwtuf7iUIXo8NzI0ZlT4C+888d7c
	 R04KV90+vEgViL99Au4He2iCuv5xRnMhxNNB0BmZVvuUizVzv6eytNH5sN/00GhqE/
	 kmg11jKLJ9c/TKQGPIf6I2fo3jdHZERykxIkYgBqhvDztlI8SRysNcZTPv+yCtBMIR
	 XEOyu3+WRnhTg99LptaWDXnvxXU9AmNA4YIWOD7kW9k8mI+R60I2e7R554nYmyo0jo
	 1iPTeL8GnMOXsj9P9v8qVOg1BepFIP8rlyaSdAiFBk1+5Zh8vpmKMXBXfa0irljJhY
	 IKeNPDN8lKq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4D5C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712395362.31686.13523225792739222052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac441e892877fc21bbef815a1d689f6049d696b6f3a9a66d5a17b2f7aca8efa
Date: Fri, 17 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737123953
