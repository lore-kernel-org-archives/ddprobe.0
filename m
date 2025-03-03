Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379AB4A3C
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740963534; cv=none; b=YIc6GfXtOu5s47KXwKy6yPXLjYiL0L2wVBkeJ0cORlpIkB8oGPKV47yCexyeVAynQxY6jYWEiRXnKYcVJxYwnKfJJftcFRoSQ6DGOD/Wt6lZuOjEGPfsw60HYZ5nfvRbpBWB0Dcpj8v1ozDdFD1Z6vu01clo1TDb6ayAmAP6vyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740963534; c=relaxed/simple;
	bh=txkL84fWQf+r0jqJJCZ+fH1Z0Z5Jzk4bTEYMw9Da4xQ=;
	h=To:Subject:From:Message-Id:Date; b=GOa5xrRvmEsO+vc4I7YZH2wThTPT8U5khM2Kd7Tkh/5s1cMzMx8a82drS5pupi4t2D8Zhv9skQTD1KQMeFhzXYbeMm0rUMT2JS+QCKzyyRw92EjR/3aJFYX6IEC6bYlD2T+qtD9ekSe0o53RtY2yVNKqRUnTfQ13egD/NuTWkVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx+zcvLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx+zcvLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB6BC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740963533;
	bh=txkL84fWQf+r0jqJJCZ+fH1Z0Z5Jzk4bTEYMw9Da4xQ=;
	h=To:Subject:From:Date:From;
	b=rx+zcvLGNmSTr2rTn0LW5Z8/CPHQ1HnnpOKLDPks6kZ4xLl+LRpzdVZSM9HSY2CtD
	 /GL/mFxH3ZLUr4S9A4QfXkbpWib3+AKwAEyl8nZe9RRrZQhpqS4WBTVYoHFTFygCdu
	 xqgJdtLxcoxpPFEmBJBnE6BvEaInE5fR4dFWpNmbPihFDrhL8MS5XOPrYj4zoW+yC1
	 hFARIIkVYPYKUZEmyMkYBg7JXyzp5b5vJXT4n4jUcDfDZ7QGpSlVICUPsSmxG4dKBE
	 YdRoOTzTVmal5X0r1VFFvRk7PotzGX/q8Te/DrqV/43JdXIJZ/YqIc0zHd0PCUYsRx
	 B+Kpe8aXWYTJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D5EC19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096353358.29409.4964752932248105685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8021f60c0b1e260792274736633c705ce2830486fac22b7be597dc50416b38
Date: Mon, 03 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740963533
