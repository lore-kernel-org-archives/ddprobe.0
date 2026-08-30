Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A26510F2
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788073234; cv=none; b=rUy+UXSswYil7Qwmx4rJNF0dUIybs153iIpfWhSBaUZyHghesVLKL8q8ln7bTTj2n6AftDzy9qX2FB+/mPWXADkStCMAGO34mhHiupc7nfNpEsJuzb/eX89iFaDoVNH08S9lvShk3nPDERV9mTp9sM3e1eWv4WgbNuue/ocyQYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788073234; c=relaxed/simple;
	bh=cdljksw4oxugeVk32Hw07qOsIeYqEbdCtVgDoldWZjI=;
	h=To:Subject:From:Message-Id:Date; b=a4XWhneGfVGI2wQIxdX5CwPJEFpXVEdEBIlH+5R6mxNuBaAXuAjG6nPRDy9lJDS44MV0GD/9v9kmAW0oUdBn/5VQ679bQ+GUDuhxvZRenjIImgLOJdTrY3O3m4ezH0dlKvTY6gbK4waZ6T62VFH3MWBh+Q/MHlQGQIx/cjaV5WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1oxMmTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1oxMmTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D897DC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788073233;
	bh=cdljksw4oxugeVk32Hw07qOsIeYqEbdCtVgDoldWZjI=;
	h=To:Subject:From:Date:From;
	b=W1oxMmTZ1X1ZO3kfKGHtFUrX17EGof8KTe2h/IcbSwqJVwPFo2+V2qDs2FNlPJt3X
	 6hs24xPv0eLiQMy22y/EPvDkuH7wZT+s8C/mW3tKxsDF/dQtb51KiNFiCugnEbjl2r
	 E6I4Rr+/NsN8EUgqh7ssr/KvTggRqDtYneXipJ7Vd21gTdj15Ji0qpKRcAGpC4TzEL
	 4yBccIvwjYwf7dpgziIPEEI/sS8DgytipRFPzLQ1uvhHCbpoZEmc0MfkaE6tMxqGHD
	 RpMz3EJ4spPa5n9rtmYPyp8YD7L/DqhMJvHI+Ud+aCuZi8YFpY7iAGrnHA4wS74Jbj
	 Bugt+dK+Ek/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC6AC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807323368.2481.3789757957906435325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514b99951da39a98afbbd9e2b40f61a29f69e7355bb6cc07220769d16a3653cd
Date: Sun, 30 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788073233
