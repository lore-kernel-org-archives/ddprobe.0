Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72BF2F0690
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756475393; cv=none; b=kSBYb8KUTgKi502BxxgLSRE284hbzXk19s0NhR1mUZEme1L7WT6vuwPtdhTmQMHt6ZmuJffNrSTwNUl6TcNn48XFZRqABXm5kWnsD6soHdNGezOcbvfo4QhJu7S3hqlwODVEBzfLmY4bbZA0pGiH4oilHa9Go6C3sQzdDyteh5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756475393; c=relaxed/simple;
	bh=aRqQn4DPPXxfNEpBr4wZ75pPRXgXcFVSHtyvdmGUm2M=;
	h=To:Subject:From:Message-Id:Date; b=AJO8me8BVv5bmakIBBu7P+GaXUe3k3S3luk4SLTd/l1bHWAH8JAjQCIXkO62e25KB1N+xBi3xaU7WmQY4qcdKT+kKHBCOCUli6YLPFpX445F/HNfoaynnWGhvuGHnBPq+O2D4K2nU76haWZHAVpmRrRdy78FV24Cg1Z9BWz97Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbeBIB3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbeBIB3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A571EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756475393;
	bh=aRqQn4DPPXxfNEpBr4wZ75pPRXgXcFVSHtyvdmGUm2M=;
	h=To:Subject:From:Date:From;
	b=lbeBIB3mv0mhA9+8/ZhU0GZ7F3sjHc+cjJ2RzapdozjA2ldcRtCjyvmWoKOgX3uSz
	 pNB9khFiVvckpfSJFNALsjmfBg7gWmjcEmXyLbZhLP82YmQCgj9BRtyxvBKPPeGGS3
	 Ori6JshPxKP/vkIRH6iuCZIWII6Zf91qynD6jmqaJUnjNQ9eALEz3LyrvB58niSs4y
	 TzCPT2rVGZ49PPe31MPCQn/GJfVdZL9k8+1c3J2qKgsqZuJbs3zbK7a+CPldOtD2DZ
	 rMzXmnLs2nGVb5ZjmTbwomA4wHCDwbmsNN9SOeRGGxT9OU1xNsbBauIGn3/EHwbDzk
	 hIQsmtG4ot2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C0CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647539357.19346.8183707401284325918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02736841df9a068a0b5f49d0112df75685fa98daaea02fe6699665df7638d1c6
Date: Fri, 29 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756475393
