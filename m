Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F78E24632F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733942154; cv=none; b=eMSCKsQsOV5pnAjZK+yvqyBcoxX0qfZMeCU1kmgZdJWLUJe4KRSZuK8ifNBtP8PRdsfvHcAXy00DldzoxJO+7P2TjopvgXTRMxvcf1cG8XHm6QNF+r6CCNjJ2cx2onO01IXUt6tocnLVksJRnLIpINYSrpzRUZhys8pvfNDnek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733942154; c=relaxed/simple;
	bh=CybSaFGPzd4hbtPS1rN4J2KN6erK5g6+ZRySQWcoxSc=;
	h=To:Subject:From:Message-Id:Date; b=BiQ90tP5BQMxTJ86ovDde42YU7BGLSu1huCtkBmA0d7im4ykamf/h+JXDPHim0bkHWsnwHwh7S93ENzy0hn2LNwRi9YkULvf9KAIjRgtcqxlzGQLs/UFzL53EIliYsupuYFS2u9wv7bjlNpaXvT+oQ8y3LXyaX5xZJy9mZWd0DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgeGndmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgeGndmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F41C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733942153;
	bh=CybSaFGPzd4hbtPS1rN4J2KN6erK5g6+ZRySQWcoxSc=;
	h=To:Subject:From:Date:From;
	b=mgeGndmh1dE59tt6+bmmk1i+hns4nw6C7ubor2xJ7etdbSjTCMJxTiUFExXx8AN/X
	 Sama1xcB8y7RHvJaTlhAkn2UFV78de5HKM/KJKbQ9+wARAxtMARksY/GinXM6vSia8
	 W+0X2OoIOKS3Idfsli8YcVsnrb5Lx3tvMxFkynSGLfX83gwip/XS5JPE2fBmY77MLx
	 b1TMtpu5r8c+4L03tm2Xb0DUK0/Brg7Vzt2CRMMAASuNfP2yeJ0/kxcczXNJEUrtNe
	 FrYd62qeRX711sSkeUvgkuwU7kI7uMa+B46biY+13vDSnJNKdv/XLrobTiZ25WD/ss
	 9kpfs+RRJ7ezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92342E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394215359.32230.4407520757062291472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821fcfc4969b66e47c5583649a4a34bb01b89c54d1d1c5bfddf2d77d32accde6
Date: Wed, 11 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733942153
