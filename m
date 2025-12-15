Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199BB32720D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765824174; cv=none; b=WSv55AvJRNnwL+k8NnS9igm/YJhQtNNRSXggKH/mAruElKbScqsZXki8axH30y54c+aIpylSss3cmV4eA7hyeX33LSFq+DcC1e8ksWa+diHKGNHn+jb4uf+6U2HrZNNzSLJrXxsgcw6sKV7MVXGqZsO0SX+pA94nHL4rxniWrTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765824174; c=relaxed/simple;
	bh=2YmangtKZSHRJcCJn9dDNV7jS6jQaTbe6EDsLZO/7Ks=;
	h=To:Subject:From:Message-Id:Date; b=KpEm8f3oe08OZXDAp7etCNwsYm1KL+qmUMxyRvyoJWlutU2dXlAuHmcVorjhQTJ3wnlm3CgQjNuFnVqjjmRQByy4tQfRiMOGpIEEGMATBMx2pq7egKciSVOARLO7dVxIsnW6tygXjcJnA/LivP+GzmMJbMM3moG9vr7m8bznd3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS8sU1KA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS8sU1KA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD5C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765824173;
	bh=2YmangtKZSHRJcCJn9dDNV7jS6jQaTbe6EDsLZO/7Ks=;
	h=To:Subject:From:Date:From;
	b=pS8sU1KAVYCLwNN4G04W/7h9cd79Mwe5GeB4XReVYR/Y6vKx3Bpd3YWUAVh2lVJZl
	 pce4uhBQ/zQIfNkQW+qByb4n7Ok/nE1zZlgG8vnEXIlhSu1ct3km5/jPqiYoEC5Ulv
	 r8YbUKSEQkTCzVKmggKYBKrghO770qgdS6sDYH4eWjlvmZAZJsph4NtQcUSCwPtlhZ
	 x9/ATxLfFAreooF4O+rLhq03rj+dlWusgfsRxMHzE7eVu6gAF2YiwUjea/iVPero/E
	 pCxU54UlsF1w7cRfFyaNhee9iB51LJkhz/rqhgulELMg2+tNkAX54XAoNrciytPuo0
	 buuLsEgkkf/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93759D5B866
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582417358.28321.3038786289919252906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d5bfb76967b387b45086fdeaf0653efdebfcd4858f24014d57864bea33ea6d
Date: Mon, 15 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765824173
