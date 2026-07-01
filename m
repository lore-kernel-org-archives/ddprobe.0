Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1B3245008
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782920314; cv=none; b=pVCrf5GQN0kOqGNPV/yIbFyQu9wUP+fLPCOZn+1UvIPlfuh8bu1rwNgXGGoCULrKf3FtMFBrxKt7E4qhkxuBA3OPwZC+vhGE02+Yt9WimOL18G9t+/kQij4vau/gS97qYwP00sO4fWs12waPJLOX6lPLJmoBlYDP+gzjZsCoDPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782920314; c=relaxed/simple;
	bh=jbv52P/phWNUPYkLIwIpRxk8QdmAtEQCs8y6VkXf1aY=;
	h=To:Subject:From:Message-Id:Date; b=fxqDRnbJH27c9HdgTw6FJwD+iE6rIyEgChlKZZACEbVUpBOeCk2Z9W6HfdnbfP4Tv1NH3nAtsh03bGiZnPCA9MU85sYds21JsshNJMWhH+LHIoY0nTbNRn5lHwp9B3ZAVbCa87RWE3Lv+BXCgI+UpDZ5V+5P2kShMufVP6UBXPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUtsellm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUtsellm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F0EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782920313;
	bh=jbv52P/phWNUPYkLIwIpRxk8QdmAtEQCs8y6VkXf1aY=;
	h=To:Subject:From:Date:From;
	b=ZUtsellmzrJwMpElCHKlRIKodxd/NEeXdF7oSFbI1VhKhBxbnmwuatm9dYpFd3kVO
	 zoo94Jb1Xw8EG3upviCd3wdqMLKikDCiDhTvcajulL/OtCTXgGiWgDAVwIJkmmScLF
	 v5EtfmF+5RtSIdFZ2BqZfAYhRrkzdJeXCREDUG7/u92Nz33D/3Gtir69UBLg/uUjBl
	 DmFNq761qVIT+Q0RaLi0jVGqFeWi4lW3Fq57R087b5krgE854DJU/YrSqv8/tz6LhK
	 k4YhfYmVIKp1t9Ll7P/9wVQvsG2Xajf4oJKCjAQbZhncPUSipDt2Ivf3E9frjHPuw/
	 aoxFQABAHuStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC0C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292031368.29493.7081930146163134933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0368193ded87e9a44aeefc9041354f56f45c4761e07b246e56bb9d3f4db70532
Date: Wed, 01 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782920313
