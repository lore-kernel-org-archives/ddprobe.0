Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633A75012BD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789744834; cv=none; b=e3y1a9cm9dYC8kLY8g8cK3n/np+i2iDILucky2yBxXo6BUqlOrriDvclgkah+Js5PyxqEZeEZFsqBGS5wwR8jR9iNOzycsNrniQM46e/k9zf482xDMLWGUyNe7kFPOqG/5CJYD5HnO1Kq8Za3nFPOPOnP+wbK4Om+ofdWSQf1+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789744834; c=relaxed/simple;
	bh=paPfomhCymxK0Om1y1D/zNy9k6iE08vCf2gR6/4xIFA=;
	h=To:Subject:From:Message-Id:Date; b=ClIcI0X7ghrVSYkM/iKL1Zv5SCkPfAr7bZzEeNBwHx3vzTreS3b/vw3PnFWXidSlVIVghGROqBxkxQ27ZQpJp9eOLNw5wYA3hxDTDnY8MyiXbBTH4SoPBWTC+gsXBqQuN8yQLirjtFLKVDmZyXI7JfLaEmQQq2TwFoQxH44LWos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYp6DV0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYp6DV0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D357AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789744833;
	bh=paPfomhCymxK0Om1y1D/zNy9k6iE08vCf2gR6/4xIFA=;
	h=To:Subject:From:Date:From;
	b=DYp6DV0j9h2egVeoSlg5NzMqsp69EFgaEqOywcTqHIrDhX5ASJK//d4alObpQ6vYn
	 rBql9plZ0YqGBXj5hCGjl+yTx9yXzmcciu+41j2ve8sLifqCbmnLMKcCQ19nv5qrgH
	 OVic/mGA0yoZnXBZGWZYMFURQcR0NgHEUmwyT2E9+n9cqd/WCdgrM+Q4Ldrq2Dz7bb
	 3wjji4ZcJAO9hHxRhXMABynPMR/YE2t3MLWUpCNQVoL7wRelxCiH3uMLXVsHGzcpRG
	 w92jxsZpndepWDbKDQ16a1evqyrV3ykHocj3FrzyItosjIabN7C91ne0gwJfmTDR2J
	 jG3abExDm7ieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA00C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974483369.2906.10841233135154352136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3118f124bd477d26f510da450e2cd1e00357fed4aa4cdb6468d61015fa56728
Date: Fri, 18 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789744833
