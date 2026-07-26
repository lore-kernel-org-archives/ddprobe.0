Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DFD3BED11
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785083434; cv=none; b=u1ZKlBz4t2oyO3NmFwjV+1TArP4/r1xJToL/NUG4FAq/aCXLOZBPkQcsHrbNa9fTlzTWXMGjRVas9otZ/opQTG732BeuZXaO/eEynkLtzwaRix4kPZJpN9+++tHcJt3f3hkLH68Q/iOLuje18druLESFEkXCV481lF7s3MYxBTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785083434; c=relaxed/simple;
	bh=9f1jZr6aLS51naOMJMm6/vyl2e0tz8p4kzIiVhZ3ykk=;
	h=To:Subject:From:Message-Id:Date; b=pAMO5hanCoUsTaMKXqsXDHuCNKkjjVfJZJiM81hvo42kEHfykI76hKQhlq5Sm5qtiwcAcRuMpDwtbJCA6uSnILzsg7lKkT6R2ITlf6f9hLHYhu59qgcRxMXntKNFNbnghbA9bugjYEPPUEPHw3GxbUEUsiDPL+UCgJCl2GL+eFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSJED4YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSJED4YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF665C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785083433;
	bh=9f1jZr6aLS51naOMJMm6/vyl2e0tz8p4kzIiVhZ3ykk=;
	h=To:Subject:From:Date:From;
	b=mSJED4YPlVW+cAV0j/3ZFFvoWtat6JUoizfrsNoNKmqAJ5VQOLs4GB5ewkYW/cjJR
	 zPJbkPNVXWnDvcpk+wm14S5CnFchIvLj+Gthf5TI5fog2lWu1xtO7hJVH4NUHBTEEs
	 HtSYM7zBsk1l6bRUKwtXW53daNiv7w0czKWh6lpP5CpV6d6dzvVPSLTaZ8i3FVMc0Y
	 z5D+TGKxwYMavAH4bWJVn5YTvWk/UEXb2z5qJSsRGPYRsywJXSfDqXVyEF8aNloCjh
	 8jLhwJgihLsSjjHJXJiwz05HwBF+IaLbamMgSVp5DrtOoZtWt7wUNnI50Al7Rkvl30
	 SxvOfyTZYwJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7FC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508343368.3888.3328735079458385027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ff892776faf98a2f1c276c8b3193d8bceb3be79faa5b9df311840cc8ae5a58
Date: Sun, 26 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785083433
