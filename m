Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E8E3603FE
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773263694; cv=none; b=CmT3yU26cRpM729vOIIignTPJl2lNoN5O1S7aUY01B76doxTpBxcsiR4mt6AaE5BNFEtLYnfVE14LKYVyJhkH4curLfYMQljXSmmxI/xbJJnikPYDVWfLzbJOnnafiNyCqFilHRBHas+c+axQvC9n9w0K3H6BisknvubzQyWy1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773263694; c=relaxed/simple;
	bh=gQKLWUt6qOI2ECXIB+ub8AU80/tKbBz38PTkp4HCmUw=;
	h=To:Subject:From:Message-Id:Date; b=KjWOOdt+Uy8cCBC2QdPbQAGvANM+rUdeXTzyEoWEuOYOW4zXcbpFdFH0bEEcZcUmZTAeCpcNHs9fo2eDfgErWyuxEWHKFKMLwM2ie7d77hinoiVB8IfON8pH6430VgD/5QpmAxHpThLxUkJEnv34MGgf/Kmj52zzJVao32EaFd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Im5ewbKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Im5ewbKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2623C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773263693;
	bh=gQKLWUt6qOI2ECXIB+ub8AU80/tKbBz38PTkp4HCmUw=;
	h=To:Subject:From:Date:From;
	b=Im5ewbKcea0pz5dqJRW8vaUkQxSRieO16qsTr5CdqkBs3KhRqpgK1Yikedt4VLbmR
	 N2lT7dw1JgbEISBOe0ejgeAFCBvUYTiu7n9lqww31I/IWdtqkQPbQFIVtjQ/daj+uv
	 /qAdW5m7YxgKMa8bOm/YpftAh+IS/m0q7QFcfAotHBNCzNNcQVCCw0XJjvi4ZjkaJg
	 sFHaqXd2l1C1HoroHCiguW3NFSwsMi/ozvL8m0IxH6HhXwRCny3aWb62M+dXaXrYDu
	 FAHw5DICA8QPQ75K63UIPkrtcxSNaAy0b+kKh1B8akoBNRW7aeWhNWPh+qVs0xXThi
	 SAgnGbFqwM6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D22D103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326369363.2482.3081289759064833970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5ad62ac35513cf419d9dc6ec62a100e1e7ed7896ce66f707dc346aa3bc490f
Date: Wed, 11 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773263693
