Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25394199248
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725534354; cv=none; b=C81mQrIobXgy8dEZIdIdgQWOo/6uXPO5x8X/BneD8CH+0/2W8JJMOiLwo9SXHycf6gjycvFUZqD9t23oPchmFddOBZjrKVmGgXanD5ChzAEgWd4lK5WmR7y0+xMLvMFSBwDr2bOZwR31gMwUjl/4StG58gftN8Q4X/44IohPPJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725534354; c=relaxed/simple;
	bh=nsR2ec0sp2V3qAtXytPVxXAY1kqLAXW5NVqSHXc6cO8=;
	h=To:Subject:From:Message-Id:Date; b=h2pSeY1Ldq8YWTh5UeyRhyUXKBcvIq9Ppo89UnRR9RYcIvaZ+NwwZeYCDi/3Xv2vpD+YviIADfNeAH/QsB0RUtLtB1oIL2uj1GVv4lwDOMbjqx8ihxNqihFaS51N7uI2fDV7rSkTvH3o06Ic0vaAQrsGUQwAYMZ8AURpWiAuI4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd/7xcGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd/7xcGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EDEC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725534353;
	bh=nsR2ec0sp2V3qAtXytPVxXAY1kqLAXW5NVqSHXc6cO8=;
	h=To:Subject:From:Date:From;
	b=nd/7xcGZD+22K3Oki+jRZ2kL957SO17Zlh9hMCCKFElxL3n/b/CBj9iINv+Oei8l8
	 eDrNrTneHzmJIPNAs6I/19LNm+iMgVJCs2Ob8JfoSqciWt9jKUCzmjuU3DJnE2eEZ1
	 b3JRHxyyjoy2EHc8orXYPsgZ5Aw6rQvWFm+YFCTJWSlw3BtWXJr8GAxaWI92ZoZbD3
	 GcTNdOok88XF6jwKx6Hc1mClOMTL22ZBwwZPdFmsWO16T7AzVSqHGgmGHWiGSnRJeU
	 xXeFEf74ekN9/FL5+QLlo9gr3jCI+/wnMrJzkBzgrojBSkzF0PkzeFx5s06vrCYJnD
	 Fr61p6yG3fLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D85CD5BA9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172553435359.4357.2358006164376921325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d60747319ced4f85f43813928c550c3bf8941866bccaab2ac4caf998a3f6d8
Date: Thu, 05 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725534353
