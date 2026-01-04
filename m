Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148032741DF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767570234; cv=none; b=uSYC4w7j9mBiu/hVTpfUXF7Taws/27TLsrLnIZ60TqwyvyKr8cYOSu9H2dE98GYGnqFeuccRH59c0WJJRK1qEEfsF7RdjQx64MLGxQkQL/8oGCw8+h8K0Ef4/X/tC/33cmi0D9CtIb4qcX5S1L7kbqTTRrvYpruwcf2uOK+3KNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767570234; c=relaxed/simple;
	bh=Hed+XZiraccJDFyBlsVelooM6rUPhzGZmB5PsOEnINk=;
	h=To:Subject:From:Message-Id:Date; b=GnSiqR0YqFrDiwwsWzqToplFmHBXAc5dNY2nVEiwgu2h/PL4cSqvfVYtjiHiO2z8TviTLQSIGJbbphoOCM5NcT5UXlIvBLrbICRBAkT8zblTEk8y7mxSYyBKGQbyu27v5HwLQpsx3nC5+G/LQciDF0XsGi+u3lhQ9HpuS56eMRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feaPyosK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feaPyosK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767570233;
	bh=Hed+XZiraccJDFyBlsVelooM6rUPhzGZmB5PsOEnINk=;
	h=To:Subject:From:Date:From;
	b=feaPyosK17y85NTFz/gqBnDEbA6njOcgQZUtD71+FVgtItU3v0cUt6GENsfSiiqPk
	 1tYpyDgXTx23ZeVBtLuSbRFmCjf38w9hfQw9DYssmd8vYHTeFDyy5j6Ma/MbeGF/e/
	 T078tZP/FVQNGskyRQDyDA+P4sTU1KaZUE9lbzLT5K+T6JXNQ+0KtkTyUm1q4UAtVA
	 ++Zo5+krdmbhqk58PUhZQRtL7PCoBgoHNENTPnDPZdnhHpOCJ99V0Lj2vmAADBlWtH
	 IjXG5SyMuxzKu9TMgJZqlwpiCHXygbV7KWx6uoNP2yKwqdSjvQiMHMl4ru7t84I0Nh
	 8YKnodepknAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF7C2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757023357.28649.15824875755087965734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c756a89abaf25cee68128bcb3441a652c09710f4d2d1ee9af2c58b704954805f
Date: Sun, 04 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767570233
