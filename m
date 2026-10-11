Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE96372EDB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791751834; cv=none; b=qEdgA77XBp8XuQqhZepIRQb5ArJj3dULm6j8nUn8HzUG2bQfweelg0kXVom7OE07TpanNSZMSCvGJ0D/jET5P+D8Uv5cMuzlTRmxctvAZhUyDalFUCgM6adtKkYYwTPqV1lr+Gqeakml3H38H8YrMbC5PdzPyiU/nakdDo4NPac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791751834; c=relaxed/simple;
	bh=pKn2QAi77wckIMUclJBQ5W0TSLd90H0A271GVL/XxCM=;
	h=To:Subject:From:Message-Id:Date; b=O6yEuMPtxMUaYuuCrZ95jZ9PAtX8yshQAp+bIxIgpMxFSgAgvWXQ4KVJPeZd3Szi1ILGQZhY/JXAirfvrTs2hsuHZaGv+Lhjwwolmr44knf6Y1CXoaCcK7VtAVmj1HlQxj9UU3qmGSjFYg8H+7mSrMStiKrldBuPGjhhhcZ6+so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqD7XpJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqD7XpJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3B2C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791751833;
	bh=pKn2QAi77wckIMUclJBQ5W0TSLd90H0A271GVL/XxCM=;
	h=To:Subject:From:Date:From;
	b=EqD7XpJCsz0MUxC80xki8FKQLElnTwif/AMSQT9tTLKFedoFmbXZFSzA8kpj7hGfz
	 2SO1Nh7E8pC6IEq12NT+pL4HIYhwsfmrvlXOqNNH7PwPyA4KLpkPJYhBp4l9P+vWoI
	 NJLL1R3Zfslx+yqRFjBcQGEdjD8R/nfB1Pe4k851zIKlaayYSSayEoeWademDEU5pR
	 0GTERvgo1Rw+d+cm/IVex7oh46LjfLXcZj6ibaiJrnpMNrgu7+AK+6UfOrCbwRdXJD
	 NRx8xrwkM/FVpDqT2mGhivmhRevcyJCVsqo+GjFe0jd3yucyh/uhhMLLPzJkHggQRj
	 qV+5RpAP+xpHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF17CA9ECC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175183369.31735.12494256057262515410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bea8b36ca864abaf30616a42fd2e86ebd2ce997de4e566f84b922f7f8e4fee
Date: Sun, 11 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791751833
