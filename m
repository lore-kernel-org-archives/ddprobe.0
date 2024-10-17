Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA213B298
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729161954; cv=none; b=RNGSGvGkTff8Uf7Qpnc9d6VwlEL3ipnqs/zaE87sZBbLh9RP3DZXUoBfYE7shR90vEySKIIVxrDnUbStllk5eLSVdZGlDAk1D/rLQhcP2j0uAHzWn2E3fcf1fV9n9viBIDUYqjLeD+koA58HNXNiyhUOnKig0ikyLcBM/iW/Yuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729161954; c=relaxed/simple;
	bh=W2/ywB27nBeIQhUqjw4VFjBOVvve/+RXcwkgGA/djxM=;
	h=To:Subject:From:Message-Id:Date; b=cyIeaJBJC7sfX25TYoaoh94OAkayqpHH0WouHvAB8kLFO3AFaZb9quPOLJo7Um/pWXBSTCMdLUPjioqUAJSVpygmnop6pjeTvX7wiNtwlNRo10NQ/xG3O1twEtxvzX0rye97DXV+Apeik6JjzempNXd7UoKb+PWhzGETAKIrqjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJJA8YPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJJA8YPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B45C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729161953;
	bh=W2/ywB27nBeIQhUqjw4VFjBOVvve/+RXcwkgGA/djxM=;
	h=To:Subject:From:Date:From;
	b=LJJA8YPPgSlrOQyzG+0Wq+h6RyLT+pvtwx4aC0/k80o/sX+lX6tevpXsCAMDWNPxp
	 6/fS8jTI/sK+BVaPunbBWufBAkvF3x+e/CuxsATBCT0fbqCy4pAoQ0EMiWCQTSQJLx
	 TMEwp/0iSCK0RWjUdLBcRXqzX03EGwVrqdkRM1DPq00lEPA+kvUfVcSBCU7y6gNzK/
	 BUMu+uX/zpaBYjafOznKeyNb4htJO+HNlsaGnZkIXfPwk1jW0rVXotCXAsnlW0FdnY
	 jNyKAI4885rAz79mtWgIL1UnxJQwIzgWIyjcCXlkc0+fLXUQUPUD9u0Up1+vqUKqs4
	 jITx+XY/7xeMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F77D21275
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172916195360.12659.6216015337816169808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6784648348f2be87e01f7fadad2c6378b7916c16ec6e816ae4250ec07e213313
Date: Thu, 17 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729161953
