Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEE340628B
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778769034; cv=none; b=aStSpIRb8g50WkG2SWOmQNhHNgg8x4PZ26T13IV8zczDmTIl6GiMbFvP9LOEtKbF0q08d+M4XzlXFPJvOR57G+daqwtK4N7N2AfLIJ8UM7re6MQZ/dJcSMPoE9PpC+DMQXr0KbnwUY1J2pSbILHhaW9rCunhvanT/G2jNgYTFZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778769034; c=relaxed/simple;
	bh=p788+gY5jR5Z1vZlAJ9cwxQkF5z06y4DDhlXv0oM89Q=;
	h=To:Subject:From:Message-Id:Date; b=H6I8Wd1Xt0aY0to4m4FFv7WODcHNqICE60TNPVHiYL+QNqOhhPndBsptj6FdhOXFsUFGfDUNp5nfbXPPsKJfRtyoqECTrfaNF4O7rQc62ngyx5BfFTwdmjzO8lDLjYZEyEIDgfd86dT838OE2ALbqkJ9OYcAp/VTxYUQeSqdTTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjig9XLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjig9XLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE36C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778769033;
	bh=p788+gY5jR5Z1vZlAJ9cwxQkF5z06y4DDhlXv0oM89Q=;
	h=To:Subject:From:Date:From;
	b=Sjig9XLcCU2nkrC1ePViLaB+GXERmcyjiyMs9ZYatYllFxPf0egP+FSObDUxa1EKE
	 j1YxtaYu7WJlLLFc6Muka+wrxNNPKBoBUOSuXz873Frr+BtGg0PhTsEwGpBOrXslay
	 TRocj6ZsB4lkHbccMnszav6AzKXlnzpqmrSeYQIvM35LH4Nnd+9JZtHhK1wHmiIYEn
	 xO34vCL3H8Ptw01RkSTkBY2vPSVloEMZy6ASrxcoGIxxVuh114RQQ+szdBgtjXWa1L
	 8KZ5jIyZezeZMQ0YhvZrP2SApON4rLFoO5vUeZRh59shVoIJ6AFlZedRV0MjE+Fmkx
	 0c+LFpRfq/pfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC6CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876903369.3468.15447754470126277827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c8f14a3d95d7e95bb5381215a2a29ac39206ccafd130d05e24e0f86c5d7554
Date: Thu, 14 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778769033
