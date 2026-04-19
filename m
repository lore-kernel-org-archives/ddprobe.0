Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288D01AAE17
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776632854; cv=none; b=rftuUATDUE/XprtLcXgGlIAyJ4bKfAYei2mb/FhXjSg+wrKd01qxPZk9fMoKWGNzf4eD6k30fSaJmbYUsiS+Cltj97rCUVul0FZ+RFc/0Ow0f6x/OEbut5l0a+3HFmobkB+hdgd6PWqLFvPN/aEw73hkw6OXWxG/1yBVqUBgNv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776632854; c=relaxed/simple;
	bh=IpBfw9KrTNTOiRxvpaWBPch/pLXH+mz7Nr9dnIVZHRw=;
	h=To:Subject:From:Message-Id:Date; b=aXB7xKMkj2BfeY9Nc5PtnRSYqTjvSx3An8wqT/uLztsT4ZT2z4uNeM4Fe45Fja40INeydWaAm1lwIuUCWuApgqP2bBHvAOT4cL46yVSGDFJj9qp+4FoAnSuhAn2oJl0QiFe6vTHt29cT4EGASYo9aI4e9sVzZ4+Pl2qVR7W4eY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kozyVkVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kozyVkVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ECBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776632853;
	bh=IpBfw9KrTNTOiRxvpaWBPch/pLXH+mz7Nr9dnIVZHRw=;
	h=To:Subject:From:Date:From;
	b=kozyVkVg2Cd7/mg4EJSwrSRQ4/0U5EBubGNKv1Pvul27I++GshRdtUxN2XLS934XW
	 brqq/at3bhgK6pnwNmk4aJEqtWJJSTJ6NjRQoPql7AT08r0qAmOCVCFoOY0KnNs3DS
	 UpUXCuTLcCXqjhsBWpKcrr6S3Itj5VB/xsQJiJpnebuhRCL4s+rQ2J4IMv+KhOE38u
	 1Eugmzd1NkQSDsr9FeQxBi0biTOUodPh3IGGTsqwugDAR+dvRkgXfhwVw3hjLP0CCY
	 JGdTnn2rcKH5N7mWVuwsWso9QHaNvP4XKrcDLBPsGl/EsjT8pTBkuy93Tv8WYkkFxo
	 qlmiHIcZJj7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56CEA719D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663285368.2995.16134485508634481539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8af08f2562dbf1ad0cd2464c980b698aa097eab0531a892dc18e4405a5587d
Date: Sun, 19 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776632853
