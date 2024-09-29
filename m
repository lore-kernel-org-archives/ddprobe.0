Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C50679C2
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727573754; cv=none; b=T5Jfij7DL86PFoZORyJfSsWSA97myuc3B3afx2mMdkGgkuoTqub9pXBhfeYidU/0FqosoxVNoBjvOzXRenCSGMPFmHxRO/gvN8SB8vpesl80Vz2dfUDx5K4h+Rb8xP/H7wD0DGVPbqS4odCsc1Uxr2p230AL30/OouSbAOwsxto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727573754; c=relaxed/simple;
	bh=3bvU2fcXz4Ikj9Yzfn+A7qfGU8Pb0XEzORHnJQeCEqI=;
	h=To:Subject:From:Message-Id:Date; b=U0xzhdohfRZndwNr8lU0oGBi2Y4A8SajFaLC89vbmBFDfxBONCku36Dm2i/7b1a2Nq3uQBYTr8rpOlGulgbKBdRW5N5cGKWRaeLrS4KelMqOoxXL5ay9wXSSqbbO14/wjdC7vJCjfbSjVFBn6xFwyX/MsvxjK/5xl0XCjmqgRMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P576dJbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P576dJbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB90AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727573753;
	bh=3bvU2fcXz4Ikj9Yzfn+A7qfGU8Pb0XEzORHnJQeCEqI=;
	h=To:Subject:From:Date:From;
	b=P576dJbmggBWtPOcM25mpUYC4AtEFFruvcdhSIOiyfTm2yZR1Y6P5zeVpALg1ZPBr
	 XddQY5V4bvmCj/1At7j3RcM7nS3Vz+LYGEoYLPK4g6q87F/ZoFGxzJBJYmZ7GlCA8q
	 B0d7RdN09Dry83PtZGpvDA8UGtZzdIwvZ3FcmtAMRiB7akbOiPX56uEPdx50jl7aPb
	 e6Uro/Vpw5+2UrPindP0hjesLVw89d9eU80n9mVBjzc1pE4tMTCXQRKvtmSDYPWsmT
	 SImG/xrpEgjEEEoMryfsE97pmWKgZHOeGCe+LqwSeCmQL9gknH2blDjpiuo/qMwJb/
	 MCkYtCExVJm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698ECF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757375359.537.15749023793495252300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b865da35a1a4e88c9e16efcfb9ca3c3f169658d44e248a2b24f496e1a6750ff
Date: Sun, 29 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727573753
