Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDCA4438B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724095554; cv=none; b=MiEajd9V6Uvd9yOU6H5MHDYxOVoqvsj0vNL5x6z7qHQNV5NP0b9DEo7NZGx4q1lLDHZyhDCrHiSFAk+DyxFElDWrVz2eS1sixFNC5x395+FNRTQX+w0Wn4OvJlvY8KMHl8sBhHDYnRXv1I4QjoOi3l46BGNPb06GC3Xu6QWqK8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724095554; c=relaxed/simple;
	bh=J+DTtf2Ip/jHIcH323RwYP4RzdlHEsjmdN3gXOOazmA=;
	h=To:Subject:From:Message-Id:Date; b=cWPNQUeb8VcVuWugXi8HI2Qxfbnqguvs39pDCfjL39GPFUxRR6AXfyGqjIZapCGlQNuYSrjneEBXLUfbeAMRszVM7bUtfOaV5DUX3Kz/dcLo42nUTShS49wyLJKpYmzRI111ynwcCSElWzp/PnINVCL09QwW16ZOmyOP2BG1scY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFoxY0VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFoxY0VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CDC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724095553;
	bh=J+DTtf2Ip/jHIcH323RwYP4RzdlHEsjmdN3gXOOazmA=;
	h=To:Subject:From:Date:From;
	b=iFoxY0VGuEp+Ew2d64R5NnRYEKHIcHHanqg9U8BwUa9aZLB/PDBKOYa4eekapkMlr
	 7HUuwegsrWDTuSDeVAmcozBEQYTNJbqyF0NG+dfVkJaRfPjjpOZZIJLN594yGKtPTP
	 HmzNP+qNB5ErUiKwl/OGiRVZnM0GrMGxjht+vAuRB5YKD9Myi4qvOw+y7G9Joiw01o
	 T/az42DHNIxfD2BNfN7nX9O46P/iZ68Ich4SGpRGk92tCdUmCbFquxUhB1etFeGFaF
	 eLTDzOrauQexCQb67+PJTPEILrWL6jwbYUJMNfmnHsICllm5/dsG6p2StQoJW5c2wg
	 wootkYCN6Xg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E87C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409555361.11930.1943028096697416924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18990cb0c3ae795268baa0f2fe7a80d9a83d8d398d2286da20a422d969ee8ada
Date: Mon, 19 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724095553
