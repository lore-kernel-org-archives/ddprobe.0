Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1759D229B1E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750432194; cv=none; b=IyqQXQrokv/nONZX9T6Og4WnX4WXqnk5bdDySMmEjDLplqB+jPB0YEaPuy/6j9Qd7Q/CoScrB7AXng/wAcVsZxwX6mLbuZsJOZtJzznJNKZybbx9XRlBHYBgoHQ76OnhYj/HV48xnVLT95uggmsUbU2IRZF0uXYgShXAcvrCBYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750432194; c=relaxed/simple;
	bh=p37xwzWKjtmJcTacGtygEP4TcMVKO7we29Hp/ZUbhVM=;
	h=To:Subject:From:Message-Id:Date; b=JhJt1ZZl1kGzXR/G7Ra32MRG3Q5ljVCsOaCW5PKzo5CVnu1rNkqpHSqOpPMvDTxKgYokEpjbr7PP9iCVEH+ecBOtg5pmsyy+80YkHFbpqMRozjeLUmFx7r/v1VXAfYoKVnyUWRr3vJw2t8btRhDCJNArm3AxzykTQINPq5iDOzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubr/OJ5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubr/OJ5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7DFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750432193;
	bh=p37xwzWKjtmJcTacGtygEP4TcMVKO7we29Hp/ZUbhVM=;
	h=To:Subject:From:Date:From;
	b=ubr/OJ5OCtRw9UCDY2f7ogDOhK72mbs0DrpH+pUDMLnKjFnuuyCrsMeHDVEdLCE94
	 KnuZfOFzHKjjB5GPl/HBmwXzokhoZlGRrZfjpiTIoM03am6e0MRqs3EOVms+bog17U
	 KHQMvCON8AnJi+GZxYI5UJVjspcVr3Ok+MLGeIvrs/JGCXAzG3NGXQepsP7cqrAbn3
	 W7v9XfLGg/sA7ZustnFaRtLrUm0D+twSxvvjN/jpXnNOwxXH8nWdiS2AHUBqyQsLiQ
	 Mf5h+p8nXatcAdjhAQ9aNXoK/aFAwrUO85afSrcMq73+65tLKfJ4JPYQMllauR6EH4
	 Sxp89ML+RIENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6AC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043219358.27700.14091280292339337727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4df08ec89d98e9a14918209f5c4909951e60b5365e1180cec56280b84906f7
Date: Fri, 20 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750432193
