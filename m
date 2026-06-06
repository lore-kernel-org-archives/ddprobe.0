Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389B11FBEB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780706074; cv=none; b=lC8ra94FNmanY0qEuIFE2w1rGf8/697Z5jNzZoJydmguSdQEhj47Ac0Jkzic/b3Ft8cg/SlUE4Fudm8Uwf0LwRpoe1UtAaTGvZJ6xAyNL5KjOkQ2qdf4ZLY4SHT3SglPNElDrRVMdJwuKIIQi3A2l6dxTk6eCRtTchap7nQGyA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780706074; c=relaxed/simple;
	bh=ONiTgfA/ExsIjwdiSVFwSwO3przLipVN4kxDEMgzmVM=;
	h=To:Subject:From:Message-Id:Date; b=stZ4nFqPmdIR2DTBLRRafTh6xpOLBV97GqMthmg6qAVix+aHqvWzD4cvAyIz+pTrFCpHmTzgJ87Y3tJBF3eiqA4mLQWT3rekVpcm/iRVzxvzwGa2JNq5Mu0tCg/bySykBBDGVruIWlWQ8gRJHsaxWmB0ffH26RM66TjH1+Pl+nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBZ8U8bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBZ8U8bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0B9C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780706073;
	bh=ONiTgfA/ExsIjwdiSVFwSwO3przLipVN4kxDEMgzmVM=;
	h=To:Subject:From:Date:From;
	b=dBZ8U8bkjOUikfpiDIp5dO4m3h2OdvVnyIlzRYNpLPcVPGTXsRIiYgRaHYxky1vNu
	 4A6x/YXzBDoxA9tPnQREh+bxDWsT862nTbGddPIVuXMV3op2Xk+cgFlowu7U4hVtAw
	 47umB7uDHeQFMCB796dpmanDygnI/5XvS5gCBCt2qZNy0RrM8eyKFQP10qNrwUrSZp
	 Go7L6D87dpd6LbWFBZvAnthpg5XCMAexDi+sNGUhpYXNeeebbrLojrFiyrQNYG3ySM
	 jCfTqIiY1syuCHAVRnPCQ70ki15JwXli60XQgpwVE+QbaKIykVzNEeD7nMoCg6qWmK
	 lHSBt0quUC8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF0CD6E7D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070607368.25785.1736367858525105779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d038fd5f0bfa9126ecc4eb9b507f108bea28a4f59f9efe69200fb462b196aa
Date: Sat, 06 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780706073
