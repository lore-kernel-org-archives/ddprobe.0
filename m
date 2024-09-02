Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165DCA47
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725237954; cv=none; b=Dgmp5H/Jgr8zswKEyAM3j8TSLt7umx01HQ0rfGIMBSVwOymElaOcx0TY2vX9zarPqNFQgKuVrmaHR98UO2aBuMcEiQFPovQUTuYkksGiFccTqutyw5pk9m2EBBnd7yIllZNW3Jp6Iq5hKow0qhlOHpOY2ehO3XAs70tAvw9jwJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725237954; c=relaxed/simple;
	bh=qMnVK9GZk6TIxs49LR1oDHeYJ+cJPIDV8+EqXnmg/9Y=;
	h=To:Subject:From:Message-Id:Date; b=Dsvg/WJ5Ed69jgBWYs9/EYm9toCZIKtzX5PXr3v2AUeUEcJ+ov6+qKMup3EPR738blJaW2C2kh9nN3nz8AtKYooaVdNmkqbEDxWnKRja+c2THzDt6lwAsKhOt2dZQ4mQmqLTlrlVH05NzrXZ9FYWB7sRVwcDjJx5jv0+XyTE2co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdjcnU6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdjcnU6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A194DC4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725237953;
	bh=qMnVK9GZk6TIxs49LR1oDHeYJ+cJPIDV8+EqXnmg/9Y=;
	h=To:Subject:From:Date:From;
	b=mdjcnU6fphi2XZjbCCueh3RocunJnCAt+JRDkdHtRNnOh23sEUPRiLWKxsPuvvqhE
	 abxFZd7RzcPJMNQAX3AjxHm/wEtE4+/ZCJc2cndXpR4HXNzopKdLBHFEuCv/dN0cp4
	 d5EPbWLy2cnbiCF4G7RantaXzqzGO94J7hAhk34y94p3gjZYOmtLsTcACQWy4Xfvpn
	 +FOWmfBONjJz3PnI/ilC67UVEV/N0GT5JLC1fVZF9wSznW8e5gp1PQt/7naYFLiaf+
	 rtjH9Q05sn8Qlwr4Ifd9iprtPJU/bLN4Oad9YRMOa4lj60Edo188uqdPs3Vy5lWpbe
	 ie32PmCF2kjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FEC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523795358.23299.1044538368558964371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdc2fa9f1d91ac2172d84ae78587df179701f475cdd68d7b19cab7f7c7ac9ba
Date: Mon, 02 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725237953
