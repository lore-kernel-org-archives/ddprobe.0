Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0AA15442A
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753930794; cv=none; b=XspEQkxrsb0TKoBye4yqtDSZugU4QXJWK0/l2ngClia4kHR7bCdhfAY9cZpec7wQp8ZuHRME/ETQrVYURxJ8Ll2+d4EvQccQIWex6IssD57uOSvN8TK67kcl46zQC6Ow4jmmrRlqlrc8yNy7/lnFOw9n7gYvzitNpqa+PLXSmaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753930794; c=relaxed/simple;
	bh=R9JZy7vezkrekO8ymVLQGPxyJ5uKVMzv52WCNAOxWVE=;
	h=To:Subject:From:Message-Id:Date; b=IqNQJWmhpDaSrzhiQQwLeITxUUqoASXRfyo+pQPi5VciPHyDO+t8p7TtJyNfUGWDzmR/YwI2fSl0uWzUjR+gkotBgC+icvsxZM43mbax2jjyGCTy4yfEwBarwQKPel55RR8DzSdTP4z0s8PncRiZiq/xiA6E6d67WH4kZ0UpcjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmdyIE8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmdyIE8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753930794;
	bh=R9JZy7vezkrekO8ymVLQGPxyJ5uKVMzv52WCNAOxWVE=;
	h=To:Subject:From:Date:From;
	b=lmdyIE8OV9RFfbQz7evCOXV405dG1wyospCUg/rPikVvDwA3Ale0Q/7cFkZ7BeFoO
	 bBritEoSonKzv1fQgc8yEmwg9qXnYE2gfKTcbO7MuBGQVwKvxFTbYDzTsz2MZDQXnh
	 E7vFi/ojDLGTXDN3co3jfqU4Nb0nM68GNWOU2rvIccOSbz9SXZDEI/iFiu44iCqcgL
	 iqiFLFKiSvQjKaNE3ldLSa8iibXIp9dLEloMkGx8pK0s85gFtLEeDrOX9+coM1QhGs
	 JxyI1mRRBI5dLHj1NQ28G49UDCjUVMEPBf507lyjJc/hU4t+I/ylVZ51MfC8jk+Xwn
	 8Unrjy2y4vkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E230C87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393079357.5282.345256917087256273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c67823dfca797753581b60f52ae1477075ccdafdfee9d879e742cd0883840e
Date: Thu, 31 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753930793
