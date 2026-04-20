Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF0388E63
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776678454; cv=none; b=ukZxq1xl54+ak0NI132Vdc3NcI/ETMXUxQHp2akA3Sf0+Fb/lv6sMsZoThwXCmcwmfW2vx8+DeC7IrbH6mbay0MAs8IXwb06J9TS7thx5gJIl4hUQzNoXhiFgcHAoZbfapLr/2SdhkYldQDRiEFy4QGESLEi1f8uW7DIOYCha0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776678454; c=relaxed/simple;
	bh=StPEh1n3XLQbe2LbGYqHXJ+d1ERhDOz5up0OhesYxTo=;
	h=To:Subject:From:Message-Id:Date; b=bTDMDDGCNxH+gu0RJQGhK+uIb6HHytGYkUTSIJlRGV7gI4WOndl96l1l7p/LE1+G9FLRYhpt8yIsQMCpX1GWVQz7EL+ct6WCmLrr3fbCmEHW1HTk/gZueBonQwVl62pTTFCBlRhezKS+4yICbPhieHYzGPamJ/yCRdag5KhiUFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuVuyH6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuVuyH6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1223C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776678453;
	bh=StPEh1n3XLQbe2LbGYqHXJ+d1ERhDOz5up0OhesYxTo=;
	h=To:Subject:From:Date:From;
	b=WuVuyH6lveol1fVhlcK0WDZCx6UfJQvqUeumrVPOeBq9M6HSKKqa67LnHTxqJr4Mo
	 49mniLoPi3YMMWTmDtA9Xhfv1GcLw3NexUJmnUH8gmEaDB691PbKR3Dd8zJfnT7iqT
	 M/9BaSB9w8eatVjcGGnEsVQ7yYp0Ga75gGb1oqCIKLpShPqRhKfHo2ewZQ4vJ3TIPc
	 1DPLKk4IQemDFYBtRjhWndNNVRQqtM4qyxLRRvdBYUtajZesSRVJYOIDW6+clZ7WIE
	 q3vgcRpezW6cZGV/756A1Y4JnElfBX4g6Fx7hEfGsOWm+1at7Fq88Uwegsv8oxkvik
	 qbJKt07avgSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B5F557F2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667845371.14932.6510569398632811805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029056fcafbae290660c14e30f20b8f39f2e9275bede5f201fc357bc25bac599
Date: Mon, 20 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776678453
