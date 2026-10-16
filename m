Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BCB3DF007
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792133434; cv=none; b=CmOPaBpgyoyx3liGEmDOx2Al3dFsoQWHmtjAF3r3kLUsuKMF4Tg7B3Y8CCLfsqnwCYLRmWZsl3hqdqoi46wQNCjXkdK/hbDMHyz/OeaQDquoJkA7MzQvVgOtxHEV0TUEDt08Or2t+EL8+oycxVE81HgPHVQc43+G0zFBWPiJfQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792133434; c=relaxed/simple;
	bh=RQ2RPDf0U1rM5Me0XX/UCI10gM+Nr5LqbBR81GZm5yA=;
	h=To:Subject:From:Message-Id:Date; b=UnfR2aZ+9xpEzhz9DMj368VXbIWlt2lEGcnbqsA5OHzYkHIbfUTYsujX0tFNXzWNJaMqjyZZ6X6ByGtJ1cE+9Tp8EXG4fLGGpdD8DD9/E50cDTiOYX3N7fGLEAfaZRcmkyNKg0yy68PGsEYnafYxw7Lf5G/Ub0TlgaVJyvK1mYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adOclgAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adOclgAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6FBC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792133433;
	bh=RQ2RPDf0U1rM5Me0XX/UCI10gM+Nr5LqbBR81GZm5yA=;
	h=To:Subject:From:Date:From;
	b=adOclgALfb4vwRNP5UbirCaQ90/w5jfu9BiS5245j5wDGuOJ82DIjJlolKhZSeDJC
	 XtuHx9BY1kbAyJ3qOZ3DDf2yBYBNWkkVBBgDTRlje01NnGAsx+sI+gJMS1jmWQVWhM
	 SLWqmBRv0r17yfMPTkM+HMEp1cMGYXay0B3hckpdMD7gHGbiGXSTIXjZO/qOxl1VkJ
	 Md9AYEbVpRyrhmA3aKY0bJWKNlGUJNoSDL/quY695EnRBB4G0xpb2Sb6jPsWX/Gtyn
	 7SQj9XNfEmXXf+NmC6K5inHVM2fs8mQ3Cplt99zOOKfpJfNI5NDyoJvD0FRR8ef8fs
	 h8tdIHqz+EUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC05BCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213343369.11216.3821091405667896509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab2f97a45929917abc254cdb34f4a7450c02b823dbeafd666ff4b7444d14e63
Date: Fri, 16 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792133433
