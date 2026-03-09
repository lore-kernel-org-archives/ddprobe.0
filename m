Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CE8361664
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773048294; cv=none; b=TiR2e67cGQ9iPpWP7s6OsdPU8zArcliWm5Z0637ttEirId1ZozEZ5IxxAHjw+b5ZSeuqqwXGfMbTSCnt1Hzz6MxN+lyggI0Fjo4Q8+rwJJg/ZN/5/6BimmAEBwVQLsmTiSS3zfdPfCC5f45H2lXKOxxYZNDy2n2uU81ne/ai/t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773048294; c=relaxed/simple;
	bh=SkxxisBq0iW8XevjqGb3VFA0f8esnJJEyz+I2uZN1vo=;
	h=To:Subject:From:Message-Id:Date; b=cpl6xs8JXvMN/l42JTj2f5YEcKcHNS1dIeZzz5eI2xB8Rk/I8vEzsxiuXNlFdyXhrDyKF2ikEwcbEbj0QrFBQBCNWUUFdzqnNWTtAX2sVf5ApLeZsPV4h6rFwj18NRS0QP8miHy4Ua6j55/KeO3s4O1qouB7dA+n1aMT518x3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlC9nMO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlC9nMO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21DFC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773048293;
	bh=SkxxisBq0iW8XevjqGb3VFA0f8esnJJEyz+I2uZN1vo=;
	h=To:Subject:From:Date:From;
	b=KlC9nMO478pBrjoloYINSYbuBaaRzVWOZqfYTvIKZANzpbDwxC/0eCGH2D2fCial0
	 BY68CFEEEsuZoxCvkTf7LjuatRTPhKOKRrdxYGDXwbslPWgC1gDPcDsTPShx/EdY66
	 76NNnbA9X/+lpdFN5XPObdBUA+oJBVHgCh8nqj/VuvkyOR11a4G/VolZvIeEnvVJy1
	 T9c5LllbKw0Iop9hH8dQZ5r9b6otUPfWxBZr8rYbci/fBOwB8dm032TUyW3bafxq6c
	 ++og8LXj3IjGkEwnbQRASuSQxfRky/2c0sNo0HSaiSMk2F0Conqc/DYAgDFXCKpyD+
	 UrUUCECSakPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D3EFCD6E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304829358.4248.1459953445590181351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b445f04d4428909176535333ef5a323feab55f306b2742ccfa8f3bebc8e91d15
Date: Mon, 09 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773048293
