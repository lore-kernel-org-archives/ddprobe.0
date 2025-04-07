Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E71D8494
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744057194; cv=none; b=g3BEHQj+HZeQm3DMPnwvpOa1zKuzDCH3gfQV0SEqhjHoxaN90eV45vfV66NrWGCd4SldaBqwAbpBJW1cIDOhF79Q8K90PU2d+h5dcqVHrNh6X5PvWQp1pYnszi1g40HxUNPmvIGWhuoMUCTrZ25v6Dz3B68Wse989AxAWqD600M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744057194; c=relaxed/simple;
	bh=6CdE6oMVYCHMcV8eaPv061uBSPplyXd51Mih8IpaQtY=;
	h=To:Subject:From:Message-Id:Date; b=rNeizKKyDj5OmC85kp5MmkiQcG9D4ejwyVT0JdYUdfIp2eVoQGeUDo3SgCYOJ0IL8rlFNCAJABZP6M/iY7eaSUU8jXuEstkxzsvJCvP7V8rCjb7JaE8+M3ZX3SWd+JDs30EQpDPySatR7wOdlv+EGd0iWbRh21W+wWUhVJQ0TSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5IjboH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5IjboH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11C1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744057193;
	bh=6CdE6oMVYCHMcV8eaPv061uBSPplyXd51Mih8IpaQtY=;
	h=To:Subject:From:Date:From;
	b=e5IjboH2o9uS6BzbjcFQzP9y81+dkbL3UJ8TTDVB07Z2KmYFcUt4ZTJi9tC59H+9A
	 L6fs960TRMnzEY/dIkp4HjmCx4Qzu6g7EFI8mtlgxaY3SFSKzny6WZbLWhzXmGVSYm
	 FBwxgqy/F8onnRIWG9txhOy3P4Gl6C9Khk2zofHVmstAsWHJBg/swkhTLNYjWcin8i
	 eyX4Qh4ZPcVrH3aeJ9FRJKI9VwRnx0+jTP9BwChWfQFKyxVYL25uUnDg4cJqIgw/3o
	 4glmOwrU1zzE38UUwYNrGE2vG9X7Gy2TzdrDi+UuxRSyCDCS93xMBKacTDwOtVjb28
	 wwXV85NcRV16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2CDC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405719362.20273.9883649670285507538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55769729f1338c1467f8ca329c9405ba1947a73262c0a3c1fda75dd50ece884c
Date: Mon, 07 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744057193
