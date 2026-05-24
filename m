Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417A818FDBD
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779599554; cv=none; b=ouxJBdLVh5tW/D68Yv2SDDcJoklqOY9USAtXBGnmqaJEOkgXcw5LzfWhbncFhHol7iOKYMCjNRn80AM6saU0w7nqsjtwT9XcgfYFYZ1/UrRK0BRO9Fv7o9fR8nD0iaiBiSOsVjF7oBsnKiwycourhbdbzHy3NOHMe77NYYSMunw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779599554; c=relaxed/simple;
	bh=C7gagTOehUiY7/vE755rvUS11AUMiN3Yig033xZ5osM=;
	h=To:Subject:From:Message-Id:Date; b=SeZbc6+4IbZ+zdKx7Gv7FrDDfv3i3eA3/bTwiFTN3wi9jnbAFslCq68P9Uxr6jDvxtmyFOWlq7RCRg/6MexCXLt53pKVU6xJGtybM7fIvkKQD80T42Jm7NBU2YYdJoLINZwzlOQbm+/SUxX2ZPwD58Uaxs41o609+RFkW5oKAAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULb+3f2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULb+3f2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6637C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779599553;
	bh=C7gagTOehUiY7/vE755rvUS11AUMiN3Yig033xZ5osM=;
	h=To:Subject:From:Date:From;
	b=ULb+3f2lwEdAMuudD6bpNYAoMfjbczeiDyDHWuXoKEQaB6Ss2nSC0PcCccTYimgRa
	 WCeKdtzB+W8hnd546tltZm45+mjiHQSdmM1kA7W9dnloVXE/hoLhRMbgfqtPicD0aY
	 oHs8Hmf9MQzGrG9kwm9/+aPjJ5kuVrM6Uf3HxY8ro6gCXQ+wPsATYKQ7AYGzehSdP4
	 L22z57vxaEfC+3o9xAnd9qWDYxU7axz/sRSFtN+G4S2jZOXmkoLRWxZrbchEqEm5Dw
	 qhWeriXuzm6RguxjWDKKiTQJP/fnFbh6ynR2jh6DhlvI1xhQbLGr6G/g8iKDUDirP8
	 gx4lSXf2KpYVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EAECD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959955368.17483.5158376831525971452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb45ab85a66447253dec07d3d0fcc0af3b4cfc6e331fc21fcf57ec2f7fbcf58
Date: Sun, 24 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779599553
