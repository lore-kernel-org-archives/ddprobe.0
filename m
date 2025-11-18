Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099D819ABD8
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763438514; cv=none; b=hp5WnLhTiPnIcG9djOB5Hz5wZhX+3TAHzSDm2mZGDf1pD8MV5ngw4vQnHqYUJ6cROzUA15NCpNxNb7bn5kXiMfQCeNbzYu0V/go6x/ChftsHkTfluFpvpLkU/UxgHpbzoavmfImX08qJ8ngkJp5UxiWGUccxAeQkxGzNj74k4HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763438514; c=relaxed/simple;
	bh=b9oaSckA13gQqKNvJzr5BkXYu5VOZIsvEOnzXvsDoco=;
	h=To:Subject:From:Message-Id:Date; b=cs0npJFiau9xF5FBjoGIaLnkAtK/lwM3ydqC/xkbWeGdhEvl+bm9btGifyjYgb8R+atidoy1dP56coBD0k3vaedSRvpV2gdm8Lo7n63F5m3H19TFV+Xr2pqDj9DjOVpdpETQ3am1fVXAEEUAJtdIEoArEGj7YaUSLrAhPrX4CYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5Wi6k5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5Wi6k5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E163C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763438513;
	bh=b9oaSckA13gQqKNvJzr5BkXYu5VOZIsvEOnzXvsDoco=;
	h=To:Subject:From:Date:From;
	b=W5Wi6k5O7PUjkIQ7OiSiyHbAoigL+GRnrCOYcx+gU/Bst0Hqzsf3SYnzq2/5WL/JN
	 kOAYr8DW5+ydzgvpTfnRG+LrBCp5nzb8Kx0RJXyrOF5MYOLMVm8SqgPLnuO8mB9hhv
	 2HofD/10/S+lFEyJqVr8OmJnUK4a2Dq8nKVtmlU76qXqL+D8D1ppi4+h7+Lt03UQtG
	 tIgx4xMvm05CmpH/thA9/jQd+k/7+i5HjgUMnmB4+vrvgjTeaeKmLxpy82pTZR5Bl/
	 90Og7qOIu9IFXMrLb/7a/2eUxwlxSdINEOtBQhv5GY4ojVxy0fqMxQRY5iWRLMa053
	 c1dgkC16QhZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B9CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343851358.25058.2209872195083155689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5cd3741c34aa23772f1fbae6a1f19b2d0cf47ef2e8cc598f6e79ebcd324ef62
Date: Tue, 18 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763438513
