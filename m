Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C847D1B0424
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746107393; cv=none; b=PxZkyv/xY9QgQFrFFQ8jzRv9NuBrWP//z6+Ltrw9ZrzHX8j1F0JxQ0MM8Q3m/fEMtN/uIZ3eqV/4RD2VxoVb0ziPKUv20hfxqm9SsF446nLPAK4TuNcVJ6rT35P5v1J0I82EHvFtIi4kVswZc065xw1p+2+6mhykmjhqrDF0cKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746107393; c=relaxed/simple;
	bh=ri2KS/a5y9Wfz/CVwm3cKOGT6cT1C4Vy3vz4D53HExw=;
	h=To:Subject:From:Message-Id:Date; b=rJZwAyeX9hE9myOeuoY42F8xyV6eUCnWwxYUt9mDwGA46gmJfXvymMuWCJvbBw8UIQxQ0Bf+ya1qn2fseoL3DPmf2ptsX9hFfY2hFge3rt7nig5XQdeANnwXLiR309V4mSWiWPuJPqP0MY+yfjDYG3uqthDyEVoIkbQEAJ+LjUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKkkCiC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKkkCiC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EDCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746107393;
	bh=ri2KS/a5y9Wfz/CVwm3cKOGT6cT1C4Vy3vz4D53HExw=;
	h=To:Subject:From:Date:From;
	b=jKkkCiC+aPSglFN1Lo/+UoeROeiJrHlhwib5BDiq7gYRB5Z2k6YcXOFnFF2TJUR1X
	 OryDp3/++Z16YbZJl+bFni7N8F75n3Sgnn8RtLEx9Ms45uo9JFvcbhBx1jrVtNFxvu
	 rBU5XZux82fCTrW9KpgOo62VecVs7U+8juM/mO73ogQ/zLtcqr97qcUkoX1XI+NNQQ
	 4jEf2e9UQju5KESaqWfKK6eNTU9wt5DrB+09QkeghbpzK0AlN/H04gSuo++WZ3Crdc
	 w7mmRIjpauomwLJh/KyQ9VBuVXLpSrJg7H5xh/ESONbA8X4H7dNNE3eDmHw9m+vluq
	 iux1Oph6UI4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B31C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610739359.12504.8447631943311267626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08683c0f9e160023d09288fdd94fcf5ee7aeb92f3185ccd8f686f9154d3605f5
Date: Thu, 01 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746107393
