Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B232DCC1C
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748054394; cv=none; b=qOAgc9oPV8tIlmwYgbEY9mrjeED/03ht0h0W2i4iUAPc/eK5PlLoXUapMJn+b47ovjP4a8LANRJL5hUTPMUxMVHBn1qTL4UwqE80N9UR8Bfp5aM+fPLjg8MQCl8iGa+Zhua5VvJOmFxLCDnpJhSNvrMYPeXdS2u4DjxczoXwOsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748054394; c=relaxed/simple;
	bh=qDYQPy1FGVmVdeFlC35LKbnHNr084b3zKliBiJksdXo=;
	h=To:Subject:From:Message-Id:Date; b=V5EVquxRBhkAawh3QtZ/1ul4GuByscYZv3iQBRtxLXZrHyr/XV0fSMAFGYedFFXRPB949AtQu5kuabq5e8yMpmUdG+yQjLGUCSArTBIS4wRSfT7iNksJ8aPAe/Bpz9PvrkGJl+Yh4W5FeCMlxpoBg9sN0MIwV1VhhgKOGoiYCeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQVsU3Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQVsU3Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B7EC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748054393;
	bh=qDYQPy1FGVmVdeFlC35LKbnHNr084b3zKliBiJksdXo=;
	h=To:Subject:From:Date:From;
	b=EQVsU3UycH/0ZY4DTFMQj435QqkctppVUQ3PHjtX9lCIhgn/MCz17e9uIhYvIR0K+
	 nLAZI2t/RtL5/Mf5VeZijEUwQFhqt46eSKx1SbzIxP23hm+OHcfb3f9hbQ1xZkmxdO
	 uzWroumdSNsnBDXLgNhE119dvqAczdStqtp2MgKI74E5xB6Run4qR0PXcU8g3q7gX1
	 UVRMamba+c4xVqBlLpbzVizZfal3kbyOuY/jMncLOZCQkkmFdhYwtTtK+Cyaj52wI6
	 pxpOMI3sdb2Rg5iMn9QyBsztEjHVcYuqphR/5lqHB4zs4oquCfyU3EmjCSFc4GphQD
	 qx8q4L7lucQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91909C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805439358.30566.12114209532855302740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cc2df40a7b68db3d7c8fcd0528fe6738a1ecb7cacf5d2ecfb07793283be3a2
Date: Sat, 24 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748054393
