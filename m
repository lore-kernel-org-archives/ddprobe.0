Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AC78827
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720756643; cv=none; b=cZLnvKkwOoL7fWMbrRW3ilC8EilfO515z21qEW3drCuuJz7Q4ot6D+kSPQIVR4+KHl9V4qKcUW+VDuifqUzex8tqQTtNlJNvIW5O2jZZqy3vgTuhZ56Nt0a/iVR1pHZXd4YccMTyEDDB6emK6QCD1rmSQKM5lAPBYf1oTH93O7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720756643; c=relaxed/simple;
	bh=GA18QocUI7uILQGKnNFzT2crzvrpSHIy2/4wuYJ3gEw=;
	h=To:Subject:From:Message-Id:Date; b=hNw2iA8shj1xugrnkroXtb17LlnprCH+6XLm5Zu8ALBnFCbyYudouLkxB3vcHBvfI5tFwZMCtNUmSxv6J3EzTuUG7MNiPp67WiIl7hjGDVhHDgNmaDDRG5+dZmtq2YRUu5+FD64y7nYHmFYKcpTDoXjroa7YV2zVVRrv7h8RusI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wx28u1Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wx28u1Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CBFC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720756642;
	bh=GA18QocUI7uILQGKnNFzT2crzvrpSHIy2/4wuYJ3gEw=;
	h=To:Subject:From:Date:From;
	b=Wx28u1ZfuE92I06li27HIV9F1eP0LzZ3gt6Z7EzImpR15ezlpIm6JFhWwvm4K4+gx
	 29Hrd7wNJCGlapwXSHqDczRFiove/ZVB+CrzJ2f3naUHPfZqr4HM4wsPhuCfd8yDJZ
	 xVYlKiB5EXdcTINl01z4dHz8jXLupDI5DWAJZnqulEXfYkSn8gEg/92nPjXBj/pCEK
	 a8ILVcu4Bg5A+YldzcmZ/g6rPxDQmOMzMMeGbC+TIEaZscpf7b3ap02MjGG0vvxdNM
	 vVgFVpcnMMx/LYsMD4d62QsLF9wIf69swDtcFynE2lOAdGQ8+uxuaSzi/f4tXGD/GR
	 rUMIx8cpPw3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA54C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075664281.12802.11171824258305396813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cf1d01c2b133148460e758e138a00a6886cb14255163f2f93a63880ac2fae3
Date: Fri, 12 Jul 2024 03:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720756642
