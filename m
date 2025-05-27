Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B66413B5B3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748309994; cv=none; b=O6zSIAVFIAXNafXQf9q/Pwrgy8KyA0c9+JxSru3U75kl+V1mPSoJcBrV0eDa9IUxbrBfzZHfqRQbC710zHwt5cPiLKOBWPAEbcXNLgwTDyj7L22kBD1BK5+9dPOkVw69luAR/e2ycxRw4d0qSUpibIUDKVPhaHcILcrpFfECbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748309994; c=relaxed/simple;
	bh=2yPAAVq7z8M30NScuSS1tpoIt64Mv8Q99F2ChZkZNDE=;
	h=To:Subject:From:Message-Id:Date; b=cP6kRjZ3WmdCGlnxVF37dnnll8yDckLasGGj9Hg222Dt8IVOxW/eYnO7hNprIlv2M5g3ouwLe6vrSurfTHZb5cvonJ0tmkjdr/Xw94iqrwDpCEmPj43ORHDVyq1P1Nwu4fkWpoHAd7krH1isvdGIVfR0etcozQqmG7cUsINLYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJUk8R9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJUk8R9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748309993;
	bh=2yPAAVq7z8M30NScuSS1tpoIt64Mv8Q99F2ChZkZNDE=;
	h=To:Subject:From:Date:From;
	b=bJUk8R9cvUHGoYxMpPDy0/YRHLYgum5dRDpsMFT6nT1jXpDYF1X91j03Kp/ZwBAJO
	 OQx4nBE4wPTAhqf4E6Hsdx1GWNwvWqL5ibkuTFJdZo9REW7MAshBfqAqp3HH6wLFPx
	 q4cG8Cn7DQjqRJi4t80XsK1hknJ4w7XKDSEuQHPo9xtnUTLcd05CQwWt4BMjs4qIzs
	 1XjH6cJ++ZMl03jQxkuBWt2XbqFBXJHUFp1QQxKRTDkxbrfSX5JPnOuXYpcFap1QvY
	 1cS2VYZ5ub7KN/MM8k3zU/FlpTvM7yJcVC7x4eGTC2c0buq0QNNe8W5UfCkPS3h3Hl
	 zvsOzzJWmBxkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E800C5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830999357.32766.15601702399391807489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3941495ea536277b3c76d2b5209b2b5003a92f139037f76987dc5b7c322aabe
Date: Tue, 27 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748309993
