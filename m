Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751BA182B7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744534194; cv=none; b=SCp6TTDA9U6J1/aUBh5sn6TCZjXtYNAPjUGfYyrQQpRn2NVoHO0Le2c1q98GizLVVWwNtEgV58qWxeLcQbEO/KwhlRpWSU1rfLVBLpI9R158Ou58SVNrKOC7oEqDM5mjY7eUKAbxas7ylX7yoxM+eAyYwc5SUj7x9ynHMn8PKTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744534194; c=relaxed/simple;
	bh=CQJXbtiJjH4c0n4xa33qDNVs6ao7+Uh5AP6Jn4a5FAE=;
	h=To:Subject:From:Message-Id:Date; b=sVY83/tBVeI0RQkofOidS3fbEflm0kn9BfiaqsDH6ckDJLOzOwLuyBazTlAqPPFVQP+9FDbGd07I/0ZJ25V+qMHJ7rjEcLK1MvtjYdWmcHCVY2BByosNAjetK9Cm50zL6KFfde2mK6ClPMCwAZ2d6b48KLEaHO8VSY5BhUpO0Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocNeYe0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocNeYe0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7031C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744534193;
	bh=CQJXbtiJjH4c0n4xa33qDNVs6ao7+Uh5AP6Jn4a5FAE=;
	h=To:Subject:From:Date:From;
	b=ocNeYe0bIIl5ScTWDnPuK4nVNIpM8l9h7wS77j/P1cx56VQakr6wFNBCqyurNKiRa
	 T6wknn/0ko2ojRjwLBwmO2J2EDrWDL5NCLelZaE50lVvXmAVim6jupzC8PfsUU/RN5
	 kNnBtxQB9f6hpakn8eWbVXJr2SQnrjAq3IlozZNA5OIYI4/dwmyNSa+nqfw9X9FSeP
	 1042zxSq5myiTnAICBiStvXWGmmX8I5nZBB0dysYVjNx5ZS2qXnrm/JbnCkId0ErKv
	 GYB6r0Kl844qNPzO+OXIv1hREznOia0zNPOKv7sAJ4/Tel4PqtbzxaQliEZoyN7rTN
	 t+C0CfmkAcylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80C2C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453419366.2583.3997924927443709928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd80004ca387cb2417284ac60a8ece089c28b467ed47bf51189de14384a21dc4
Date: Sun, 13 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744534193
