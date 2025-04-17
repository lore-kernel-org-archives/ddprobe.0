Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC3366
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744861794; cv=none; b=MKxQF3ylh5rOYb5Koe3andYuKLtDWUgpA6ap3u/TyYa8TBZSz2SXJwkANzffyyrBeP1CGwNqgnZUTD8RewD/Nq5Md8oOdxEGN++n8igomaZ+IgBA5aIjn9X+CyvYagJih7mI643SDvA03LgrvrVAVZxMPkKX4F9s6zM7ya0pYlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744861794; c=relaxed/simple;
	bh=F7KhAd82m2bEr7l1pqz1yO3/egksNAVdxaGXiWZEPGc=;
	h=To:Subject:From:Message-Id:Date; b=nzIuM1KbUE7OHe1eV+ENbYdsOthFUGtffFKmkb2pB6nh2ymb9cOQWf3xExyXRH5t2VabEjcwtHk3jlQd/oO7mUflZhnrrwkRoAr74KN71Na6jJhJt9IidZPDxh6Kve0x0pQ6V0dk4qlxx7Ho8ZErUSeBlqO/XtrPYqp1BUZmLGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqwvobEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqwvobEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744861793;
	bh=F7KhAd82m2bEr7l1pqz1yO3/egksNAVdxaGXiWZEPGc=;
	h=To:Subject:From:Date:From;
	b=YqwvobEVBSR7Jzm07dkmar8fKFOTKnT0d+CcCgJ4DV8JRjN4Lp3mXCfyajC7+8rR3
	 ZTDiSGlH2iLhw3YWCcLt7d/5fMR1zhFM+N1mEPjWX3gZWHrfm3Xw23o3yq/VxBn5Rv
	 ThliullDXJk5aPae32DEGYxcKwSeN/xhdHcqBnemHEKT6gdgtiw6HSHtL+4yl6gTTS
	 Fk7xIjV35hK5NFCAI5Ksnx/eTLbgZFIiI0L4gjscUHqDfpiFDqSD4y0ynE+prPfqCF
	 awVSPYMuN8cstI6oRmYQ6p7uvG1zuCI1rxkAM4xeYwDy/x2t2HP1rkyQc1L1x385xd
	 Uss+CWlasQsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A67C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486179361.29568.10452403863758904019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b61ab3e4192dcc695d63ddca0dae183a8d0240afa7dc3cd0c566bad17adb79f
Date: Thu, 17 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744861793
