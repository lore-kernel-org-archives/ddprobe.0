Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0432F22
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746337194; cv=none; b=XfipwVKc9znQYPPqak9pW4voxyz2lOFnNQ4koYTZx0HqAMjRKVNQugbgxuk07bobkLp4XwZH2IwCePWDjgD8Qx7xI6+cUB1S16F65ACEuZAy9GSkPMfY0UXJdVcy3jUAfymCrqN94rMLcFmPkz0OUnOyKdAoXQ1tPuFDSxQl+Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746337194; c=relaxed/simple;
	bh=C7X2/96Ci8wPrVs6DkIcepc2MupnqzL+dCigubABdG4=;
	h=To:Subject:From:Message-Id:Date; b=W98SxIT4lWVuURm7B2jeC3mnBidJLczREDA3q7KM2VwbJcwYbWD6REfCqT+VySYAL3nPSLHYZ9wmecSEbKSPtx/g4nq8qWIwTYwGCzmSBAxlawohz4st5barh4ayHlapwEZY9kl/kxK2lmB1ux5ljPITQwdLgr5RsP9uih5DEuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocTvjOnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocTvjOnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9EC4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746337193;
	bh=C7X2/96Ci8wPrVs6DkIcepc2MupnqzL+dCigubABdG4=;
	h=To:Subject:From:Date:From;
	b=ocTvjOnT/n09Y/AGiagKEvCAf6NQs/RFDTLIKp1rBnoDh88gcGbKd3PKiX4qmKfuf
	 8BObVqwXj4sxmLndsrJGBHKms5TLwRMTIGoixecAHHfmvc0v5pbXc69KSov1kpuK3T
	 z610p5yQGMyPz1Ila4V3pX0RMsozqytcToe50hPLMH39IRzx8IvyfEGrTQuKx/+qP8
	 MecDn1+//+7bM/ZiBbXR+RNl/2qd0k0QQwEIPyY0/Viue9GKnLM6F9t2TwLrGoOdc7
	 wr9Jq5NqQVkSPW+Krub0xJ/h1pAUKDz0rlgJhZ5XujZ+7c+KXQ5I5wJoyzHTabRVMn
	 G0rCKdz19fX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2FC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633719358.16718.1594350492575302290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd739de4f06cc5a3657ba52ea2e3d5289d148a82ce962fad6e719ee35b0a8fa
Date: Sun, 04 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746337193
