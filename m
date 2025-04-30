Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451F12750EE
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746035996; cv=none; b=pHjJVNBXf6MkifEt9oXXknM0jtKlczTaMBHL410yVn/7L2mrrGh2snEwQ5aXgEnigUjxnZQ/spZwuHW5Y2U3+xHhGB/ux4/hbBO0aZ8x1aNgu88/Mb7JVlgbDrVt+KrgrLPOAqaWKx0bakNAmpth4sKyl3BadbxsU0UAj+t+Wec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746035996; c=relaxed/simple;
	bh=Vhtw8J45KtVjswdmBXGHswfiV2VXjUQ+ryKafLXzZ58=;
	h=To:Subject:From:Message-Id:Date; b=D0BW+Q5hR7vIFe3U15776DqLV7H44N9O7hGMfYx0JZcZQADW7WljC56mLTLbh3+NQIoK1sv7oAp9CJBN2hSqdBQO49GzLuvY9ALqsaZgbR+x/fXu8xuSamvwKPGanToUGG3GW/0rhr1vyrZ4tIsp5KwKK66HlJvbV0kLZbCdJvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqhCOLsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqhCOLsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746035993;
	bh=Vhtw8J45KtVjswdmBXGHswfiV2VXjUQ+ryKafLXzZ58=;
	h=To:Subject:From:Date:From;
	b=KqhCOLsdf5LxpZ+8CdFHFZRxl8eCU793zr4qsirmikI5dxL2UnF3RF7pAodvfNRVv
	 001XF/+/L0KPJ2FfLOGlCWEEdmO+nYmbWYV3WyFaB2EfRHafLR3143hFczddTKL2lq
	 tSePCYZ3VkPkLX7eD3jjS7s0lUSebUmhYUoZs4P5bV0x1bLwW6oaKlcqa0zBiPle1e
	 n94uKWqOmXf1NN0tzlHPHJ8rbCk1GXig4KCHY5Q6hdnVmo6V0JQZrfix5eRdNfA8sM
	 Q3BEQgJi8SmXmwPXpE1BnWucCMq64EwopuvJmrCk3q2PVRQvMG6s+S42ZufmjiCuoD
	 2Qq3eaJOtwKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166BC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603599357.15594.16062310544410661819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da06e1a3871211f97d967309c31ea7842c1681ea1c9cb3ce56cf1217da43ffd
Date: Wed, 30 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746035993
