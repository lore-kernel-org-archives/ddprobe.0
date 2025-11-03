Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC34127587C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762192793; cv=none; b=clYXV66DeN849aD5YOKe5hrB4xP6d3fGTX+x+tK2gbFOOWVZhMvnJC3pHI1DXZ0G6s8XmTytxzOHr2OE+1jgQ5RbXBZkL9uuFlIkdiovxRzoOjhnakxPriq2b2rqY80+KQHzXzxeo0MWxrJJQR2V4fuPvC2KLlVsOegYZBEVdX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762192793; c=relaxed/simple;
	bh=UQIoPnAzqhqq6p2RyQLgAJA7R1pq48KZYqWnIWfFzAc=;
	h=To:Subject:From:Message-Id:Date; b=DfbFnp0nGdZlbGoIH6BQYqBd2BTZclXdnBMhGQ4GlXjVRzOVI3NZAzdcQrnFZkU90ruVjD3GK2wmRHcBHUvcTSVZ7c1UrAwLtDs7ovhQXB9hoHOKG564WKRX7bk2cYqPNngeEclIbYEy8GJp/zzJzf+zCbNBA4Ov3PFswolyS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPQdgudO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPQdgudO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FBBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762192793;
	bh=UQIoPnAzqhqq6p2RyQLgAJA7R1pq48KZYqWnIWfFzAc=;
	h=To:Subject:From:Date:From;
	b=LPQdgudOMZUzgBVVx6+dd3KwMnpKlsKGiD3foHkW79nnVZr1NgGAKI6+sad0R6CTR
	 oqANoFdAhJoxMi5MHDQQG8ovn+kLJkGGImtOeIB/2/HXy4G97RNFU53G1dLzHhL2qv
	 8MtIlhGPlIWwTXyKxXP3DFQEh0kI9Oa32cVYvd3FlRmkQiS3B4gWelkdhpy+mGiPbz
	 jxNK0E7SjN90FiDBhZ8GnbGbDVvv0ZhGxsUEnJqpOVshh6Q3mgwHVimGVLCoggdqW+
	 Hk0nbk2wn+9WqwDa9IiClFhLxL7qlD5CZiboKomyXgYJ3RVdm5kO5oL0zk0ZOHmb53
	 FyMx0bdndXegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB3CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219279358.9070.16612121717784450307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaacf8282e96e24765fea23c8eca8eb8351fbd377900722b54381f2ddcf7ea2
Date: Mon, 03 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762192793
