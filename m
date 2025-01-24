Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6098E1D6DA8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737740154; cv=none; b=iJKz1+y2tDZCedqZaItSf+89W8IbTwFwFlUDXyU6JL/RrznAlAy5aI0EhULSTf0FPE6JVtLV7eAv+/mKqyntmK2zoIF/q6Uxk4ZiXPgi+BbG9pXyC3HW4kxKnInf2K0HjCpM3drUJR/5j36sP6cR3wVgzJ1TlQgXYKX+qbH1GpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737740154; c=relaxed/simple;
	bh=X64Rma3WbXhkzN2Yn0Ew9BuKc2kTcPsEkYFk9EeXkPc=;
	h=To:Subject:From:Message-Id:Date; b=gnXJrrGJEWfVfcjs9G4brSoUyWNqgqJwXz1L2bmntlEH4Hm6HmyeLgYYSlY21esVn/0crARKNt8FfopohgtwwLlVMociU7aVeUtFj6OzFaJsmkarDp/8B/1beB/lZvpIn5/r1/V0QFMmfrqXztWxljg/grKx893FGprndAnczng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP3N07BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP3N07BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C7AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737740153;
	bh=X64Rma3WbXhkzN2Yn0Ew9BuKc2kTcPsEkYFk9EeXkPc=;
	h=To:Subject:From:Date:From;
	b=oP3N07BIc2s+5grZK84iMKNC4ViRZRcSYAzJ5kHiCfIKkotYuycvqtKNZyS0ha3YV
	 KJPzf17Ba63a1Ub27G/vg2sfOQvbGFWk2iQNdIAxqWgMh1qiIKJguR6UOq97VpGFcl
	 /OIhvtDjdX5dfP3CcAUop6RIZmYS9wjozp9veuVWEKHtLv+IsG7zy65d9P9dhC1qRk
	 4Qh53VfMcqjCjZeHBX8+Ky40VgGUeFGcz8klw60gc1XqECJfKHDZEcKKlVsCZXoUEo
	 ECYE+OdZIUaMqu5MIKP1R6yrrRFDwqsvNyuUYp7rUJA4cFCZp+wEkVSxTk3Y9ONvXs
	 bktxQAF/2C6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE08C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774015363.17817.1337810327686927306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fef20e1a03e76f3e2d2e25d8b2c8bb421058f1ed2a7025df01cc76d955f0c5
Date: Fri, 24 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737740153
