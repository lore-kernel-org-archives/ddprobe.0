Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C13D26AA8C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745851195; cv=none; b=Stp6yIogxf6TjP0i0pPTnDoeB+eA+fBRIY9w7Yc66A1gVE4v+76sDUb/qO0F+S9BcuGgK2SROoOEHgvnAXFn8MNSKnvUJ9/9ukQD1Yv7I3c7+NTjZtogloHAHpOJ4bZq3JNrqNkDJPP2+7KxyM68bglOahwzD1O7WSoRB2ZMtTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745851195; c=relaxed/simple;
	bh=1sX2wGr2HYcVjGCfI/fXS/kzYMdiWLD26n80pxrfIUY=;
	h=To:Subject:From:Message-Id:Date; b=cjzAJ4FbScKVj32Zc9O/VBncfJt5ejCNX+axqri06GchU3BTLrYwtpIq0dLTQmRaBEIpD8Je1hYI30mirysrP1g0rZMx0AS8Zpq8t6dGzDyzcYyLeq4/7m7bhqpdysW5nMON6NSeqpg0j3RKWTKpA+ajvnmiv4xyBamLnf/qp/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/jlC1eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/jlC1eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745851193;
	bh=1sX2wGr2HYcVjGCfI/fXS/kzYMdiWLD26n80pxrfIUY=;
	h=To:Subject:From:Date:From;
	b=U/jlC1eD/D/ifBZcN3w73IGb83ohsAyILjZlGrJ6ipM41agHfJooh1kzkU4OmsoR9
	 6brfWkzdjmMZQo0o1oblTTP01T/28f4m+582l8+Y0Lybte5Tx9dWlZ37Tu0v69kU0u
	 QV32yZHcGCb2sY+mt2uPHhNpbrovpFOx/xTaaHdFbMM0E5QZNCSpo+iNQ7vjHNHs43
	 12t5F2mIs2o6MHV2NSaABkMVMu5Agoi5aETzc4bAHO0Nm6STDVu/2+Y+Hk7hCDpg7u
	 X5bEwZNSotO0dCdcCqof2aaSFEMOBGyLcwXtJFLRtKjXp0BjoZOLQnVXFGNPPnxMs2
	 KBvdJQ5uyDmJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA80C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585119357.14133.9224197812265440760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8a70cbf6d7002987e24920e0ae8c792c91b4bff3af6cb56009e2e4ee8917fb
Date: Mon, 28 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745851193
