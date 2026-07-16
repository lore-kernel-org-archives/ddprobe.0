Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0863191CE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784215114; cv=none; b=Ue94sr2EuokF0c4usLsDHQA3LnXiH+wWU5BY5uPKtIckQIIC3iJXWnjc1/pgV/5bqn2rR9LucsvUwwRj4RShJeu3Rh+QAJsnKX0E4JHCzosAcrEsasuzrR3ANuFh0Wuv2kLAX9RZFfpz01VZXz5YfZNCf31KDFp1qYl270i+XRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784215114; c=relaxed/simple;
	bh=Ib1k08dXC+wWar4rMvc8FYNBcJDAMsE0IXST7IW+K7Y=;
	h=To:Subject:From:Message-Id:Date; b=dWVt0cMybgmLfyhR/3qbhmCuk0lP37N/UJ8S7T214YFL9/EK6kvyoG6cT0z40L3SsEbfyJvswvVOFG2wJkAQIH+BrdSeH+5p4M8yJ5CLWPNMosRgcKtYttMon9E2UZEhoq058WgTsc/jwzntD+p59eYPqvahjeVPxjpTuTBwIY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqM0UfmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqM0UfmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06870C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784215114;
	bh=Ib1k08dXC+wWar4rMvc8FYNBcJDAMsE0IXST7IW+K7Y=;
	h=To:Subject:From:Date:From;
	b=sqM0UfmRlKvIb7RvriDZ/bwUxl5YndI6Pzb/FHaoC0Dsm43bXb8chvz0ygaqVL76H
	 TL3BMhNX+tn7QDssPfIbW9UQb2hzkygf02TKrQzMfEobr8LAm4Tcssk0Od4RiNeQPb
	 HVnux14jVPAdxyZL729NwarLdFu1jTQdc2NkF3PtEbtRC/yyNFElCDrZB3Y1f4zwEs
	 jdCFoTjdHJatO4+J+WTM0hhxfKF5tVC3Xf3wQoMcPhhO5JuHdcSy3rp90Oyrff8iYE
	 NnL++An1BcuVZ65+89+HECseczONv1XqDhV6jBLUlx8Jj8UoH5XV7GSy7UPhOWtPI0
	 PqONsfVU57cSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B9DC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421511379.30626.322363781348476432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69df7556d7cdfef1ce22c18445b7171df3f8926fc217a257c0a12c795467d5a9
Date: Thu, 16 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784215113
