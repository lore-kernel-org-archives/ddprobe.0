Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03C23B0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736901954; cv=none; b=TGwE1k+JVB53OGPBMTA9cjm6pDOqMmL7A6iQ3jZ6AxB5zK37bqQ8zXksY6GQZ52IEcNBpMJe387BcVI7zYPNAwycVjPpZvo2PiMsjpFXAyqO0LJzA0G//otyxT4Hh2mQridjqC9eVJbIlnBAgajbSSOgzxv/jow3ibpfXgbD9Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736901954; c=relaxed/simple;
	bh=J62iXAM18GDGbfsG2Fo61hBaWCdBDMiS+ElIzoxVOGA=;
	h=To:Subject:From:Message-Id:Date; b=UFsKNPZab2GItD79nDgbY0NIh9KTwSBLj/wQivr8yEMFLe5C9BFyCygENakuUiSILbFDwgcZYGWi9OyZTm72WSboiIwbDeLA+99tNPL/dSwnNRbA1Ny6FUr7L6wqgrErY2zc4o0/lKCB0qvLn8L8aQi2XIQYi2Yfe+erOjuLRls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcbFGDbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcbFGDbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9E3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736901953;
	bh=J62iXAM18GDGbfsG2Fo61hBaWCdBDMiS+ElIzoxVOGA=;
	h=To:Subject:From:Date:From;
	b=FcbFGDbL5tbl8uBBYN3h1N5TSHdJ2xd022nEUuDxsoSb5ySqb/4wvhDOeoiRyncAD
	 ziPuodCK/G2NctwtDIyjxpSnsJNlT+mNiAWGaTwqvxu4XBCfCAyqyFl3irtAOHVVSy
	 5hiWaaWhNodjL4iIQ8BaPttb+ygysBXBSUkYvGPgqcAE2X3NeVEJ+4UkrC0wQ0LC6q
	 SHklD35ZZVHmaLWvcqCCsdM126ADc3wvR2Wrqxw4CKRrOSPYjhyq/33Oqk9rL66LgJ
	 jwzQ1dgM1aQyv3yU8nYZrh5rn4FTwQ9CliMMA4IEcMXH1CEYZ0wtwNeFSUvD8BqMSA
	 vWmLWKdmBMFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156DE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690195358.9621.12246974770403787552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054e9fe88f2ceb9228223780bc2dc2c94f00951856d9bd5839cad576ddfaa114
Date: Wed, 15 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736901953
