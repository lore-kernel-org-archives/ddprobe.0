Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447EB2BD022
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783237114; cv=none; b=b4i0QsKP9rXyf70cezNhPj42f4baHauJc6HYKUrkLXcgCwBBUELM3xl1JVCnUvyJYvEAHPt9Myqb/JEacholapDuXi869RvwZ/geQPVuW+3oTqUWLyhshdisY3WKZlbHH73wzjfWKSKcV+8VUWiYLKahMcjUy4iezQjTg5XG2Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783237114; c=relaxed/simple;
	bh=cDpY+RBhOwLm8OGALghgxGdZk7oNEn8jDMj4BUWIxIw=;
	h=To:Subject:From:Message-Id:Date; b=QaljBV0l4dM458cS3zvLLYIVYlPIv97NE9tsZRVHklxcsFYBS+dl3f+8rZUCmYg2V57YdjHYSBKO+qJxNH6CYLw50/EAYpM2f4X2uHdaDb+C3vvx2F0OARpMTHVONjlycKa/xEH1OR1/ZGSmCW0G5sUbWK1WxaZMtszzyVIZD5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDTYll7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDTYll7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC26C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783237113;
	bh=cDpY+RBhOwLm8OGALghgxGdZk7oNEn8jDMj4BUWIxIw=;
	h=To:Subject:From:Date:From;
	b=iDTYll7ypXs93dtqO4/wr7rNy7FEJCisAyj9fSaQPUrkujH8p7St78vPk/FfMJgF0
	 yedfsTX/kkVloMrdcDyczKKI/JrdZ+tGRL2dom6t1avwV1LZnw2m5z09B4GqfydtB1
	 BuQBXuJBJBJlZz5gugcLHX9/BHW8Ex9wG1+7/2Th6/xjdBgbznBMnDVJJb8c8uD+dq
	 Ps8yIv8ANvxPjp3qWVlcYMinOpIFJVRdzCPTq9hD/msuR9Ws4hjr0ca0K3UpZbvck6
	 tMuLCvx8KWUlp9AitwunDv/Pu4fhWgGnRjW5U5aCSxFyQ21T6SEOxaazyR7HB7M/RK
	 KdWLXxatfzzPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC6DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323711368.23190.16876346029893008171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ee3e8f552512ab4b218c63498f6a172a31eb9f50cfc64877561aeca6854941
Date: Sun, 05 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783237113
