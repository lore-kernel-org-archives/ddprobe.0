Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE9C19F11F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755513595; cv=none; b=oGhoHgJveUl+tQ6J7d4hiS/KtyK/iHu/++AogVTe3p8HSqWBCk2OWbJ2Q2KTjL6SQIz+qho0fHiZzxEHPNBsgd+EmSIa919Jj//Y2vqzIki3Yhm3+oxXaT11TmYBtgyvgqf0LbIrRVqYtGsyOiHJ6QHTejpFV9DKEkkd7iPH92o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755513595; c=relaxed/simple;
	bh=7iP7hvTjRMUJccy+tMyWrpl3KooybebGthA3j2EO0PU=;
	h=To:Subject:From:Message-Id:Date; b=mne6TT/nbMmD/4SOjlpQv9MXLDGM3ZrVPBS4a5ggMZ54Bhz3rtfPeLE9j9i4ESuZfnd0sW3gFGcnodeE/LrvRyyOt70Yuq8XbFLadBHxPBRR0u+Zaf90ZuUtxhbsOsZD3UWT5VX9hFQLSRHGnX6w1jkltQc4++M2ISv5su45OpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGDIMYL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGDIMYL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7051C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755513593;
	bh=7iP7hvTjRMUJccy+tMyWrpl3KooybebGthA3j2EO0PU=;
	h=To:Subject:From:Date:From;
	b=BGDIMYL9a/TDlUeITc8mnUu3KcNI2Bt8+cm0iGTKs8YR0KS7Vc6ZIU3r/XsXgMjfM
	 oPlm/bnxY8zJiRkhif/NPTE5LGWq7jo0PNQBt8fKwEXlzC4OCr/nDlLzvgRORTmXry
	 M2zJVlaV1f/5cWjFcRrjfdX06swjSYtkVRtiNFWUAO1WiEZ0CaIUKv5OIxdv55uHL1
	 vfu/22Urgj8uR/gvUuTGPjzFb3cCBgPtxzCx7E1icHr7FmEDCT8PaagB/leM2/RqCH
	 FD0i854v/s6aqecNTy9wDNT5fbN4jcHV7Ndr7u64yzYib5wdm5ziajXI4z3pA8h1Zd
	 8TIVR8jkICE8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95766CA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551359358.22309.16065239562022466696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d6e288190a1dc503a699642c6352033113440683083caa492ebd702360b20c
Date: Mon, 18 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755513593
