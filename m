Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB6A1EF1D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727931954; cv=none; b=MTp5au3h9bH8vyRPAE37Xr70C2Xixa37eI3VPjnVi6N5m9HGecOEg/rBxDfXUSHk0q9SaSlbP+m4Yumy/DltpU5zQ/+Gr09bWsYRvVKQ9t6tnH4cE6kVKApyUEJoBZU1wtWXPyJShxKk7Z0xOJfbmR5Tg+9uVU34uUif/rOFO0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727931954; c=relaxed/simple;
	bh=c6derQFeeR4r1kDf/5rST5muZ0P2QN9QkcQryEm64EM=;
	h=To:Subject:From:Message-Id:Date; b=ctxZL3QOD0LwBlDGezlbyPWZ0IrqVJFAP3/6GlC281AbXcyc/mBmAS20ELExzYbZthZwq4Lr7FXMqdrNatMPIMvRkb+Q77Nu2VK8ZXj+B6TylAf4m0s03RfQ5ZaMQr/RIt3GV6ft47UlSg/pNZXeuplFSxi5/fY9jVQI59gRR1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsZ1MjbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsZ1MjbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D1FC4CECD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727931953;
	bh=c6derQFeeR4r1kDf/5rST5muZ0P2QN9QkcQryEm64EM=;
	h=To:Subject:From:Date:From;
	b=NsZ1MjbHgVSjzlILnOJQyyTRnNuFKOqrVABeQxSQYwev35ZJ7PkO7wDczeqTQ8SyT
	 Ntsmnj6lzri4R7tJqQ2XIicrmDxo2RV2qEAIkmGphTch0Naf5X9bze7b1sOmlFgxw4
	 2ezavU/+zqjS7brGxXpuNB/xs7Px3HWcx8/ms34M0SGRXM5V6KYirhEhfE2Sb3wFwG
	 fdmtKZw6IWxwJXNUy0Qvqv8bBo+hFtByIeM5CVxkZfaPlOUK5iQWH1uoaLFzHpYzwT
	 5Y6w2uGDHc0rraWSHrxqbsdR0qweeoruoYd/4vdkPQmOgFf3jQ6QQ8HHAEQ41CmtR2
	 81Ed4fZFy13Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E43FCF3191
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793195364.14918.1732051293608338121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cf6a342e4d1c394a60dffb10b31f476874e8d32073155edcf0efcd081fdea2
Date: Thu, 03 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727931953
