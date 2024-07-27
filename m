Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC9A186A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722041754; cv=none; b=Ta6zHXsyiTM576r7/V1rAvPNBvrjzilH6jVb7g+/E0WoGlMaAzrewniNC9NvugpCTXC+dKyn6pJEpjQhzXGp9vCIr3niLUEji0n7mnL4nfjPWpS6Z50uWOX2WK3yxZSyGT3pFy8aTr3Ihj/RCp5w7SsQnQOFIowO3CZij/At3MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722041754; c=relaxed/simple;
	bh=SJktOY0/mmGl9wbV/qA8ucd7t3uD5qJaSu9CE8JCybY=;
	h=To:Subject:From:Message-Id:Date; b=QO4h7/r/VqUKY+YyOaF1/+BVU4fGK6gpYwUNpCAw3q1L3h3KcAOW2pmGnOAho7buLOPHCCcIv6g2gocJPRCQod9lDMIuSU3I+dWhyrZaVD8gYpyquyD13J90P3cQUl6/xgmMbTP55WXGC7aUIUouGpNIx4fd7jRFoDNXCD39Mbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXRg50bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXRg50bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0269C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722041753;
	bh=SJktOY0/mmGl9wbV/qA8ucd7t3uD5qJaSu9CE8JCybY=;
	h=To:Subject:From:Date:From;
	b=tXRg50bYMJ8o8CXdTa5fzw+pvkH1LuWr6n3RyXLDsG0C1UplBdYBiCBqmOzhD/b/3
	 goWoYI6lrV9DSgMf9YhdCJRj2Dbvt3qLJByE/LbfsAjlEakB+2y61iOEzjlx678QHI
	 TuNDF3eZ66bRuyunwvMhAR1IHEevRsXO4HVRR2baEnVBjHVwiMzhUOoa+p8239IavX
	 zMHRDdaLnS45zyNTvtP5eHIdSb/1/STm0utqOZ+mDZ9ewyyGaZKovxINxEl9EhT/q9
	 O2B9Ur8jfTXwntPY1p28jagbLpXi2oEy4xlMTeezMTOPI/Ipd1qoZMGtnlSkxJT0Hj
	 +/vnmdEH4E5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91134C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204175358.3394.913968918704627895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b9d96133944df330b320e3214998547e46d42fea913c9d73ae40d07f2ab588
Date: Sat, 27 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722041753
