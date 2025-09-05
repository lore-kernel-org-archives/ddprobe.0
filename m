Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146591A23B6
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757036394; cv=none; b=Wyk0B+xDZh9GULUwF7Pi06czHfl0C7Mez5vqdtJDkWLHIv/k/ZK8fi6+qxecMuBaV2ODm9WC5Ari+zCSZ8joesbAIke/PXWWSX+dXtFOqurfojWt45h2MxFTojqLznPYroqNH7am3YgDi2nURnC+9HRiPk82ijdGcaz5HXMm4SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757036394; c=relaxed/simple;
	bh=hBFG+EYAcp2VZg9qpiNX1nMpQvSJ1qzistqWLFXKiAc=;
	h=To:Subject:From:Message-Id:Date; b=DH39qfgB3P/QeD4FAJ4i82P84+TjfWGaxZGGyvO9ktM87KuFtgguO0NimCWRYRWcR7/yzPpFr7XCu0BumCrOSqLlmzu38zN/iQYQuJJB7p4u35UGS6+SqzeXq8y6NysaHQ4CZVKGeX+DyK6UjpA+9cbhvejojA80mmsGHaFJR4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3iPuM9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3iPuM9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757036393;
	bh=hBFG+EYAcp2VZg9qpiNX1nMpQvSJ1qzistqWLFXKiAc=;
	h=To:Subject:From:Date:From;
	b=K3iPuM9FZ3MdgqWd4pwJ73QY67OrThh9vQbBRRvsj+BDtzj6wqDSRXf0nSmB3iNfk
	 xlJjluaRy3OlkQqw8BWOiD1JdKMhhmvtToEqHfp+M8bKCqG08CdkiXkJGxYFpt7RoK
	 hBmxmMC7AXGMoxxNn+uJcpvzvR6lEAbK45rXTKqkPZbHyuC9PyBejSFY0zltuwt7d0
	 j/5/fHycwUJSX/m+1VZKfRmLMUonfqupkmyUeXvgEWR1JPVMGLKiiVD1Fpk4oVa8bJ
	 6oLWUC5TGc52S2zQ97R2EOyMmIYeHMX4Wd8V1gcmy7ZdD2ic5P5eqaZAIW2Zg3qdNv
	 bmT/hXwxHHs6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC9CA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703639357.1829.12944764682021419799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfd8d72bc2cb18155b1b59cc37ecbfa6e2a93a563b4c6e98eba4ebc05c7b146
Date: Fri, 05 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757036393
