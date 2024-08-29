Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3604B1B251F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724944554; cv=none; b=QmLUpn/fMVSMcvma0j/bVTsWn9BffnsObz93tXgbZ2cpOecgN5lgKAMozqF+6dM0N/0UpQGYmaPZcYJ6R7XBH8sYNxRf+aJrjziyNI4vVOHTZhQmeDjnJ2+RFEazDZVABOL71LtEy+AEcUfTc1equyIFGJu0cU96/QVcT+81QUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724944554; c=relaxed/simple;
	bh=8aJYeqomWJxaoTz4d2LQg8DdD1V4m0Lm3sKyX6rGvBw=;
	h=To:Subject:From:Message-Id:Date; b=M7C2bz//mqXbOhmmnX0/1v0aZum9KV5ItAfPoYTpApGscn8LdNWt0m5klB987X0G6VK4JNmu1aW192AogKVB8oq6gsMsJ6seexVP0Caqb68PC6SHzYIJu+b/4qoE2P2hlbQ3G87KwpumPKymIH05qqP4GxaCryQnK4lgnEjhQp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKE0WT9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKE0WT9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE57C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724944553;
	bh=8aJYeqomWJxaoTz4d2LQg8DdD1V4m0Lm3sKyX6rGvBw=;
	h=To:Subject:From:Date:From;
	b=PKE0WT9vkbf03Z5FgxFRVkef5YltZeZxE9w3n23GWJJQ59qKzHSaCoHtoi3BCrpAT
	 Ly3R+PpgT3AYQ7goO1WWFAC/tNGcN1hQILCU4k0zQ+zug0gIzKfa6Wm8Fc8BK95LoA
	 ST5BEpASzEm80Rq9E+ZU2aDxN74FSSjTpVZV6ZhDONJm1fVtcUR4dMAD78mHX8NDaa
	 7TbEz19G17X7OtN5WZnjJkQRu17FpZ//weDHcTKdTB5OpWNnUMYCrj/ADZnw2dZgMf
	 98bbx47XbQxcLqnb1Pu1huEbIAI+M7t47evG0JCqo8kA5KYOZSmbK8dl4gVYuvuUwU
	 Swmqu4UtrORHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A473C83F2D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172494455362.21031.12033510079828583427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e84ae2e07347d10ce2784af7a6134e1fddd621c1bdcc237e26440c5581a366
Date: Thu, 29 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724944553
