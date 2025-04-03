Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A6C199EB0
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743658794; cv=none; b=u7rhiYIQpMqfDxmuxBznz8c8FLXUnFlsx/4VWlEvI3K+QO91x27dYOSKuBIXbq4QQnAmrXh4Bu7QI8B2vvz+q7R3wNJAnnlnFhWetAM2BOrxcw827RmTuN++Voqxg7+8yGA/KF9zUImURsuzOHDzxba3BE1z8jaYkp3ZwTjyFaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743658794; c=relaxed/simple;
	bh=lOaDrz9qpuHUJUvCZCEha4P/m6T0nyufrcXWHG28QBs=;
	h=To:Subject:From:Message-Id:Date; b=eToydoLR/FRr/CpWSMm6hUUnDGNM35LWF5cFC4cMhtFgxst/IWUSLLy9DfIJrJKe1gdYrqBhtM/BqIfuRDL0UfIT7ZfR1Kc2jyaW6z5emFjVEyS+U4PI0eRN9e1+rSpera3SykzmP4grJ6RWzAbR/jnkIs9zkvNS/KZoHztlXRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtAOmPpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtAOmPpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743658793;
	bh=lOaDrz9qpuHUJUvCZCEha4P/m6T0nyufrcXWHG28QBs=;
	h=To:Subject:From:Date:From;
	b=JtAOmPpeb3lBbZW8pfDzGiz+7rbfD5X5hO8xPE7B6JLISECty3AhHihbOzBCwegG2
	 JmchNMdSo+UZdY3x9/8DA3I8doUQh2qsj0tbdXE+O2EOro9rbwXrWOt4uaENHyP9/v
	 YVh6YotRHYxBonz9hvvbJlPbmRAJBWHx4a34vjUoBCivIm33JjhLYtkIU9och+5kDR
	 1Q7iP+hd/cJCbbXPf43bT6nBVaRy7hBwi5t/cRIQg9fQAgigB/7P0oOXsyJhoyBEl1
	 0wm1YLDlf2izcO4rCNmU3DxxrPDAuEDHG2fhr3+jUBNi7NDk9sN5tOgRFZS9UGxt85
	 LeZhnw0yw9M0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BAC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365879358.18146.1314356204985608322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b86433a1c2218a969d13c62e40597ecd71241b29a24726b50dadce505edb15
Date: Thu, 03 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743658793
