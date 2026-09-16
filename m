Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4F427FB0
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789597835; cv=none; b=DPm/ijEuQD3lkKOwWOsXTNz1YxFgOG1xYVrUsGirdfxogi6ABIDii5uHoFkEnIQdPLJtz34DLygTHXa8Wirg7gcEJDo4gPc+bgT7M/r734+M975cgEs/xu8zAWdYw0Kc1qefcQPf7LOafoQr4991wYd3BWhRKo+HuFkErzsPxwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789597835; c=relaxed/simple;
	bh=aAnQFB2kBU6WGr2ixOKL3AHkqdABqDr+PDyacINXZB8=;
	h=To:Subject:From:Message-Id:Date; b=qn+iDzQturAML8yZu+7zo7OKqTsdQj5dJTTY61Jqcs4p1WU2EWYnG966kIH7T0k28geQcwB2pVSfzecKmEoc3pkBFwVDEs9Qk+QgtNR0RnAERewTXM9Ku0TxkxiA2ZB1YH6DNC4MsfgobRn2PCtg4GwweATglAIQgK7AczcdJzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMrmApiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMrmApiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DCBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789597833;
	bh=aAnQFB2kBU6WGr2ixOKL3AHkqdABqDr+PDyacINXZB8=;
	h=To:Subject:From:Date:From;
	b=FMrmApiVCbHZa9nf2UYa7zu2ga/Y80hcYxdoR3h99QSnbYehjR4PJer+lRzMdkCmA
	 l8r3FMg3VQu3QVzX0DjZMZYxvsmlCbQC6ZmSzbBVLiQ2G2GbetETfTvqeJCm2GUc6G
	 agk+eBZrboye1z5TDaTMm30cRDCjbrqqgZgX4eR96EssHxiNd1OozVihD6QxCBJSVO
	 kn1wkoQD2PVXrrtWIc+WzvgT09FPg1Jv1tMtH9zXP7B2I2sDp/hDKDJsvW/jA8ccIs
	 zIQmTUC3lfbvsB0v143a5EIMzIKC9RNTwelBuRZ2t2CEKvNKjmIjvs6JHo7vz2/Tpq
	 tXkpZ69Ucy1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3217C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959783369.13999.1507287798137231295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41442b9ac09965351ce6b902e5270000b792525f09d0814aca4a80ef8a6e9f00
Date: Wed, 16 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789597833
