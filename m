Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3442EBBAA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766204034; cv=none; b=KMw8iLm5JzxxqrprOMgT5Z4zL0Oz8FjMn2SwMr5CCXJw7Phpv9/Phl1cU7ZiwQprEvx9/vpVHiIOcfgHnZ8s629yKmW0hwR3DyWXEprJBF4npMKlY6KMKgybO7GCErIvaqCogByScCIhb7hLpvbEF4O5cMHZd667ub15IrzSymY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766204034; c=relaxed/simple;
	bh=JBrcGhvPe1zlHm/AgHu0W52vrvBJJI66YQ9XR0NC9gI=;
	h=To:Subject:From:Message-Id:Date; b=hXnME+CXYJNA4+K5yUPbqFsxHIPZ3cDFWizQPGnCisCePuJQ/2UllUWxz0pG+UpPO+NTjVr9oN8riCaiYLIyvrjlj+ywHd17u+x6Zsyat4NXQyLZ3WPdP78XG67lfmqlqcixA3eW0Ts2xZgNwSFxYBj3cn7Sprlza1MGqMefvDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diwwHJqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diwwHJqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3734C116D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766204033;
	bh=JBrcGhvPe1zlHm/AgHu0W52vrvBJJI66YQ9XR0NC9gI=;
	h=To:Subject:From:Date:From;
	b=diwwHJqfGa+5Zs5haI9LRqRnHLlJ5CKQPt3y+/5/Pwa7EQd7ccXzzTx5jyUJZoHck
	 upgwKLYrzq/7LShVAci0UPLfcGDl15rtHTvrJXPNdSFW+npZoeYldJEnX4l6CoePFu
	 mMXiYtNd/MaM+yxnWKvyqXBIf2xAAmeTUswNlmxaHLt8lEhN9CFdTzbyLBa7cOnAYj
	 ByNFJg7gT1WDHWZm4WwMEhl0QtF6qPb16SGmYuYsJo1kFZ7aMBt7nI/nDhpZsuMtMd
	 NZByZL7d1zxCay+J5YHeZFHVgRFfLzEICgncg+oAN0QuMWew0USmT+ySpz7yQLInDG
	 J9CNvEX+hf3BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1DE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620403359.22075.8790155641204149429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993c220ace4b5609f68a1e5222e8f207798164b09e8b6e30c525d66f0733922b
Date: Sat, 20 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766204033
