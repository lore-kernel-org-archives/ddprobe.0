Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AA630274D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790458234; cv=none; b=gmKQSxvExWEakjiEVxFcF411kDjiuj8dGumkP/gLdIGM2dO7AKOYE+nuhoF1Dh6nK8cvOdg4aqTX4Rz2veeQ23jnaZtSuGFCxjDYN3YimVxcwJJBD62QxMRE7hm1MzmsQ/Wd22azlDyGE+d0j6OMinHBizHrZmocy0QEVYtfRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790458234; c=relaxed/simple;
	bh=oiDsMY1XsjiuKWBkWpj5xQ5vNdPji1D7fCiNV0+HILY=;
	h=To:Subject:From:Message-Id:Date; b=sTL2WyEmXOzxzdbreKvCenC8C1RRe6Q9RPDywqQUoPMwgA4PGJ4g3Q+anfNchNsTf4KcStPmV4Nk4zAygm2reQxdd0170VYMkejEIeP3M65CnFh9vYZl0lXOcvB/jPZxqCYNEESzV7jPIEY7ojmgsJ0c1Mx3L0tr04lkIItCbws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFFqaPeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFFqaPeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7623C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790458233;
	bh=oiDsMY1XsjiuKWBkWpj5xQ5vNdPji1D7fCiNV0+HILY=;
	h=To:Subject:From:Date:From;
	b=aFFqaPeCtQt3ztjL9MLsyy1QsHl7kwc6n7Nq457AwbMJbo+j4/OwOTy2MycOvBTSV
	 07Y1hsU3bWWcORD8vwbAq0M5bs3QgV/TQRs9HdWxtl57PHumuGwhJPlc5JRlAMmp5P
	 zMy5M5Cc1QSlSRgsPAoQgFy++9B0FhzFNpZeXhMc4npV64c8XIaeytcm/kkLDayp/b
	 tb3tRlncSxm6hudOOFrZU22QI9cwWAWnh0n5DOAgPchxq6PKM+jFrjkOftp7fFowRl
	 lz8AGBza9jQhY5f0b7gHAyqEW/CGTN/W0XBsgMx7WxOUfC1kolAXytSNQJF6n+WfP/
	 gsioPDsWJRBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3220C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045823369.26127.12999164966174687914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa511ab63b83f794d67f5f423cd573ca8e2416f9c436f542d929b666abe8b38
Date: Sat, 26 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790458233
