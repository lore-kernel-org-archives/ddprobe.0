Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBC1F12E3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736334954; cv=none; b=tv+TXOojVHVLAaCVMtTBglpPgWp/5JJk/dus0G1w0xhSQSbZECOd7m1j20lWUR+Tboh+iW9k5wtX9Q/OIhxXKTFQrcJGP1dsy+ssraONCzWK0/IlMJYsO/PLftW+t7qqQkcMwPM0F1FjQgaqiYKi40T2a1QGbjB1xphyx31EeYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736334954; c=relaxed/simple;
	bh=jeeB4pOq5ksewYV5/EubxsSpnjFuIk6vG5xNM+wvRY0=;
	h=To:Subject:From:Message-Id:Date; b=YeypuOSMusSBo4HqRIWm7a88Xjrewsl6JYPZgGIKi993oO1ZXnO/eOi7aTax2vP2oZAnXDT7/i3OC2pcsIeYVMk+yKQgeH4k1FLWEk6zF13eUcHSd9LbdGt47ekxMB4CN6vIdBR2RT/77nd6HrpNwe78IRBQTRF/JC5+u1kZCSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY2O0Ne+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY2O0Ne+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736334953;
	bh=jeeB4pOq5ksewYV5/EubxsSpnjFuIk6vG5xNM+wvRY0=;
	h=To:Subject:From:Date:From;
	b=iY2O0Ne+b1K5+Be1cozzlk6skXp3KlFGAeTdOH9Y1tefcAVsNby+8IIdEw9ElSaPl
	 B+skz17W8orR1ofWVjHDRMOaNmDw0yR0jbDGEquQj4ewQIafOFCoS2LWOAKjFwJ18I
	 SJIfZpqb9OcMGG9YGnEfrmPHV3bRPo9pBIvmzmTZ7YixzZzxe/KU7My2dTiS9zLayU
	 J5CDiOd6hoZq8dvY+VP5y75Vq6RNun0FFbBN2rwEvYgqlh9ZvrURG2fobWahv+EKkg
	 pjNjvEj3duGjzlphZeebhZyqfVYcDPMv/kOoldzb3nobJVfi1l/KsCYzB4Ztj9V6dW
	 GtE7fIM+K2l+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F5E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633495359.25740.9933911766629233894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c54a4a389ef5764f2555ac9695ea498e07e4472f744a70506504496ee4437d
Date: Wed, 08 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736334953
