Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5160F20D4E9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786587034; cv=none; b=KUjxEiHdWKqXh2iBXPqfQr4bRRHktTlz2L9yLRyYkWdi/Q2ozYnVSQ+ArkhADtpyV8gu+0QdB7RHRNzz1xzpTnyawzYPH9jLcn8U5+Evoxu6/DGiCVrje0FZUAD9i5y2VwpS3m2Tcbb5rz2y2NvLBxyuB31sC4Ap0KS8WRVyEvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786587034; c=relaxed/simple;
	bh=YkSH70Qp2sn1oP5ZER4Z1IAIbwaD3UZxKpkDgnc+ro0=;
	h=To:Subject:From:Message-Id:Date; b=mraf4PI1CcLXqdHV1zwqeHqDXv+1QPZy+hYh0isxUZ9SxnErEEJwvb7T055NP4GawUIuyAIYCUzrbXfhY37jllKtzLkH2RBeFSZoqMKsRxvT4ZkZ/0EwEunE9H06CNsLMVQAopFaPsm1etp3tJ+5zhIpWFWYYw71t5aKq7btGu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4SrXZHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4SrXZHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D405EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786587033;
	bh=YkSH70Qp2sn1oP5ZER4Z1IAIbwaD3UZxKpkDgnc+ro0=;
	h=To:Subject:From:Date:From;
	b=G4SrXZHW63BIw/3D2FjRfoOdERpwGqeMXGdgHchVVW8uOHvJOSY95HOtdYGZrqQv/
	 eljrH2CQ8eKoObv5csDUBt0hfOrrLtXx4FvQVGDtva+Yya10xcrEJY15u7r1g0sdSy
	 xnS+O9Fb6d+bZydPk+t69AIucrqxsH4lmze5Jae+9S7T0Okwd0FtaAM1Lp6Q4LCzr7
	 4pG8MkLPh/OCBId77tKeQxOTqrNrKU2Uo/jgwqfJfS0/vsD8PdQW6mSB5bj9KFT5O4
	 qoE1JgQoAIg3RXbORzJCfVWp2uw/iLxOpWwuWBeIxEyZr5/olH0a2WxMW2aP35cj9c
	 t+vbn8AEZ8UFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD877C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658703367.26737.7591440735768581927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86ee2d760b5e077fec78cf900dc9078ad927a57f67917f6240e2310fa8a4b54
Date: Thu, 13 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786587033
