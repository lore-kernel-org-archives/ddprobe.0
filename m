Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B028153825
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713803423; cv=none; b=XURIvg9pzlMacHZ3w9ISM7LN022P8RXM4To7GPFG3BNK8V6H0+na2Vwerm3s5i93c0V/MC3p6X4MKvPcbww4bfOZUdskoDQa0mQXjYkKs2Y45lsSQuf+69lscDrO6kiw+hyb8VS6CIV8H3TAVvaa4SvHD0qO41VfFjB8edlCDuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713803423; c=relaxed/simple;
	bh=GNH/9sKAINXQy2XUcL5osJr9n0/S5qF/c2YsHyinWmU=;
	h=To:Subject:From:Message-Id:Date; b=CQx31XxKjdk6RiCwHyRnUi4e1+8c6KpKbu3Fupc1xKdI+xpFH9MQ02mwzUwxpCVzenGx25ULh2eHfjg1GgcFD5LpIipJH9FuI+/hmWaeAoJrZ9Xd/UzK4R280LKFXup/Hmdn1TnsCm1XT2tvg9OW/id+vkeZ8lSFmFoHZsvcO0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn6bR/CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn6bR/CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF5C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713803422;
	bh=GNH/9sKAINXQy2XUcL5osJr9n0/S5qF/c2YsHyinWmU=;
	h=To:Subject:From:Date:From;
	b=Cn6bR/CWBqo9gbsdQ9lEIOIVoqngYlzauRwHXWaBtRLE4BBlQm2Q7YnI2uD2PYAin
	 qgqhqaWtLzixviE2H0rGmOUEyo34daN2g+BFjGvZRyVETrp8n9rFv/kNzlMcHJlnUz
	 pKbfhvqZc/XBwafCrIrehdpBQXYwQMYttVcTFWlO1CPLZ97mgxp7zwbIWW5qNojerT
	 mFk7U6bbf5QZWoI0gl+GqTOtXM9h43ALDHJ6qx4XW+DgBwhp0y42WyPeor0spugWiJ
	 F0pozS4lptyvFq7OKph/rCbH6GFma/5mRkuVwfnflHXw4yWPo659CiuNDN+O8Dok/o
	 /QrccqRR4BGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F25C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380342278.22144.4698248750772535421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254fcbc3477ceef97fb9f612e2d8a0dd84516b0a0a549c42434e982def0625d9
Date: Mon, 22 Apr 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713803422
