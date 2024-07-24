Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AADC14EC7F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721814355; cv=none; b=XfksJ+AC98Ndd8Rgbmn8HxmDgzAJxd0AiukNAHgNl5pFdKMSIrWb9tWD3GL+jOpXDJuTa71jj4HPrxYOqOmtEpG+1gnVOaqj5xQ4rMbbTPMGQ39zrjwxH+6as/nG1ReIGnMoH4Kuxg5KoGnh9rT0jREw6JP0P6jc92+KnatxIds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721814355; c=relaxed/simple;
	bh=WWBEUrIXPO3/ISRZWIXt7MfcqQ7rgVyxdGwA6Pkqe9U=;
	h=To:Subject:From:Message-Id:Date; b=sIKY/bgC9MId+pUCGdgwDE9x+G8R6anmEbc/rQQs1t3NQeyS2P3BRQJJll8qTnEKLzYgKZ0T6dE/e4fICGESKENErPLN5et1vWp65bVqhHCLtwrnYVU+r1GV7EMFnd/6uKT7GOUAHVdCkoCV9AE7BWoVZSrXvFN3xTx2kdfHiGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrtVnaD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrtVnaD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBCBC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721814354;
	bh=WWBEUrIXPO3/ISRZWIXt7MfcqQ7rgVyxdGwA6Pkqe9U=;
	h=To:Subject:From:Date:From;
	b=mrtVnaD7oE40y9M/b/xZVpgEaDUZ9Sz3OVkac8RiFOunwqzsEezufj5meJ2nRuSxR
	 oWteHcc1P5NCLCah35C6p7Ax4rVS89H1g6w7bSqRsxO7YnyYGLkLkYlfySvuG+uU2v
	 dtU4z0qGgFWxuswEkQrQVzNpHgpY0kGt44lmFqNf4bOuYrtvuJdt8FMwkCwZCVVly8
	 3kBbWJTncNiQGhr8nHDx739IuxnQFEnmLU3f7slQSwf0bJRwMeIz7yOqCgXHNDRUdf
	 J4fiODg0/2fuaygbipLabvMecCvk/BW4JqIXyTHTd1TVc+hLiGjBWm2i7p8gJjn8mI
	 msIQq56muOJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF74C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181435362.17521.2930100802240542015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01c2b3b59badfa85fd31cfb279ad95773a471c33a91cb3496810d0df12c36d8
Date: Wed, 24 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721814353
