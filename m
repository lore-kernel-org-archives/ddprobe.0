Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3620C2405FD
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755293394; cv=none; b=SyeW74RDu2Aw2D5u2XTC+LQSkreggoYBMY0InrfjIn6kS/MQrAMENL/qz5/r8aO4sd+OEifkGSTDTQCi3gL3Dk0gMpsGK1XN7XZB24W9pFKCUH/5e6Vn9amdehiSymHiubliFJhzqegVQVI6sA3M+fx7dIB0Osg7R3R7yrvf92s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755293394; c=relaxed/simple;
	bh=QDCGqLMHApZ4pcnA+jzrrSmO+3WDPPffO8OzxT7jTtY=;
	h=To:Subject:From:Message-Id:Date; b=g6o9YLF65v9oPXZ/0PfAvEprwHpVZgh+bYsG53cX9YyffIlpqRr3MAc/3yi8lOJB0R0CsIOOAyRF+yU1HIPlX/I77C/sOZuBelrR6ENlUyb1S8CiZ2wXDPLU2jU9Ept3vVn7JWcLyCcwniPV6dNNpullVQEnebBe09JMyRgxDvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrGQRJ9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrGQRJ9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B1C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755293393;
	bh=QDCGqLMHApZ4pcnA+jzrrSmO+3WDPPffO8OzxT7jTtY=;
	h=To:Subject:From:Date:From;
	b=YrGQRJ9dC2RYyavkFsH0VEVJR6o/Mt1TgtWf7kW+E9qd8Hp9R88uhjDVt7BxW7R+H
	 bAR6lrFONgPiVFaVVwFU+3hKBLJd5cjiwoPaRvI1Z1MpQPVpeDgKFcQmBRigvbgQkn
	 7X9iynmaaQyE7wo69KntjySU96qggjWgcw1z7lcNe3A3nglzodn6zUSd7lFdA0I+7h
	 ba5Kt/gQS5nk9DA3ItaVWjpSfJhYt6PjhaxP5WxyZA6fqEn93z0Uz+nhouAM/pHbU8
	 nHo5gRxvBRxzdSUD64R46Rzi6WZHaXQhitCCsdOKVa9dtq4qwImrYKes5m+eRe/sks
	 mwpIw4wsNgzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919CFCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529339358.5832.9019276594669343325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9042be8053675924c1444bb43713c38af8e06fee3ad85742f5c5a28908049d9b
Date: Fri, 15 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755293393
