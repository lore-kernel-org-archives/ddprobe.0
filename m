Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F064481CD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725601554; cv=none; b=ZRPbnVvBAELWoS6WlVb6OX1bWDgRqAWRaMsX1kH7qZkLHWdFrFUbszQ1hO7D6ewe+c/H3c9BQuP/XyVkF28TBV2ooEHIF01Mk+pgtOtZ3qoMW+zxV7GzTMtF+YWKBec2tiwR79h8nV2vLfwQsLXmCNyZJwW/MUmJinuDYQS8Lec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725601554; c=relaxed/simple;
	bh=AGmo3xWTAr5JTsgztnz/uno2pwGfqfhYFAuHPoZh96Q=;
	h=To:Subject:From:Message-Id:Date; b=W8fTFpHlhE0+8GGhvsapuXPNxdViWnuzmKUnJ3tnPHefgBuCoBwBa6EBITR28DBoxvgVZx8CM2/SiMqxb7RdQ9DSZL4Z1gNdYoUuOFK6Tz8wOgKmXV5JEK3rE3JDdbQnH+AcXYhzqWNJwMJSUoyfWh4QNbZBlioGIaye9AmUUFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbL0sZKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbL0sZKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39F3C4CEC8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725601553;
	bh=AGmo3xWTAr5JTsgztnz/uno2pwGfqfhYFAuHPoZh96Q=;
	h=To:Subject:From:Date:From;
	b=tbL0sZKTPAc2Yxt2DjU/hzzC5rqWj3vx2dL592RrSzoPrlyNFORZvP0FA1Gd4Hi3T
	 64oRcrQ0hd6D01qhKA5DDpmBL95L7zRFfkMz1al74unRg2amJTpC1jkclnsOiNuLIa
	 x5Qbf681TrME3r62cCKucEXxKGfdKE8Q5XIRwyykLDVRTFzXu1ZkAWXGGYO1AwAJS5
	 5MMAkZP2LqoqN0N7tcOv8+qr8PQ8oSlN3hhgwkCCjh57yb8iZVPfCHA0ztKtL1oOsH
	 LXNWlNCvRrfV+BkJsmwObiu87/zHc1sjpgq8yOfKnataN5/g9lV09VWUkzvrwUIvaE
	 UvIfAISmBws2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A157DCD5BDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172560155362.11202.5044321556082769907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3370702248a1587ed83cc22ee0335c153b0dd28a6a1b646595c419f29317d64a
Date: Fri, 06 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725601553
