Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554303290AA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775449534; cv=none; b=hjJmZSdoaHugtM97PSOzY2cz+d9A4cn0O+5vf6Xnmwec6Za37R2gvbCYuSSmfD0JLxWm0GhJtanrw8UN9zp7FaspiaAY3deY4oZ+JgCxeAmC/1nu42uMAC/TJT1mJYCbPCTBvsCK82YI2sfsNx74YvHFNUb8xET1qxAaFPmzzM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775449534; c=relaxed/simple;
	bh=+Zw7TGyGObl/X/zyzYi90+wlOUorYRVZqmR1H7X/8bo=;
	h=To:Subject:From:Message-Id:Date; b=NoGDyZj5pNygyCMrNOZyVMqZlMMStwb7DU5CkB6TQnAfrrf4cG5U7WX0ZcK+UiAP8UGguUeQvJAL7k33SXfVzMJ/cieqn63G5DX+VJdFAL1YFIqUNqECdsAQsjO+pd//KQKoBmjfyTDrF8l0jXWKEGExiZ2KzWPLoF6tqTOjRyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxXJ7m4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxXJ7m4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9A4C19421
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775449533;
	bh=+Zw7TGyGObl/X/zyzYi90+wlOUorYRVZqmR1H7X/8bo=;
	h=To:Subject:From:Date:From;
	b=MxXJ7m4Y5Gvk5hMy6pvkL2z+h2PC1lEjtcWCsOpr1qnCtVyAzN3WbIa+QU8RDTrUZ
	 m9dWncxewJuXoGqxYN4eFVV2ZecCH8ujGOw7/G3i1QqjEx5wAA5lO23RXcEIw5KIza
	 5CjVTixsC92tPKjOKvDSxW5g6Tv6irxXgmI4s4RNYTdNzOgKYgCS0DMAuiZH2LGDcK
	 43lnMMPzSdvxtP36q1WzmWLlepgwh0tMf1scakCGMhL/jzkxu2/REp8faGrThxxyCK
	 2gGe3pbWCJM3hfBw3I+XxRJ50kk0XR/0maO6OWNuwzMVupjdjWhAiDMkcOiZa2MRoL
	 5FBfYcaUr0l3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57BAE9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544953379.27343.15605576561963437711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67acbefdc3f79d8e6199616ad618b0b576cad84787b4b8c258359b7345e1c972
Date: Mon, 06 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775449533
