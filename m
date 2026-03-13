Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F663E51FA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773444893; cv=none; b=U3hZ16m64xNCjL9Yxo4turyEHCXfcJNnzvitgKXWND6zcpfd2rejjIz35im+XaX+/Sk7GokMMS1Jk8rrUPc9Ta+kaDwvHxHvF3Yc6+NxToympyHQAQ8u2Ipt2W3LdcGE88Qz8+duwJ0ayu2olKr+hMkmTSJEBGrJVIBnHUg3M1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773444893; c=relaxed/simple;
	bh=UP2z/FWDx/TA8w9H31+g8QuL/ugjwT4fYrf9I06R9KM=;
	h=To:Subject:From:Message-Id:Date; b=LFYvh7+0z4iSAhBe5w1x/iSVEthkZIgqHtaBEHRaRVjiYpyZgad+W1cqC+ZHKwInxmvzBM+WqXGfVWlargpzpjAA7jRIY31evuu0AOu518jsQCV9ZGkMPAX2k8ib4AgSMCUK1Gp/7gDhA+xcz8aUncxKO7nU7mGJo7WN03TGaKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml6arhim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml6arhim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D37C19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773444893;
	bh=UP2z/FWDx/TA8w9H31+g8QuL/ugjwT4fYrf9I06R9KM=;
	h=To:Subject:From:Date:From;
	b=ml6arhimznLRFcWI31CSmiR0BV2HQhIq+FKfA9O6bWV/70xVDiHcAAqfHOTMnpqYE
	 88seNdZwv9JsdMrepiY1UKATeF/aSWTUzLcHanuH8zzYISlJICSw+2sG3fcqFqkcbh
	 bTKccZ8N2wa+EVKcvlqQYnigCrVLvjAiwxQQDFwIHY7NWAlS2dwcaMvuAwf1lV5Xgf
	 Odg43QU3PogYyZhhB3TcIDDhjbCk4dkztTIPUeBVySF7TkqcYVBMcK1jlS8mjOtHiJ
	 pXeEmLZA4GMXUxyUd4TZ/O3tJIkAUFvDtgD92G2+t0KWNB6k60yM0XT2yEy6OtT2Zc
	 VqgLwYTCyAZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FC107BCEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344489358.2826.17348000393136583545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e248dda3e6d5cbac6d240ff96bd432a0fff5c6ee9421b6e95d0c6b1dd3fd35
Date: Fri, 13 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773444893
