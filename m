Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152EB33987
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770516834; cv=none; b=o2ar4BGFneXI8zGXa3+jjdq2UolFf3TSJ1cztTBnG+x8Cen0/c1MIODrIplAU/lEDVeSnKbcCFOjpO+yuZ/kv84++JiVrPZ2rNI2vN6qZpm6N6bjeBQSrDSXBPWUy3v/ff1rSWYhVLzVsyZsfYWEfAsGsr7u2AfNEKL1bd9QFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770516834; c=relaxed/simple;
	bh=24xDkE5Rtbq3s3u2epRbojIk1ubNirLAx+kJemBHzXY=;
	h=To:Subject:From:Message-Id:Date; b=o+MCmTTPkjiraIWF5+2JEcGja0l4saouQp0+xZblAEU8faLucdYfXzk3p+Or0X51W2kdPtfNJhgqq7dRpXk+92HQad94wyG04P4tGv8KelvJe7FbD9baywKD8gQCSNC/XjFMsT2oNCpaC9RNSDp9jO1ZGyF+uqYH1zvtcqsfzLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMuBv0sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMuBv0sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D5AC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770516833;
	bh=24xDkE5Rtbq3s3u2epRbojIk1ubNirLAx+kJemBHzXY=;
	h=To:Subject:From:Date:From;
	b=KMuBv0spjHNgqHgalFfYDswVRNbi3EuUR4cgvXtnobhA+AGB3DMAVy10EtdHvtCxJ
	 QL927aR0W6709ahRpyk7pJuXgrz4rg0vOffjtGKPSJkMsLRRU04/UpbP3vNcUNinA6
	 8M6sW3MJn7x+k2FFm8JfRFmDZMl+1FnLEVFq76e2FUKaxar7i5js4e/cdkhCxIvt7o
	 VCcD9S1WSKLhCW1YeAyidT67bxQM/JX6UyMNjouqWRY0tmO/DkreR327lYP1r7EBQG
	 gZj2ghmNdZxoLYt9cHL5B4/LK67C38gi7RYjMRlvrVkq61LIH3XQ0i4n1iGTBphkf3
	 SGadZHgAnnJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2CEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051683358.26196.3083148514454383102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3c074aa75356de94eaa19bcef349d5e9e49c3dee6a0dbfc14b3f265cee65b1
Date: Sun, 08 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770516833
