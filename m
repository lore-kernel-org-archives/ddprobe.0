Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B28C29115D
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745620195; cv=none; b=RuSzKur+yUXm9MSzkibvmoOse599aFVzvG8IWOq1GvaKqXc/rStA2CbYTx5Rcpn1bYcHsbgIM6cmqeRoJ4KawNcREQFy+oJfVPu1gIDLLS3FMXt5wOcIoKjOLit74o6c59dcQcrKNWTD9PEQHS1OXggraIRXEkQvQ5Qd1CITYU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745620195; c=relaxed/simple;
	bh=F61opvuMgWU3bCh2Rl2WAZjCgtWky+cSjn4BNOtVfKw=;
	h=To:Subject:From:Message-Id:Date; b=DZFrM2ajiVbe/HXv5waYs1uHmE4Ihu6pLFTtw8hHf2sLyITezuNzUnrF6crwjLm0Em71ryL8wGM1YpHGwGcnozs8fi+4s7IpiqUT4RQJiQM5dPPzEZu89DANh2YRzYsBI588UA3/+l7YPyH6vCOo7VQyKZ3v+cJ55hhUdiI2Efk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhuwr2ed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhuwr2ed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E261C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745620193;
	bh=F61opvuMgWU3bCh2Rl2WAZjCgtWky+cSjn4BNOtVfKw=;
	h=To:Subject:From:Date:From;
	b=nhuwr2edBpnWry/79/60iOmfX0Dg43nLaiNJgvM1q95oFc0QWETO/6zOoFuAR0roa
	 lsiK5DadaFFnrcmgnL1UsMz0+KcIhPeRx0P+F3bUwrUFYz2n9yRw7As63kto+wJ3Ml
	 DpvZvT/7IfdM49tVm5pN+hlBwBA8aVDDuIKwpaiNbSbrUcZ4SPGRhg1tZ11OATp0BB
	 tjo11en65JxnQcLG+eJsrvbCbM4W3zoYMl+YPIUjDqXGXTVpWgfa5J6NzbAfN9gSa9
	 AIBz9XIo6tA37fzfPYbwC0kAWZnsaSc7rqnfT/EKBEd7PeYu1rNibzcGLaXhOQ6WzA
	 lL0CNju8Z6l6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E789C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562019357.15415.6157992009405443330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae832f16f7255185b2c45071bf0d39d223a48e18d1dc68af932c4e396a666f49
Date: Fri, 25 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745620193
