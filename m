Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7C1F0982
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746889794; cv=none; b=mPdo32LWSnca3HHafyiFziZtpRu02zgPUqpbotQH+Yg7nSnB+0OoJAfiU99mzpPpFbCD/lJAFmJtAE06OMH+fUMAEFrHGV9FMq8veiMxGNI6W6YZe+OCac33qSHGTpUi0jGknQenofX/R0jhmEP4r3R3CWbqBzDHzEztmBbQeAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746889794; c=relaxed/simple;
	bh=MRCT9RF7T74gYYQOQjbY2Al03ja+ZJvqQ6uwFTxNiIE=;
	h=To:Subject:From:Message-Id:Date; b=GGBQMDXZuj6TktyhvFAEgoHQE5FZo+CcW+T3FoyXIK9liVHnBNnUqAc4zvhAhWLEMrWhoI8W6KdJyBAaFyjykjbZ/rKCBK6U/ZKFoZ5K3K0qEpJwJXqyH+lioS0uiG4SVZ88KezWVvZQmdm/nQdHcsH7rLPpan3mulfnvG4juvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arIW7iZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arIW7iZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746889793;
	bh=MRCT9RF7T74gYYQOQjbY2Al03ja+ZJvqQ6uwFTxNiIE=;
	h=To:Subject:From:Date:From;
	b=arIW7iZfD2AoA1ByagP4xBMrCq2Cc9ydcO2D6LBKluTWU33yQVmfbxjDmc9uzTYO0
	 1w6iZYwWxDdUTyUZFyDIAopCCD4mENxa4KP9d7Slsi4M52cFolaSD/w+qyrd+/UQ+t
	 0vC4OuObff7ys1nLwsQ3AXnYHhBG/NRDuggLpGfVc4ZzVATqy72vW0W9vdArtWXj8/
	 iJ4SdjygKQap+W3RJRKUUMw0OezeCAP72seGyFwbhy4EX13LLtH60f/wEw/HZV4dF4
	 xKc4xshHMKz9rG/UaRs5Im319fahGG3l7xuDCNeOmyEpZZ4Ed3nTa1CHqtJN/529rr
	 x9QgAB1YtSoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE5C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688979357.1545.3915867485395634105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd15e5da5cbde67be6d7f8c05aa0c7325bda248ac1b206f8ff189e80644d997
Date: Sat, 10 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746889793
