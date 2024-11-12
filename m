Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EAB13FD99
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731445554; cv=none; b=LxxonIBsj46VoNxiti8zRy5Al/tvVVDhpbov9wZ4JQxHNYWFPN7ZhAINu7Exjtzzu69r8RtybzXOQJ7Dz0/53HYEDutOJDXxFVryNlyY/LB4i24arinCND1GdaDHO9Mr9N6auAmsb2g8ZY9QJp2b4jOoyKiHowwJM0IQz7fj10A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731445554; c=relaxed/simple;
	bh=nXEK1vyhT2nEHmYXxTA7vN9NXK3mBMLPXUbfc+RILu8=;
	h=To:Subject:From:Message-Id:Date; b=rfOkHoHgHK9+13U2M7DNNMNj830+DXynDnxcys5bMwtUbHPyUcYb4wSzqTbhZzQqqu3RkTDxHutBu5KqJx/wZ6mPpzDF2ku8Ec4ok5cLWety1GMGioxf5+H3QZvkY0TggkLzyZaE6rnaXYORU9OSeM4ddvF4/A59xt+rXKos2KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr4MAr0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr4MAr0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB73C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731445553;
	bh=nXEK1vyhT2nEHmYXxTA7vN9NXK3mBMLPXUbfc+RILu8=;
	h=To:Subject:From:Date:From;
	b=Xr4MAr0Gf+0KZhL6SsWtSsiVatSQXChjeWs1obdfzoOSp858puKgBcdgYYTlRw5OK
	 u7oqEOxPFD9p9qFU4SgQPTZ2uO6UYdR3n0SB4dlhC83GOMrnvErFHcul122Hamjn4A
	 sRSS9sn6LlvcwFs7kPoa4hG3CVwPrXBmJLEU4MFH/nz5R+QrdgPArNWh7xeLxvDv3d
	 3ZwwjjENxay/mfv33E/R7ht/33RlD+7Fp4cmGEo9C6z/Anlfr82vsSW52ix0xtr60h
	 /osckgoRe/zPTM2+E0b3tzr+zHEd0mDkRPefbm6sq5H0FVGHV1JZ0Utd9DC453X1UR
	 gaAboPnaWznJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C36BD597A5
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144555360.26716.11951943352088291033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322c9b2524a6071afb23e22cf426bb234fd96154000a13e62696b816909c1b7c
Date: Tue, 12 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731445553
