Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ED237CD22
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783310314; cv=none; b=FAVeXQdsKGBH5TSIMewK354OLVvNg/jEyQWny63IHyoYyAdSY/VUB69qa44Y070PApUbfdQ8WO0Z12pm1011sOnrTl+QJyQYFrNWo1Rqvrc/0umskUM1NbJ6RDVvhNT+i+nEDSaY5jNLvo7KMGhmS+Hl5BRD8bf/GNY4tDy/F5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783310314; c=relaxed/simple;
	bh=0CdYEXDKuzn7BaF2rM9q0aZklOtqH/vMyai2UkmNZ+M=;
	h=To:Subject:From:Message-Id:Date; b=tDE26lNLn4wdFlaqaiPkeVwx6ZN1jfxhZvmNWZIiYeeLiK5/bMCTpPJV4IRNYLE+Voebo/YCbwSWmN/IqsFZQ4TTq0y0BXYoxxi5aRHqECLEQ//q2I/J4J2mwSLtW5xQmCizZqlGBcu5QAcS9a/X01dWefsCNKWsQ5sZwzIeLw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alH3lU0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alH3lU0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D365CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783310313;
	bh=0CdYEXDKuzn7BaF2rM9q0aZklOtqH/vMyai2UkmNZ+M=;
	h=To:Subject:From:Date:From;
	b=alH3lU0Bxg11tC848WMkLyKF5VyDxMdJhoalL/8KDvHdw9SzD3ulVEpNAWFvQhDt0
	 LY4qKjZr2KXB5TUoyXB/tz0P1WzFjIV926OndYeoVw1ZUNl/U9SLwuL1Pft3GD8xBW
	 lCr1zlERcCKzV6P5uScJYu1FcWeXa7Aj/F/EuLvZZlh0Iwu62HIAVIDGFrjPUp0bPi
	 nPs6fTuv7NdxQvfyMiVOqf+U7sh+NzntfK6bTJFHSbSLCBGIolGN0NZIctw5AlWbD6
	 3ph1gRJVQtsNVi5MyY5XnkXUrSQc8I+ET6Z1oGs+BJiXXkYHK2zAo5J0HD2eNO+1eL
	 MoBILB03Li8Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF67AC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331031369.28275.16931365175361019565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c22fb04730e64456731080db34d7d58c0b6bb3237593709c04b80334a29923f
Date: Mon, 06 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783310313
