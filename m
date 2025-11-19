Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9232E6B7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541715; cv=none; b=Bh/RWJIh3dEdIpJS00teHIwQlA9aSctt2SR1SlFvNhFn4Du4KxOrzkyNUjs/BJ0VYvXd0seBOgC6wO3hiDCOAJQZMpJOEDzrLJdy/yWaTsXnm5NglvaRqhVnly7YcE+kp1ltTLIKEl8FCqM83D5oOERfqweRFlHfiirNjSJIAzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541715; c=relaxed/simple;
	bh=NfTIQu3k7ZBp1FUcX20FoOh4z+C7a80+c9PXOGCV4iU=;
	h=To:Subject:From:Message-Id:Date; b=UAJZv6e1j8ckalcieaJmRiusVWwD7f83G/O6L/icfDBtoXJ1WCTmdPJRNikkns3FPinoowsKE1bsekapEAj+eL2SnpSTbvi3Fp6mg6IxlXGQ75u+vo5PTBeAAyjtfVyutBk3xtzvs+N7CImc+VNapGmjpQ4tITKG7gDRYknMOpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Scl2I5r6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Scl2I5r6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 467A8C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763541714;
	bh=NfTIQu3k7ZBp1FUcX20FoOh4z+C7a80+c9PXOGCV4iU=;
	h=To:Subject:From:Date:From;
	b=Scl2I5r6AkL20EWJcmDY63S7AiwSfnwfGVJwz50F8CLK+mHhmd5IR2nnt+Vlnl970
	 kIzVlxO3Uk9Jwy3wG6IypDGOTnQUfC2CdJa4ufrA9TdmR96QD8OTIWzd7M3TIoQKgd
	 NpuELVaX/YbmUDzr4CKQasJtZm8sNBKQbO6DgAW0laYhighMFsswqfEPRYtbjhbQKH
	 AUY7vRUi/6kZfBAg/F372xtQaZpC9gkTpJ/bOjygAUFntb6jRkOB0gpDIkYzTrVqqF
	 A7QkXFzAy5svy9D4uWyuL0Tn6zhv8ljUDnjPpLjKx2XcLfk+G2+5tAQ1f9zQnHdikP
	 YEp0R1LCLLDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB6CF2597
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354171358.13546.5525118353856010121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d42050a48f121eeceff1d4798cacc0a0706abe6a9815cc4a6f38b8a3add1746
Date: Wed, 19 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763541713
