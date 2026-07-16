Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291DF26CE39
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784184514; cv=none; b=E86CsRoJLhbsTn8Zs2THSVDQk7m1CC/lFRZVPN4lbivdjStmwyyFE7rtShfdv2aHC9aWXsnnsU3HBnk985mI0ynYOlQD+sTizBMtR8UEhkv5ZwUwjkJD9iGY4qHRdyPL9m0s+v2Q49sRAADD5mnhfO2zjJcv7b32x5+0Fk8LFsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784184514; c=relaxed/simple;
	bh=xvk9X7i3rnoWUj2UdKa1ZrxJRWgVin99G/zEBopitHE=;
	h=To:Subject:From:Message-Id:Date; b=QD3lZnzcBmiqG+wyMqgVPosYHW0tHhS0w7zfxehKsw3P+gCjk274pEyrkeYH1ZQVsV5nzOHAp/RlRdObQ7EQL6STOzghvQUf2kvng9vY2fCydSy/JCdi3XmeQ7cAEmlxGvkGSvQFMuQjhWlNeYGP6D/I5sxENvw7866Djqz+Nv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NldqQ29m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NldqQ29m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3ECC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784184513;
	bh=xvk9X7i3rnoWUj2UdKa1ZrxJRWgVin99G/zEBopitHE=;
	h=To:Subject:From:Date:From;
	b=NldqQ29mux+xNfgm1GvHTDzWiCMAuv0t6pobAHMiiOBztQLXS8JjZY4vpUkq0g5Z6
	 p4bZp9yPZupdSsU5DTiA3oKmuCFgXSwvpSHLzlZ04fPEPrudG5HDkH5eZUMV1crWzZ
	 B7sPjovs0CsPPqiaOyJ+4zV8Q6EjTzkzsa1UkjcG1pDbqw60UlO+gmpth6A78AX9jF
	 wDGSnYWwuPmoKNR2HtlyGGmsuqIkTvppk9GHw70Rw4DTcBbHzBf37bOcMzutBaOd6a
	 pCwgGFd/SUmrgC5EUl184ivBwoHvVtB+r9tuEg7TYQagh++wMFNmtAivbA9UtaZ5V6
	 +LAlQad8n+fXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCAC44511
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418451368.24754.3217425752344408824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b6771e46f1521c69f616970f5b6e72bc92e918d8e841f6eb1d4338a5d2e31f
Date: Thu, 16 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784184513
