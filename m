Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B99515B2E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706572697; cv=none; b=MstedmhwUNMo+b3nLQWRjvOUptZmzaTV7puM94OSLSqo2bW5JOBqciAINn/bb3mLpdC2YeyxES9M5gHBf4ZeHXvkFDyGIjmXvWEKEJgKHSx58PIrIJli1W0cJEgTFeYd2V7jHfzvOK0yQCJP4VsuJrF+4uEiIUyLQOuprCHCYNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706572697; c=relaxed/simple;
	bh=aIRwcnRPd67XsX3k0ihzRFt1iCYcvLaKepAXEOUZpWs=;
	h=To:Subject:From:Message-Id:Date; b=iuCtFtf4ZtzCGNQd8DjVWkAqdBKpa4evTdiYxF7c5/OUseDfC4bUYrT36l6WbiWA/DiwCYCu2ER4Nsu84QVFDc6hImmH/Pq8GqU3F1oQQyq1U5Wx6MuJxWU6nZ6/BNK1GPkHyKSww/ipzJgrr47KKNV4f1N+5Yy2ODFfgwMIRvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOWArUbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOWArUbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89979C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706572696;
	bh=aIRwcnRPd67XsX3k0ihzRFt1iCYcvLaKepAXEOUZpWs=;
	h=To:Subject:From:Date:From;
	b=JOWArUbUD+xVqOC053v1Y/ckzT0X2ehCBaC/thlRin0YTCCWaYN0eIXxp+SKVbDYu
	 qU/sy17KTLy7fhZP/MNQUJoyPkd5JOJ0cwi7xB5sWgR1Dg9RiaOFslZiOCudamE6Jk
	 1gXqcI+FKnhWUnXtEkFCr7ElFjMFUJDl/Xb/RpxPSTwHiKdO8YXJC50IZO+P8Bz5Rg
	 K9SPuPNWf/2w4nvoSjTTKzBsgYqsLAIpEab0wymvg47QkMwLagImnhsYFVckZ+fQnT
	 mSBGl2PgNJZweSx2Lsk8PLIDZhRV74abNK/hbBejqDkTsV9+oPswdxuS/uGAHxuA8Z
	 xNzinHbqNMeKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD15C47DA9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170657269641.6246.3020177103420014961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f417ece6ef6c3b70ac1893ed1ae7cc27e683dac804d4ba3c4cf375efe4c51f65
Date: Mon, 29 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706572696
