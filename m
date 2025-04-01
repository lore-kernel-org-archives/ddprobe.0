Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF15204C30
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518394; cv=none; b=eMZp0JrE2PWXGcOYeZNDjjqaneG8neZ0G1dVB8AF5nK0pWgr1/XQARsU5pS3CcwdZvTotRn1BlFqSgQYk2m+n21vYakA6d3vuple1aDHy18Du3GIybXtJ+n0xaNsLCRGRE1NpvJDVdF1tw7oeMAFp8Wggnt9WtIPXr2f0pzE8Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518394; c=relaxed/simple;
	bh=qN5rKw+zpAL7JiOgoOmoQmMOHMYtdTzk1LonmvfLDnU=;
	h=To:Subject:From:Message-Id:Date; b=aOQ5Kze9x+f1CJhvNP01Bn+V3LbJjcVZ9j8SZSE0IH2ebH1721ggn16/jAWBBM4JJV/nVmkvFM0ed7os1NJ3AVJjEVnw+K/9h8pkzuPVWUu4+Y1ol+v46XP18kOtLRgzoavnvDTYuWJmsF98RWHNrhOfWBe+CjpdNL6zsqznTzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or25pafx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or25pafx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3605C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743518393;
	bh=qN5rKw+zpAL7JiOgoOmoQmMOHMYtdTzk1LonmvfLDnU=;
	h=To:Subject:From:Date:From;
	b=or25pafxuLpUKlwtOYlFYiepFuz0jK7RJjq+VEtdLu/01MwY3i6h+3M82YhqkoScP
	 yRV2RD4KBxchUAn9DLQ+BXQOmGlvjgq7iFwcRVbgtwNxPXS57mPZAbMymRTPnbclgk
	 BtQ37Jj1foot81reOGJwcvIyB1D+KWtXJ43StjyhKzgVCT/JEirybO7AOSfFzx9XGU
	 8qYSQzgi7JgrK1o+3GHRCSQ91h5rH0qVZG0zi7i4krehTLG5q8A+1i6FoE/TnTshGK
	 k3Hc1TjXzC/thY7+orajfiehfubyIFtop+sduFXg46WPYIIC5Uak45sPUqqqXKdcjR
	 pnj69FFruhEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE62C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351839362.17363.4499931510240145146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312e2e2b18c2da9035f888efe10304759124cff6485c0cc2aacdeb75a664a841
Date: Tue, 01 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743518393
