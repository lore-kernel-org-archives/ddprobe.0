Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224C155725
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752903594; cv=none; b=nYEUsAy4XgppTeI+WnYsX+mboCF8pcIHl5BMKRj/fiFY18GKVQqlMInDwn0qrxFOLoaO0feVW6sMHaOc6ABCxlE0yhbeybPtD7QO4Sj/bUwt09BcyV7Gp4QCTTyf4UBZ8P362GvRtj7Lhyt0D5WLRjMFvcUkLzniYRwlr8gRh2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752903594; c=relaxed/simple;
	bh=Ccj4l0Fm674xVtoO/lMGWOHTpzMadBECBvhoOjt8qj0=;
	h=To:Subject:From:Message-Id:Date; b=CPEeEUSIo6p3KnrQcHkUYSVsiacDFHC22ina62Q3qm1NkMwvtxlr+ABy7J4VD1/dXAGfEFrJUSs1U+rulitPdGow45e2rf87RPBwBoSf3m7ZkpPXyttyC6xblhAPF4l+EzFBIl3FuVnU+Ga8yaQu1YwUNUgkeJejfFbKbqiLcAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB0Ps0WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB0Ps0WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752903593;
	bh=Ccj4l0Fm674xVtoO/lMGWOHTpzMadBECBvhoOjt8qj0=;
	h=To:Subject:From:Date:From;
	b=SB0Ps0WI48Dx/bIZ1tQdKxdE0TkLCSTAaj5Jd16i2YMnT9R8cGYRL1XNIo0JsylU9
	 VIS3asPjThRNB4a6qM+BgyI9VAaRx+rZr9eb9m66YpKtWrPJPVsHnV7bFXxR14FZh4
	 wtOS2yBDDDlSkcB0v7G1TPqsknZR26MQ7LlZwQkhgY8nkT9v0ob0PUmXdZ3O2Bt58w
	 kIarfz1SokbjqRkzGYBAoyoyKyA9A66aNSXnU1NzcyLteMxJRk3/R2s1WEueKfW1Sx
	 fiGTFxZdWMDvokZwr0zQVBf/wRaOQOm6atj9YrE2A53/PkcyPo/W9r4Vbj5WkARMxR
	 Zl1cKZ21OH3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A61C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290359357.24757.5520630736451784436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9bd5dbd0fa6e512f6b14933c4e342ea397f0b70bb3d888caeddd7c0843f962
Date: Sat, 19 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752903593
