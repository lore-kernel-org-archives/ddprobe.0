Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A673446AD
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762968594; cv=none; b=lMX8Fzm7uXW6G60Lth0tYmimKGtzAk+IrvN8xCFlcFAUevqye/cjp0QgEtKGTacXb5zYRYDqi95KXmj6sEHKtFXLEXRbP/N5qLmD1cqLepG6CZvSoHWofY9clUym7QEIe+nRHNOe9s1QKiGdR+BwTmbItTpDkkmHVG/x3B9/a3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762968594; c=relaxed/simple;
	bh=b/TibQ4qRnRnuKFFAa/LedokIMmxc/lJulCt3VXxosM=;
	h=To:Subject:From:Message-Id:Date; b=t1G25LWPnXxP8ZyPGboAr4H5RuQ22vCGQ51JZoT278uC4Xc5vjMqcurcATvmbryiucssMti6H+tVxTyt2uRHw0wKeS6AP2Vcu38p9gUcSWcQZ++dYXX3ZSQU0R8nFg0aSUp6+HAZNDabvjSDi6F+bRMwfDzhWsVlDW0EwawcR30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScfejJy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScfejJy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762968593;
	bh=b/TibQ4qRnRnuKFFAa/LedokIMmxc/lJulCt3VXxosM=;
	h=To:Subject:From:Date:From;
	b=ScfejJy9fyi1JIi/k++rGa21Mx7nE7Do4dp79ef0KFUd0vwJ441Jp02NPN8+mslFO
	 Rh05Wv+3g2NdX1vnMbC8tBRJ9qEzNlYe+dqf5kRqFgQiFLgQoOOd6wUAmMjItDImHD
	 P+sTWk/K5Q2zlQjvKVbDKZr0lJHeC7VqnE1tA0Ex+Qq77WN+67GrlMRMrbmxEWqRao
	 WNolTrEDGQmYn/FiIndlLg1boH+djAawm+NXeAbRHAiFbdk7+YkyW5uUM8Gca2gBzV
	 M2yLFMc4YzwBKXjJRIgQ7Ij8OdN7cLpoyANvt0oS5MmYp11zfYKtQTnu7vyWnsCAa9
	 UVUnZdVPLEYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E9BCD3429
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296859360.11543.1192467669232836388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38797852489206625acda728814f154f9f150d3f25a23bc64db312af288a5593
Date: Wed, 12 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762968593
