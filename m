Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E38C1A8F84
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744067394; cv=none; b=nYBkICrjk4L5hC5J93gVdmauk2V10RYfoMcvlzjsAw3Y4sWASt4fZ3JHEgaGcXYtqbDzjAZwLNqT1gtqZ+RTZAhnL1bhbR1nXcdKXvj/DnI9CB3WbUrNGKOT1kKgeZPAHJ98C7VI/WtSYsZcuG1DPgAIILIQno6i9hYL04HANFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744067394; c=relaxed/simple;
	bh=nLk4tBUarAtPAC2EIZHq6EqegPXgt1G9BOUagWbloeY=;
	h=To:Subject:From:Message-Id:Date; b=bagg+fKr+27vQcJzPpp9a4XoRN2yMRkWNg4zq1TJc2w0UJgL7ck+MMyClzsC/jsdxz2I1JO117gmMrLPvOaVCmIzZR2LWJ+/jD+yS5ol/fytRLfZbrtKjIUVPDO1w2I5cJpDH7GPIp3w2NXPcScPRO1QvdmtzuUfV9qc/RP5QYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d91gdAyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d91gdAyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A57C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744067393;
	bh=nLk4tBUarAtPAC2EIZHq6EqegPXgt1G9BOUagWbloeY=;
	h=To:Subject:From:Date:From;
	b=d91gdAyGsOuuL+4T89PU/3hMaAvhyILscIvasDIfRbTgiHUu7oA0oZ30sscYNrPnm
	 vSD2pmgQHgcZXRxOgLBOP797Cc5QWBapT8bOLrGGzkoSB1qm5z1yHvKZd/VNJTwzBt
	 xCzZhyMGaIQ+A4QTsFEYEi7Jb3GgcI/uIP+Mkx/p3uvlaP2V6rH3asqApBczxoZz26
	 lOni+TpKI45biXxDdq6m6jh7FOmkWCo9v49P+hjK7nDUW8d+nSLQg6D/j+D5K1mps9
	 E/iViPOk2L49ZeczOsgcBSoe3EHXR4WMFjAuHSjlDzSx+7QMImIXtRB+Z6OvE6FzFO
	 4d1IjUzToinqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4F3C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406739361.17714.14383013879245426608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47117c94cf479c77d363b61ebacfd040bb9d5c9b86e8974422e037296e21dc4b
Date: Mon, 07 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744067393
