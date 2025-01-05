Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495476F2F2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736052354; cv=none; b=FAoZozvShLpQHBcdC1sGgUg2zLoWvWY1b/vFMzG9HzXDn4zgw22xnAMmji8BSEH6cBrliFjrw1Yq2YlYufBFyAtpNZIj2MBk3JHKlQKW6ixK9hky4H2CSarR4rz8MJuKW8zxxqyhibYK+CMQ8brJjxsAmRtQaZAx+Xaiz9g96FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736052354; c=relaxed/simple;
	bh=hYOjLZqs4Jh2cQJud1gbSrDaRvu/rBEHXs9ups5allI=;
	h=To:Subject:From:Message-Id:Date; b=LNCMCGL6Kb42MKyJ2U9kWWmA2onp2MiSOSHW4X+mZQ7kBzQhykaQKTdVsSLG0yR5l8iskmCR9Q/7iME+jOZNeFtvMf5JFZ/JmQzbsvLe+Z0wrwropVjDPAP5CRWyc8P4cmvg+IshejKxgumtHdqpHzRkThBBsDVwpc47KWgGDt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZfzPV1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZfzPV1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C61C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736052353;
	bh=hYOjLZqs4Jh2cQJud1gbSrDaRvu/rBEHXs9ups5allI=;
	h=To:Subject:From:Date:From;
	b=SZfzPV1Gch2trdo3lKcBDXqPasIRdwVU81of+YWz9PETMxp9tstmwFZQ/aZsldOi/
	 NDJ7wxuUGoqUtHnzn6qxUQ+wRD4vbvI1DSziUs5XV0IKMIdTtHuhf17jwLxUwO3YmR
	 Je3DW2FsxJO4ofO0ag37jDQdupCfN+jPIEEfPm8DWUy3T5adiI9a7TSrQj3zaUTi37
	 xStleCOYUJClfmJ/wd/aIHDk0q8jzqfR6cmQ6GVDnmz8M7Q4dHgV0qK96QdTXRtvGG
	 mhBvReI0wqdJ1uJVDOcECNsREpdyvJ4VvKGo79+CgLP94WXLkSRJMdG8szLRwozyHF
	 Y/XWVFc0Gj66Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5913E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605235364.27118.14961335356722892459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77bed8259e360a4485934bc5c45173b4825a54a2097b53b07b0f6a6b66bdbfc
Date: Sun, 05 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736052353
