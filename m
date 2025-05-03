Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4382C19E819
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746256794; cv=none; b=VoQi45oA0rmVSU8e1nh5NUvE45J7g57b1d45Wpb7bI2Voofr6DWhITlhZVf0CUTvwcXC0k+Dls+xaZeroUghTLRz2MrDDjlBW8CGh38R/Rlx47xpTRJa6tROkngrMgHIIR9fHRbJ7TpzGMMuNPsOZ1IRDEFBbCM9Hwh+I27K0Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746256794; c=relaxed/simple;
	bh=0f3rVgkf/Yqw7A7y1XwKiNAC+dv57+eXBLP01d+1ZwQ=;
	h=To:Subject:From:Message-Id:Date; b=e18JwKpHrEvSu//KvMRW7GwIuKMrTpGjluf13LPaV0KzY4Fe/OhOzUeefja8M4otOo/T2eGWRlwIFFiq37HlXEHnDa5wzSLCGCjuSh8oKLbCfDtdI5PAdfp+GY8OtidbS7RSkcTgXvyonq66vGwtfn0VLPQoSHRbiCdi6+BTjfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyHn8Nk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyHn8Nk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746256793;
	bh=0f3rVgkf/Yqw7A7y1XwKiNAC+dv57+eXBLP01d+1ZwQ=;
	h=To:Subject:From:Date:From;
	b=ZyHn8Nk5ayWKKU9Pda3dGgMxhFWvUnVgkE1FLxWJ0kRfUn56v97O7JMI/yDikbyEY
	 HUzGicm0+VQGsom/Qbs2W6COE/a7rVNYsVubgzOBfnq7kcQBEAYTz7ttQP2lAvblLB
	 NUg/4gvL+1cDkG9FVReqW3M/2NQoOv1pGGG5nmdhF0kZGhMHwQv1ugOPYc84x8+LAv
	 ONybHFm1c5W/YqsCOULxklgIcJPs/8GIAp/x+PY3Q+vctdddxFpV3cqdaABfCEbdjt
	 IYB0/yOeq44JLykivQvlFCvtu7LjEn5vGfM0f4k2YlwVysExiwjqsGISLszqqeDrTP
	 rg1nga2J/Q49g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931BBC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625679357.24587.17787916660365164869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3f68fb68b192b206ba9756bc84f6c65eab940992be30cbcce0e5edffcc443d
Date: Sat, 03 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746256793
