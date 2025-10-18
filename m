Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E41C209F5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760759394; cv=none; b=ZYzw1RsdZ5ej0LGR4FYijzFKr3rFW/tGj6uz23I66gj2VUffOXItsEfLg1gPaAaGdzH7pNbog6A+Vb5BXh8qcaB8ccTr+MMNHs6RQfXAolcQpXjqbrmR52XfaZMX66gGrCR36td7nIQ8R/mpChys4Un+fMhnqM8gyHYm4wNRTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760759394; c=relaxed/simple;
	bh=SD4AWgdQS8aF6I6B/jrLd60ucRcimIgj2BLrjCI6gmQ=;
	h=To:Subject:From:Message-Id:Date; b=HEDrqkRSDYer+v+aF9UdazXDgNI93iAPwkf+xPlHW/yCcRf0EvErWAuNmIS2JU0PXEqG47Z91i2cKYGfLcL54W4tj7Pwe6ysw027BYN7guMBGi1yAw79akvFKXvoh2hPXhX8SrT07etCxedjSGloa7pGhaa+7WnSQak0SDVbI4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3qZVbOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3qZVbOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23B2C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760759393;
	bh=SD4AWgdQS8aF6I6B/jrLd60ucRcimIgj2BLrjCI6gmQ=;
	h=To:Subject:From:Date:From;
	b=r3qZVbOhh3owLMkn8ucnMokN62EkKd1ILJ7pgRvX4oVZZhmLmY8q++6y8d9OsAFd0
	 VzEKtam5DFkAwTbWD6/eGFCARW91A6/Ng16oG9gYT7nf9MN0A7FAWYQi2/jQ46OwKw
	 VmGiTFpojg/RQ0W9GxIW58lx1Ac9t6FBIYgZtPPKGGHHyiDVHIAga6yczxqLI1hyWu
	 nqdfXAm3DD4tYqDYfxDO4Ed0zk8IA5LggbTqNKRPVTzAGjW6LSrvqlJQrHZc2QEdiT
	 dZ3P71miEU8BJbIYJ/6vCdXYr4aazz1GVOJN34ulCOsQcglDeIVuf5WJ9+99F+VF41
	 tXOeJWEdCdgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D74CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075939361.23871.16522200678452219429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d9892bd0bb698297f67fe3385938f1a1514d9d77d6bc1b1dfac4ca380e1ee4
Date: Sat, 18 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760759393
