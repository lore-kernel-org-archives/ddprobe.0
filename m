Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1D46D1A7
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713249563; cv=none; b=sKYLDZwhTyNGhxVOOMZGSWlJiG5Xmt2T9ERLDXr4UXzGDLNZiaoy6/sm3rf0Lw6NHOAra1ucU476ShHEbVu42SxduXTs8g2pPgoQDSKeYQnTRMPrordXd1TounQ7sf4UOyYmQrYqTTPt0di+uvvdM9KvYweSpPI4tjW28e3GUes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713249563; c=relaxed/simple;
	bh=OsIP5kIhkI1GYQt5vQlsN7dHenZDgm4/Fh3DGu4j+zk=;
	h=To:Subject:From:Message-Id:Date; b=TiKdLzNlO0J9pLuZLs3io1Q+y8JZqG0/gmjOVQkfCK3pYUziZerv8J664yUDF15UHtfjrEKKkxAeyNCqqXpziI7tBcvJMpK5TGOknYXgQkek0epJ+nDZIrKwEzctI95fTmmcaXpqKiTZzpXxEBBBgNTOMW0Il4VLSt6g5do8HUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKVX3BEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKVX3BEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2CCC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713249562;
	bh=OsIP5kIhkI1GYQt5vQlsN7dHenZDgm4/Fh3DGu4j+zk=;
	h=To:Subject:From:Date:From;
	b=hKVX3BEPdUSJNrnW1xTFVfz+2gBKFhiCqpU+I7RLvpJ+iKfusLSkcZduleeyn9MA1
	 cirMpBP3rHjoNiz5WnDKfeNXop42SWWOzgiTtCwmN1OMCU9/70ByiXjqMofZKmsqU9
	 +RXwvrb7VevWZ6ZgFhOHyIPdrgG17F5yfHz8IiSZie+QVGc60k8KcANZOAhABoJ4Ry
	 H2KAxJd5O9vAfYvHgy4eB2Eu16cEOpLthFUbptUB0WX4R9xbHuunOHl/liFJk20/W1
	 r8AmQcmYvDYDeRbtDV55/rR9+dzfipzq/+C2J90cZBEEdPS1c/sk78iJ9AD1Jdmqpa
	 GaJwgWTGnrhgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7B0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324956275.10123.3188291820214220184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a137c0f21342b854c4598ad130740a82489cde10e80740181c1b436ba49822
Date: Tue, 16 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713249562
