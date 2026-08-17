Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B24543BDA7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786987234; cv=none; b=L2HmTL2Bnr4jkH6kRtiU3Z2PxQySHKJvT4pMsTnAm7fx1LfjW8OCQHHBH4OoRM6LBZKQt18fGFf9LUxkRC/TQ5YkLcr5PFlVqsX8fKb+i9au5jrmsKjZUv5vQgMzDyvdlxQGPXknysxOPt2zRIN0+Gzdozsj3VeBF8FfMqAH3VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786987234; c=relaxed/simple;
	bh=Lnl3natazBulbkiM8p5p7pjad/Ba1P9hLcTbYRB+Ozs=;
	h=To:Subject:From:Message-Id:Date; b=LHSm5AE+uub7JgaNKdFS2dovkqRhAHSCnwB3U8U8r0mptshRzykIYItPFWaMsXOf9LJOYQgsg5FqMyCz22P3OTgjhlU9N67NZr2apSesS/81PAR7siy7SFiaingOvQx3CaNmK67j0phUdP7825OBLPGQzkKKmt4D7d6/Yzt4jHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8h3eJBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8h3eJBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D875CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786987233;
	bh=Lnl3natazBulbkiM8p5p7pjad/Ba1P9hLcTbYRB+Ozs=;
	h=To:Subject:From:Date:From;
	b=O8h3eJBPXmof1mR2KKJ2r6NjykHo+KGCdJi77ZM/fIQUWiq+YN7nAEq8TQOM/garN
	 rwxakz+sM1MbcDN7DLYVlqD2roCGrSv9ntiKwN5nmuQcu2LpBfDmsPg1P9IeH6r8yI
	 8Zz+A/Ub7bDXYbG2+VfPMrcZsWQozpGiY7r4nzBQ0T224nwMiKON2acV5Fj0fNQh7E
	 /BUcXHoznoNx6/LoslVr5ZesF+szkl5PGKmzJ8Y3euV7a5cxfUyFx178ch77AWWXYW
	 yiVxbRe0gfwJFBO6mUi6M/8TUE9GNI9fpmGsiktU/i5qS3TFu3UTIeaux5DLYX23fF
	 Qi7G7+9Ar5g1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AFEC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698723368.18298.16943228100247166175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362586b6a1098daa6125cdbd11888d8c08ab110971022531efec395945b79b62
Date: Mon, 17 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786987233
