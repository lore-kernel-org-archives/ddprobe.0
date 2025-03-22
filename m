Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50771190052
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742680794; cv=none; b=C1aNeU7OIqHNYHl9SaQl/tbmkgch2DOml+rzLNlmbNa+uKdVsS5KMSmA5YNEfh7Qf7NBjdZKAj5qs55CktqEDJGQyrVJhYh8P/vLFHgyTxtU43oJVEL+ZqcbK4iLc7kp1G7g7JfKsffo+p4MVHlxbNxAgP7jequFDDGJ3LHFLKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742680794; c=relaxed/simple;
	bh=L2BwwVnumoCZFVJzhpRvXhm9s8KXRH4JYLCGc5gmqPQ=;
	h=To:Subject:From:Message-Id:Date; b=cHBxi2AF8N92A8umupHF4ivJUYUFUBoFOp6OQg5iVZtenX1/WcgEHHoAQX8O82VHGVEkZQ/SE4LS/gg22wVqDxkiJ/lIfz6yPitmMcImcdXg3D+ToVc5Q2gwUFYHsuUe9lAiBFpF6AguZmJGBcefSILC/K4zLJJq8iqMZCk6cEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+rsPzum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+rsPzum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8CEC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742680793;
	bh=L2BwwVnumoCZFVJzhpRvXhm9s8KXRH4JYLCGc5gmqPQ=;
	h=To:Subject:From:Date:From;
	b=g+rsPzumpxN5VrMUQg3eh+z+zfJBowS+IhghFnUFJqCkQBxE6fOl7eq1D0ZyG9AhO
	 LPMBVBlFNjdM8kP1f57qt+79eNFQ80Z7IEd6WN9sac60QomyubAhKPtkrOUj2A35jz
	 k8NNg3dDqPCRL9DgtKoN0wFjQ0bcj7nTGKJAHOz0e/iToteDawu9FWc+OGjH4fMe0H
	 ngNEM6Im/urJmFSOcKj/Ilmb0YzL9j2wJ4I6ozALD5svQgHdLadPhP69VkTDFKNCHe
	 6a4E2vBXKZkemwrH9ulZmTFpWzbPq2e3fhCvXgpRddN4CCfTsBd1ziVarKvpC/9jGt
	 Oo73oyqEUTRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97369C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268079360.19584.15728049085783432394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b13ee288b1e9d39ccb322b80d71960c74f3d7db3e2b87a251e7a80d883421e8
Date: Sat, 22 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742680793
