Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37030A41
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754311794; cv=none; b=iTPv+1ihZ1ozJ9gF8v1m5txuJ/MfDfZBS+vCeE//KA02XKT4O7aiRJye/NST69JqN2Wry+2GgXEwtF05kHGfwpFuZr0svvUCaf7p85yHb9NfDcWc/rXlrYqnpikRL2bp0YQqCDXhfNvCbMgINDCPL+etyxiusZMSqYBEWNLjePA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754311794; c=relaxed/simple;
	bh=QohU3VHZZMWdCcam/KY3EPcIoPyjtUv6ePaDOHCnLxw=;
	h=To:Subject:From:Message-Id:Date; b=FIfScxvXIpcUdUPgsAfqSpqZhD7Jx2BkK0Pui7FH2qMsUcnQmL5MzuciFoorFAWb/aNRNSEcSdZHRfh8o+2pLH4Of+CI1sq3bHMi4avnYsN21sjZQXjvGeCXnQla1JR62IsXHmLOwOUeMNZNhb44V32rxDsXYCSqKCgHNvnP41Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SecT8IOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SecT8IOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D36C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754311793;
	bh=QohU3VHZZMWdCcam/KY3EPcIoPyjtUv6ePaDOHCnLxw=;
	h=To:Subject:From:Date:From;
	b=SecT8IOiZPz+xHfEr2fuQlvOontajaN4zK6+JEOAf3b+UFNw+2LLCmVeFCPvCsfj0
	 rJKXgVDrTn6slZSOctaqTnApDAQwuQWO/y/AumH0HI2OVWwWYbZnmBNKTOm5DJk9Xq
	 ZfhX6o/BiasDxscYuFFcFS8WP0BmKfc9FEfGeOQocmWbzjCuM852qnnkhqz9+qDkUF
	 UM2TUkHLOpZtFU2GqYcbfAffUDXT8/gEF750q+EIiWd5C7BheMN6dyAMUn9xcleMK3
	 9vNoJgsgMb044rI7lPpVBWKP0TLx6RMXM4SdUmiZx8FyR0Wa6aOSmGFc700zXs66ZE
	 g+GcF9JUBC4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91885C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431179358.15194.9970932967233317277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82f48ecc2863243ef09ac835d8159ad19555c537ee3df2bb55d2b33e6c7ac04
Date: Mon, 04 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754311793
