Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D0F23D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726959354; cv=none; b=QBKtTZMIa3tSqBSZ5PpcRT8QU9yNXLtI28m6DfJYpP563mqICCLUQ6EUTkvryi9leH/RHZQXX4O3BHdAqc0qZI70LQmh8GK/xbKBh1IrTfkbeSrC5kIGbItPn5qF8ag90JUpP/u8/TWlJJGPovqIoJ2d9JuVPK1/YHVtv2z4syo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726959354; c=relaxed/simple;
	bh=X/f4JunuIK1pauYCsmXgAVAA7kx5iBv3Ff3UE7m2gpg=;
	h=To:Subject:From:Message-Id:Date; b=Q6XRm8a15s251fPOxS10FmvS/9wqKeHNxC+6FIqyzfRaHHyE627jAb7vyOVZppCxxlm9YQwrym8ssyEyj5cQgizCpcVbbwPaDD38Fb9NbMVzuX2HmqqLnzo2suyBQs9eo4pVDp6Vx6kiCLvwk4wnY30kQVWcGCLsKN7XE/FAstk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da+XHDTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da+XHDTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDFC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726959353;
	bh=X/f4JunuIK1pauYCsmXgAVAA7kx5iBv3Ff3UE7m2gpg=;
	h=To:Subject:From:Date:From;
	b=da+XHDTRo1JWSvUI/i3RS8fTdkLrVplRv08k1O8N+LFj7VChX4EnZvUaCSJy81uBZ
	 n8mBrICzWYIuxZoI58P6TcXOT2PK8aOKrWRT7kWsHpBaA1l3IkMbgrvT9DFzhKzd+F
	 JFyahUP1iJA2ZMMjeUU8TR2w9C58Daj12O5BDyq05+kEN6KwkscGem5xYqn9GkfEaX
	 B4sVFgkVr51DM3ad41ZFD0ZjoESmmvOSxCiZWY+wWkptEquN5xMtR/Bn07GfjCK7if
	 r4r2GTg34ESNzz65j9sqMb2JpFYJ554DYGBoG/MVx/c7jPx15ATlimPbQOIkoCvOIs
	 g5t+nGLwLwQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3FCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695935357.2524.5170747449574020231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0eee8f0d2a95e75d5a7a266a738b3a07a68a70b2b7dbba657d2ea48001f8a65
Date: Sat, 21 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726959353
