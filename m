Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593023C50A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772322894; cv=none; b=kfiMfVJ094uPEnU32maGrui0iyz1WQv9wPJ6oHvwR2Vb04iJXWBFp3U78bj2f7/Q3FsaXNqEJbGWiceZDAf+wD6KzWcI7pjPAuu4Q9g8XCZOQQHxBOTRJi4rbEFTRGGIvq0g9AF51d0HLZ+hNryTXL5aESMonMrIgZ6E26SeTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772322894; c=relaxed/simple;
	bh=JwQbvcnaW9DTuPyuApW7X46niX+ImThsfy3455tvJmY=;
	h=To:Subject:From:Message-Id:Date; b=E4GDWmJs/LC2vkAMnEDv9r38l2j4ETwY6yhQOrbT4ZUqVyA2/KT5qBzreQ46OMCP0Iu4O/UE0wtEzg+aU1f4yZICeQf83g5/H/yNCv+Ug2qdW+v5X3q6iHBYWmadghVtUzwDfyD2k6ssuRb3Vgkcw7H2csGNzzBbSf9nCCT1bZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIvA1ZLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIvA1ZLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E59C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772322893;
	bh=JwQbvcnaW9DTuPyuApW7X46niX+ImThsfy3455tvJmY=;
	h=To:Subject:From:Date:From;
	b=XIvA1ZLfrrgxhPM7fmOo0336y26lnk/lrqFvKAUcfAVDT3zXPbPUhrta4DHCCRHcX
	 bd72fXwClkvh9FWvH8stD075XdxnW60+yHGKp8LlTINYWG3b+1VXaQDdZkMffCiMSt
	 bABf6e0dBss8NSvoWVo/cc8LUJchTSby8ngiMWJuGNOYD/IQaQIoyDaCvAJyDIoVQz
	 0WC2J+M7I1spFkk4xxz9Yf2gs09qlOiFKzPhrlPpdwJ0jnCjEhW2TMAJqlPPFHH4qz
	 xS7d/cfT9ZazNCQFrBvbWN+MqQP4ikbYluZswEbwkoNFMn6rPr1ELdKDVqOJEUOw9P
	 5422DogyGwXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C989FD0045
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232289360.19724.4248746166381847478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f3a214d925022be5fc3b503180f2e6c2c7f14cb946caf210c0e5109fee7095
Date: Sat, 28 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772322893
