Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D60935C6B8
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791589834; cv=none; b=G/2Y2TeUsXdqTIGFwwaI2wHGPTPTIlYpqyiD01ziBhVUzrtF0GyS3HxEBsiBKV/EEsfw+Sf/CqlFH8JTsCL/P44shIOHiKMrQLILlhteLGi3Qo/PJxBMM8z7EXGhFr8hf0MXK1qscrFK6WWmeRYEV0D/Lb/ahgIzJ6nYEuGE5O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791589834; c=relaxed/simple;
	bh=hdxIAeptGmdVn0i2QmANmSUVOgJ8gUjmRKzDoBCwitU=;
	h=To:Subject:From:Message-Id:Date; b=WRZNgzSvBm5LS4qBNlsgP1//uz8LsB/UIgWAu4fDEf6ly+aGAsEWF7qD0e7QPn8bC8F+CtSZR0tdPvdfoIKcz8gWKaj5JC6ZYLoc8um5s0v+Mh1Sm7ju7i439cOU+kquADx327BF68Jv9UgJ3pNPAD+z6xo6IgYYvJ4aa7ecF+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtafrXVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtafrXVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3871C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791589833;
	bh=hdxIAeptGmdVn0i2QmANmSUVOgJ8gUjmRKzDoBCwitU=;
	h=To:Subject:From:Date:From;
	b=FtafrXVO+2v6oWbBL8hCSWiviVUxOhUUF1ICv2fQeaTGNLvNvrFdhz2VaHmBs3k08
	 H3hzVvD9/2Sc63UWnBWxzCUQWYXSAM2MOfixUWHwwSUgog/3uio6gdIOa7gQVNdJSW
	 ERXYL602zH2xymfNdf5eeyfVkg59hc3uITJ+gERHcY6X9G+b+EBKREraoZnI0zmpi/
	 NzH6lDOmycQxCaNIo5OD1li4J2qX4NHr1RGPvmGu9bcJ+19FNUNIlIjqRBtiFANNwM
	 jUtejXQnzdxJijCiEVcDjO2RB1J0Qn1r1cQUuFmgpdSEkFu2SpYuSBcBQzriRspVoK
	 bU87iBb0d9cFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC061CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158983368.19391.579819122381799210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9577d8798831e8991956456ff55f3aa910194fffd6752d2775bcab7ca3400960
Date: Fri, 09 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791589833
