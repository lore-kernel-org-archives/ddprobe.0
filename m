Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433D6245020
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785179434; cv=none; b=iu6emAn6QVR3bp3Kr14QA9s9Jx06VvWnQHcrWSA5zh0unHTs6eiqjANoq01nvdfKcXp8jBYFujxNqaEHmusHfkHM1znEqntXOrYWFOfJCoLspG9x5PTr7YyO9EpVwlpg/nIDaK+lrB6bFL8lgoasoqfy7G+MAK17UkrnK+eRsjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785179434; c=relaxed/simple;
	bh=dEvvxwYIdqN2qtcs2Sdf7PgmktmFbyk3dTxZU+amsL8=;
	h=To:Subject:From:Message-Id:Date; b=h6wZG4xLFklFptgdsIisbPvtXo1GlhyNf719kmthhRTRka4IS3bsyerfW84F39m2OxWTPpCDC6S4DFO5AUaiphg8HBjgukBzSpPko2LQx+L5/KfHZKhvduIMlkqfuOAf/Iqn1ZVQ02RiOH74k6AD/MKEMrawd7594MNSbcK5Ezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad7QHc7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad7QHc7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF36C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785179433;
	bh=dEvvxwYIdqN2qtcs2Sdf7PgmktmFbyk3dTxZU+amsL8=;
	h=To:Subject:From:Date:From;
	b=Ad7QHc7f4AGT1eU1Nuv82P+YVlE9TeYIeigxdvgRjX66xy2NdcTbGedNrqOqu5r85
	 vS5hKpbEcw2FYYqzCMxZh3I3dvr+AHMpBBmALIEpMpTYebeFye9rUvBY+N4iU34Df0
	 pS/F9NMYJcttLf68Lb3IzbJm7vgWzGXxFFwu1JyTGfHgHlqeOQqm6uJbMDDObK/vn5
	 Jq1W9hy6XRxaBas03ZfQQDArL5CJ6BwxgrpTSHnuWxTFHo2yjscxkxRny5AWAYbWfI
	 P9WH+i4bSfAaEKmpeywQHZBoYwmt1gtHZpGkAsnsoT6/lRs98kOEm2YK/AVzbbrig1
	 WhGtRAFI5xMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908FC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517943368.14633.14819383360035850753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b1d7366a4f6f10e9f3d7b6c9230fa0caf4941c3f5d5d0a4338d9a568fae1e5
Date: Mon, 27 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785179433
