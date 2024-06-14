Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6135B1991B9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718369303; cv=none; b=O7pMBpgRipz8QcsjyXmQYXxFSPh84GcNLCkoJ3QSyCmjHCA/QSUGZzapXCtNx1u/wh2IyiFKn7M/mTATH/HqHcurpjfaecoocSC/f1Vj1Jc9wHzVR4wi1avfGQlFU6vLactKftsXDbpn0BmcKYnZwc2l1UPfEMUDpdDL3Bm/DS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718369303; c=relaxed/simple;
	bh=JRE5qiRV6pJkW2VbyaYB8HMHWaSlYalAwuKPL+DfVio=;
	h=To:Subject:From:Message-Id:Date; b=XSoeN6L8Et9vBsNaRHOY7ZZwM1VIzokKW9nzXt7JwIqC1Pq7yQYWoNOIO8hXoQZIpFr6Z1m1jt+MT43jbcQbyV+GJyB6qgdnyP1d3U0C9Nwm4KkW1D6jvZTsE/v0z5lvNI7Iv10I9GCy/YXG/OvAgUdtW3Ixfri3kzm0oxt1gew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehWx+rLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehWx+rLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F4C4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718369302;
	bh=JRE5qiRV6pJkW2VbyaYB8HMHWaSlYalAwuKPL+DfVio=;
	h=To:Subject:From:Date:From;
	b=ehWx+rLC5lqA829QZcenzVFKgdjDgokQwAZE1Se7MonoQXM7edmBYnND+eCD+3P4v
	 brKCpDZ6LgoMSQA8WzRxtVMM9mbBIbabqCoXjraBKPrxJDTHzWVJCoBZNTHD6w2kBD
	 dQEL5stogMtUXNJzkvjdrDgZHF+CNlCxudDM4cU/FukZH9mreshV38TtHD/hLpzW/j
	 qdW6ACNI4mwAv0D+8lQaXhdUxvJNHocL6Z01EZMrb699fgdfMPPVBJx/kfSFz9Jlw1
	 8QOK4gCrLC4QY/gyf6sKTg0FUZYBoLzOuyDANH75NkBTNPnqWVAoTwxNV1Hs9aCf/m
	 ZGBAmW7YW2TqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF9FC2BA12
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836930276.30976.15903316545179606283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134d1f3148b9055050a90bf3f8d038e4552f26df618a2739b722f4f541bfac7f
Date: Fri, 14 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718369302
