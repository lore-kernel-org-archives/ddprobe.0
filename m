Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428917262F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750700395; cv=none; b=b7jyXhEwVkrAWEXnOq2dLbC54EGfRs2UxjF7sNrNpBEI7ymMSMzceUJc2rG6egwR4yqp7OuXQ96BaLKoML6gQ19ucdJeMDSBNDkabf3aH076LhnQZ6tElBGxNcrQM7n6kWkhDVGuOfVJD0zOtAWeY7qqOKCr0zAhTK73gGA0xFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750700395; c=relaxed/simple;
	bh=8Zid2g8z8hovRsRyXgjbEUQaMr8z6t7VJO0zzHCZs8I=;
	h=To:Subject:From:Message-Id:Date; b=ow39vEZVAojKxw2UZej8pBOcvqwC/RoYeKVwjfjtLD532yVMJ8rp1EUqBWfPW+SPzMhspSSWmnCFWfepYu+bGB0qj25v54WbggdjB0aoBsKRNZkW6EYDm6EfmOkOmIsuLmMlZBeNdttIrKGytrbz9s5l7f1w+hKOD0o8msBBIAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYH7e/fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYH7e/fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A3C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750700393;
	bh=8Zid2g8z8hovRsRyXgjbEUQaMr8z6t7VJO0zzHCZs8I=;
	h=To:Subject:From:Date:From;
	b=WYH7e/fqcDsXAQ9VzIE/aL8tcEejqluVRl5jAibMm0VsoYqGGq4Cq13GQzCWCT4zY
	 Ji3dn/RQOUa7ikpS42hiOy8Op2lFKyMT64Xf1dd4VGEwt+SdQBZgm27lMu88INP2SZ
	 tUtp/Cj7pICYCJkp7OEQJWaX5cy6f4Y8TPvT8if5UwdcHz5ZTmfTM165WWEiol6ScS
	 05UfamnkqRh013eDfVu1+JiH7y3398AYBS33DaBYMwbkuaI6rSuRfIJNI5aHEBtLlb
	 YHU41tkHCCpM7k/ZVU5kUaRP+uh4tA8xketdPnwfLme5P9A5K0jJUacTaZ4zmHJv49
	 qeIjgncg0de0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E455C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070039357.27848.1945696972392313674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7327cce2b63806234af4871e42ba1a3e61a28b6d73febfd1dea700c97917780
Date: Mon, 23 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750700393
