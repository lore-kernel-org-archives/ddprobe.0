Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F593F165B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774353894; cv=none; b=WeKt4x+rWiODb0cwd90d5vXMY/6BUKvNY6slLa9myblEtZzd1h7kqEaRmQNnfsP5XtwT4aMRqHPEgRksIINaHYhAsNjxd+xKEE0cNK9wjwjBghX3mKLBugvjcL4UmWZpzUV6+7JFcETa7vZMsyUlY+mul6XliGdJx1tx1UGU7o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774353894; c=relaxed/simple;
	bh=0dbTSzABH8JnKoCXpUrHMOe2yYOohWjcepuslRe3i10=;
	h=To:Subject:From:Message-Id:Date; b=dp9K7v2yw5xu2fSFFfp29rVgJdtcjaMP8HsSSVBJfXPcfPwiarWBD7k1jLsJfTN8q+xIA5ZNdICWmURzRpcCiVkmMhIThirjsNFDFJui8bMA/l3A1oI6D2db0gRbiZdXP/RspTUis7IUBr+cD4VBUhLISn7YuPuQssqVjesPoBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgsnofGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgsnofGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774353893;
	bh=0dbTSzABH8JnKoCXpUrHMOe2yYOohWjcepuslRe3i10=;
	h=To:Subject:From:Date:From;
	b=rgsnofGkrWLEllFmQo/ZFVD5rTLrGCcjM4v9XlsRFLtsPvTpaGVPAlC5EkUN/6XI/
	 qqCnYc5p2FZLmgH4Av1OTxMxqWlMVyx86ySHJgXvdqm65+jm2dxGXGV1XfeYt+LGLH
	 x7sBw1Wwdks/xgRecVHDmZf73DhUft7UOv8vZteRKM3Q6JzTVT1lAPPhvD4YhS0Wsw
	 Q9v1Eaj+dapwQMvLdAeW90zCSnAkQhK53I2DiRMNVgdA4TlwnGk0t7qyvOBrORlAB/
	 uy0VM9OFdRtHQsZ9VYImHUh4sGCwXu2xiSw/0UmdNiFO2koT3OJjDQAwmgsMdS5GzD
	 gHskjt+QUHBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4CE9A777
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435389359.28527.15020052526239176820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162ad641978dc3acd0406e049d11d028c66e239b95f66316cc44a39533418c2b
Date: Tue, 24 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774353893
