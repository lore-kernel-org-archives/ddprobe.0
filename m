Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0106064A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712728697; cv=none; b=OOXC+RsGjXXCXTAYwF61jWPpIZvBl/rsKWbvrcUyUToTEh8HWpWJ1bJfmmGrIAwVyttYe4Fwcrd3Xwir5k90MrN8outSkIaAbS4BIetDrFQkvzCcSAVFM71uX+qSxRK53pdt/8K0ggsbfzeI1ewLbU4QYQJLXEqhKvPwzejwdIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712728697; c=relaxed/simple;
	bh=R0byR3B5VVquN0ifMSZBDTdpNmTGGnnsSybbU7olkBs=;
	h=To:Subject:From:Message-Id:Date; b=WDOWTdjMCL/bEuOz0Q5qWXecOGTgTWPmcJchv8MSUAb/f5thKZj86ebyym8CA2nNvYNpwGfuhrk42IyHR9yFL1jRUstVtXgFzGGTnCgQ9Ou/x3r98jQTDZpk1iFqrw5yawXX/wXxr67Rw0jq+uzE6+NgBGkHjVl/HZbI65wGsF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1Mzzi3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1Mzzi3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767EEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712728696;
	bh=R0byR3B5VVquN0ifMSZBDTdpNmTGGnnsSybbU7olkBs=;
	h=To:Subject:From:Date:From;
	b=Y1Mzzi3Mi/oDw25hNzB0mceMoy0pm/lzXKSvXo0HIKeDrl7gmKOrgSVGRTF2Ud85v
	 nvCz3b8TGmGAOIF11lZJ5AKO3P9yCQZcpnHMFRf1li6SxZKWFkwU8V2LDJkfD7jddz
	 TToxh2okR1AteQrtfBHMM7yyzXJIS+3CsSOubRbFN1NWR5t1xWat/VZbVYrDA6byqR
	 2S3JZ8AH2T+7PTSCmvkOc+AXK8vJSlKt9qTQwib6v3muGWpA4Q5BR4kToM3GeVlLOQ
	 j/WZoMGAXoknZvc+fBPBzPhzo8YDNUCZu3WNdx7u24R9EOI0IbcKWVPtu29CP3SBYW
	 pue6A3c3LulAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627A5CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272869639.10527.15616684277602624898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0d0b93fe90c5735cb7729cd425dac788a5e5a9e725d550c87fd294fc8b9310
Date: Wed, 10 Apr 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712728696
