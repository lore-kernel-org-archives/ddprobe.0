Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4898A1E7C23
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787361634; cv=none; b=ngbisRdIF9nXuENPXOvOrxE83b3E1PqehQN6F0JjVGdU0aqXcgi7vKx4u4DcE4HL6JZIzS/M/jLF8xFXQXY5EPOHOnq3PwxSahqL/tVEiN95GLcGh2zqzBGmH9brje06UOlK0UbyD6s3NBTr7OpE6uWlf0nAWghtvlcpboY+VNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787361634; c=relaxed/simple;
	bh=2A/gMx0C3uQLAf+/shm89BiM9ZIf40QE0/WB7pQzfo0=;
	h=To:Subject:From:Message-Id:Date; b=MhM5uemDE2lDGVODz3j9TmMu6UzwsAWuhs1QxVcn7QRj35YkSEwTBaBc5ve8paqrIxwoKpUdxBlNS/aQPp8722rA7ZWrDKBdgFQLmekIcY/SMgET34+SAdETTJ5IN4Iy5F6aa7zJfCqifjL23ANCSyMZz4S2yk4rQwFAdDa+vzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSWVE0y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSWVE0y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA2AC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787361633;
	bh=2A/gMx0C3uQLAf+/shm89BiM9ZIf40QE0/WB7pQzfo0=;
	h=To:Subject:From:Date:From;
	b=oSWVE0y30BbOuz9KEPghjJQEoaCFSM4CeqEyFOaWeidW0AFJtNzGB/LzKaI/cFobo
	 EzC4X/NFT/EnwKYnv/k52XEC5RrcUL4xeZzrFDrv3WvO9tPqlC5+rNeMlkf5IPTVoB
	 hjxqiLdD29g1QDqgvN3q2USEv07ROVYUGM8vfIh6tz4J7/S2OoBCs8PPG8SBW8A2pu
	 9Z99bX2CxQ7vjTMSQPes7gwaa3Tx7A8j4vyNx9pGRSsYcn3xSE/+chW7yDV9OBzla8
	 FgYmHjwXS8cg6qphRd69HJDKl/c6gXrCK58BfXB6oS9lmUehj7eWZBTfgw/9LzqQmU
	 2wmnZVtj6FPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EEC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736163369.19465.5589160260424117197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f3783735faa35f2e4846757dd4910f869c061d1a8a286b5852a28015ac691d
Date: Sat, 22 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787361633
