Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C0E126C02
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768656834; cv=none; b=eovf2ejZReJd7cRW17bGZGn5RnjHkf4vl58wBMmroszRAYvSZfc2IPKmdkiDmNlq/laD3zGUncMfjN3sf+roOAisibymrr6mSMG1dDpT8FcnvFh3dpHdVooyqJpkKw7JHZ4UvwdB/n5Vi4xhyw7KGrxxuWIhwg/+L4u07btyBBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768656834; c=relaxed/simple;
	bh=PFLFaT4YGOyYLmi5wWdgHx3VR8rD3/bv+Wq0FXf22/0=;
	h=To:Subject:From:Message-Id:Date; b=N3gkVMNmocA0sDJm7Cq32nwetCBuqXhOqEK97kGEgqNb9eldLsJQ0VpTKA47nGiwNH0e0KCFSBWW7EV3qte1JJOQ8qLaE6u4TL9j9tlQLOR0665rD+RbkqJHkZUiZSgrQX3jX6UmqRTjFMvmISkHQ12gBF1kFslyNinCSUnR1Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFQsAwas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFQsAwas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B4EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768656833;
	bh=PFLFaT4YGOyYLmi5wWdgHx3VR8rD3/bv+Wq0FXf22/0=;
	h=To:Subject:From:Date:From;
	b=tFQsAwasPoAP9wsCvYPtn8OCHn0GBFm6SNhNCP8VFfE8tuoOI7siRFKE7lhnmsKju
	 zV8i3Hr8hZtHmlEKpGTym0D1Jug9GMI89wZLCxpPN04TVfR7BOGhposGRPHerUYp+r
	 FrnQRPr6g64pnTnMHjTFhPtpFL8exlcu/JhrByMLdGVyn8KXohAzGweH8p+Y4hwHRQ
	 uITgaLScowl/u2mZInXM3kfOuwfN+IT14GsmRJTZR3m9nM2Ddy9kAi02ERg/xs8XsS
	 6h/t6VAl9WNWeN0ZhFTObniD6XgItuTU1rgZSSjW/IB/WqwbGuB15toiDqr+DhVAhK
	 86nwVmu3aC+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C16C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865683358.14217.20849817896923905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631574a4a8ff3964666ace2e10625267dab808b61c2d2442563597a488a4dae7
Date: Sat, 17 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768656833
