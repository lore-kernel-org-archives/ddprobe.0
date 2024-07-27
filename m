Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01C2C6BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722116754; cv=none; b=Nfz9moUWqid56pA92++JUq6vL5Jpw3X228GXT59SRl9nJtb2OFaeLm0pWhEzV2/SFnn6cupioopnFSG/AwUC1XgMVliXuNUdcS6A4mWVHlaKRUQsKwDDbhOe1s94H7VlYj9Peooo+oJSDHA+aeBTzE5cfUQ9Oq3YKPGkuKcStfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722116754; c=relaxed/simple;
	bh=KkdIdRJfwG458CogOiZjezf84Kn2mqS7EGsQ48ZSyao=;
	h=To:Subject:From:Message-Id:Date; b=Lt7jK9mCBlGSCguxIJcHnJ+eRA/z+hC5zieo7oacjkwyKcVwhad9B+KXc/y6PsmyYW46Tiq3nMWtIpGCnO+02IPilT/TvDoNBo4dEg9pGAChDjTv7WSGtzxwrIraxQSMQad7PI578N3/5GZvfUZezXrgrODjnwXZjFK9aYsQXpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SapRI84E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SapRI84E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A96C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722116753;
	bh=KkdIdRJfwG458CogOiZjezf84Kn2mqS7EGsQ48ZSyao=;
	h=To:Subject:From:Date:From;
	b=SapRI84E9qDEwOf4vcicON1f/Qg1BSSWl/tyeDFL8O7wKIDJJFoBDuyE/BYwinISp
	 PrkUocrPBs2rZebi099ByqgQ2tLcOvMtuR0xt/5ggRhk+RkiqOqf3FGuhSOeQaIBBC
	 Z7L7vQEs1gwUsbKgm5i/2VpcQmJq1y2lS2eXxqO1A1nHIfiwEV20YllgfV7Q8Tsl/x
	 rE03fQlv+Bo78CQ4K44eAB1pbEuul3ZSSZx8Q0uCahDqtWWehL7si2uniZb4G3mWnj
	 pbcmAr+1ukCzC8Av+MWZcTb/0emaStOAaU+RVAsyN/A6iZE9ILbnqLOkdVnDC6rhOb
	 CqK/rk88SFykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A49FC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211675359.31905.16700798141179769274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca27ac7118a9cd48abf12f7c38f4f89b1a763102632c9b7b9a99558c1bf50e19
Date: Sat, 27 Jul 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722116753
