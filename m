Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CAF27E07E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760734794; cv=none; b=TzAiip99Sg+1L8EKwQgWiKufXD+NmTxrjr2nR7J+ZM2IbYJZ6iFP/4VFitTLr6AZvjEbnRquoiQim0wMb5Q2eKYkmbT/N1Grrh5rUZB45/a+LbLh3W4YK1FCKYPiuKQGSRZu3V+9WIxBAbh/2EvEYtFvTQbREzuhJK3oMxANYT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760734794; c=relaxed/simple;
	bh=RmT8tU90J8GpF/ps1V5jokuUkMHyKEZL5jDon9BVwPM=;
	h=To:Subject:From:Message-Id:Date; b=h02XXjge8InRluWlXEHOO3Gacyaz9cEIoSxdJ0JxomklFlHrgswPYRfWTdSikW+CvmTTgCbODih3TlIs+gEXUl0NIRk+7gSCwHP+5ETItKxqnRXd1MZd6CTg87Inhm9u5ezL7L6jrfv62TRKlDhWDOhLDx5/750zduY16ps8+3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5zN2sJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5zN2sJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E17C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760734793;
	bh=RmT8tU90J8GpF/ps1V5jokuUkMHyKEZL5jDon9BVwPM=;
	h=To:Subject:From:Date:From;
	b=J5zN2sJFSsCxP2O+onoQzx61Zik3x207NWEI9u80DEE5KWYUcY+anYjOdvqvyVfpd
	 5ZjWuj9Rd7aVVHolO4rb3+7rWQDG64R8UswaBhvccoaWgsK67ZZpXuSuS+1gGhvRUN
	 PSQB06ofTYlGw6FcG3AG/851QyFAwd7aq+pXXMNoJo4v0LxbTKWi9IT6ybpApdIKPH
	 btINY/zr/MAqOhkerVK18zYDIr80PZbZk8u1wM7XVHnq0gY5l2EfknvOVnRm550bLl
	 x+XdP5gHmR6lbX9re97Tamg5GwV2NdQPiwfXlmTn/Tc8JWAI7uow+raQO1/UnBz0A0
	 uo5k9o/aBc6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93612CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073479358.27094.12388297170861133831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fe430ce79d2f5dc44cd0db8e28caa3317babe0f44fbf6de62562cc36715f53
Date: Fri, 17 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760734793
