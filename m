Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEF33C465
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749095394; cv=none; b=ro83V3J30cfmWrSt5LOBUApZe96lpRsIsWIz55K/yew8xcjTfSxFbDv9xLiwjErOWzEX/SP5K5EsRdWrrfuz5v9dYC0M6WFxKdLufZpU478TjMEGWlJdD0xRFTyF1rQpnZU2LNtcbE6EUV9a9QaCCWWZsF20uur7Pcg3HEwudDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749095394; c=relaxed/simple;
	bh=diYkiiS1kRhxFcwsUx5Edu2ro04eKVa880yTaTzQ+d4=;
	h=To:Subject:From:Message-Id:Date; b=Pyz8TTphNX/X1rqouDdiCd+C/JXiysIQ3IvXYDhZgT68E9/xq6SrWDcCSizKL+8CvciDSsXnte8KeueakUt6Aw4e5Pt3ad8HIVJxZJJWgUiISNwWtoyNwFpiuy/4dAJ2kW4jj5Yu5WPchavrRPk/fJH322H1oCASO2AaJGS++Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZNfUyfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZNfUyfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749095393;
	bh=diYkiiS1kRhxFcwsUx5Edu2ro04eKVa880yTaTzQ+d4=;
	h=To:Subject:From:Date:From;
	b=fZNfUyfHhW29+aEss0WxL9U2+ZXndWwkk3Goj4Lo4nqnGDsA41fbZ2QqKUlP/Byjc
	 6QmPb3wa/QvJGyNh1lRbnW3WQh/T2T30MJ0igPasfGXW/rXdNl0c0iDpEXFwAzROWd
	 MKwLlUhXeHiTCJA06p+oi6C1R2vCDsqLHORGw3XW0K4ICchHYbD+v66iB3oi70l6cg
	 vMOjhX3SRNm2g/qvbMvzuxsQpSmCbCjodZh6FQoD47pUn7s+566bD+V7PpmCmCEh97
	 mNPf6LOrB+XpXsW9H+OGM23VPjNkSWiZDSFblFy1yljNUQYjzETKDJmA3EAIdvT4HB
	 hzarsWpipeAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A4C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909539357.25056.1574370101406300890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429deabf4408a5ca75c3b10b77993e3cf2fcb4e54d7846c5df50df07aa194b52
Date: Thu, 05 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749095393
