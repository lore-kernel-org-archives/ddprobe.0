Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF0246BD5
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764142374; cv=none; b=DDI3C0zvLEgXADt/coe9/m5d+Bli6BaP0w5yE/52bgUb1HKowlCPNwldNIar15/WbtKsWe5GKQNWT7xY03jc0VlEE4Y7pPEO4K2OLRXMqPI16oYBGGrhMdLgLhRgLyL40luePNEHgNjyq63EXRMJS+QdzH4mKVVmq0gFxVZi5PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764142374; c=relaxed/simple;
	bh=qVQGdMTzYeY01dinFzG85ZpUxaMFtm+AK4zYoagrSWc=;
	h=To:Subject:From:Message-Id:Date; b=k+sEjIWPUg89LxsMxFF2EZxIkG07EUhb5YkdhjJmj49p4afW+rG1hyGvbVvV3PKBK6O6FCNK3ZSRC+aWW1LqllrT7uwc2vpP8FAlNMw+7MG4ZGugBsnFnFOvZ+g+oo9RtHvPBtKQoM0mNaCIvGJJWp7VJCVAWUCrbpwWARoxrnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRPfPq+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRPfPq+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9363C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764142373;
	bh=qVQGdMTzYeY01dinFzG85ZpUxaMFtm+AK4zYoagrSWc=;
	h=To:Subject:From:Date:From;
	b=BRPfPq+i7QyJ9WRMwP5bYOPau7XeIp1VWby3yZ5t7f/ZPWAoOnjsBPenJtgBN+q52
	 XJH5FlBaXJiSDxqOdWCnzWzW5Vskminnm/eWUEtJsgWzxoOYkDTg1C21o9UfOyRWoW
	 lpK7K5EsqGRiR0JtXvU5LaCX3OfoFWfG77rQ9lIukJNBIFT8D3ZKaiQqNGJo7lXgV4
	 4Pb4gkHLBPxqPyOlxRagm4yA/i41rTREecvtvpAEb5G4rS+Uk+58NvOqRahgp/x2Ss
	 W0uD9l+tfJSuohwWjecoT2WLLSEgKnf3hhd5OtLCKHxdJ1fdu3UtyUElQPQOA7rQH4
	 ctimim9foe3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DCD10389
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414237359.15777.9928396410625083677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34309f15e233ebc132a4060d7dcdf57b93a53427e71217258b7b6d85dce4624
Date: Wed, 26 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764142373
