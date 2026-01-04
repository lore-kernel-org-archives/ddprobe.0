Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FD229992A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767494634; cv=none; b=eN21oOThDnBR6GMUmqAqf204pxRBFNQN6pALNzO+EYyCvActHqFzb+KtjwS/e7YyTl05s1f+rZef3gWaIsx9OFyhtJGgjbGxFMZLj80Ut8Ig1h/fCCnqh7oPnQUi/ZK26McQd1yS96pn7CV9Tq1GIUzckMzUFi2iHKl2+cELnmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767494634; c=relaxed/simple;
	bh=yj5w1iHoXs/G5fDmA6BXKQZ+B3kDTKwixlXH9oAPsV8=;
	h=To:Subject:From:Message-Id:Date; b=GpBufpyreo04PXeETSeGPDCLiTcKvExQC+ne6EL6P9ntSSLVmGiAaCJ7v5//xQHjyzw7+9IKjQJiKqKyqQB+Xcd62/7nJZeHtQyIF3rsRu5kbkiptnVrW59D7IeLJB5fEjMRQMNo8XLNGgrHaBnZqvhgiyzY+QBpLsyjMgu9Xmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH/9mKtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH/9mKtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D0AC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767494633;
	bh=yj5w1iHoXs/G5fDmA6BXKQZ+B3kDTKwixlXH9oAPsV8=;
	h=To:Subject:From:Date:From;
	b=XH/9mKtqLxSpVVklxcLK47ty2QdcO8bmO6bBoaSyh8TOf6JuFRGG5dER/hGeJGNAZ
	 mHR1I/iqw5wviNOuYb06w9Bee+NIjuc+7Q6X0nPWV7Y3MM98YDgvEN5xNpWXaAh1AX
	 PcrDWKEbQHo8OPe9T7xUcZC+FtA+Fp6yYmXNW/IZjgJBxrnk9hoMHc8G3iqFjaQbGS
	 X0ZNammAIy4UXzs4riPCcG4qryavWCNJrRc1w9J0FXh33fMznsFIqxdw8fgMMZQq/0
	 juWKbp119n9jtYICGTiCS4U38G/YJiRoiMsrHh0czR67qMG9Ug2jS/l9blMXA7Zo2J
	 ieYuINjm3B00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572EC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749463360.1878.9096894631795474698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463ec8446fbbae1e1cf4f233532c2f054c5f53cec7b3c6528c56dd3bf0741b76
Date: Sun, 04 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767494633
