Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DCCEEBB
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777132654; cv=none; b=hRcYq7zsI65TKfK8FlsqJkuM2035F3gxh2LR3a5JdXmjXu6rrF1ZBvo4HwjX1a79OO/B/SOvTYG8LJ69WlL8HVCGMBUnUYy6eYlA0rMn7nLnPHoLqzSSeeEh7vRN50CxWwoiHkcvtzWfFPwR07EMtQiLoHU/iodNefQpI1M4fkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777132654; c=relaxed/simple;
	bh=ENCCmk+F4QC3esZQs8v2Whi75eQ5UrUV/Gwqv6fgHKI=;
	h=To:Subject:From:Message-Id:Date; b=LYNrDEyoBBLc1OzynUrXK6c+298n5Cf9mTrTPn9XMcP8kXk7jG3KNM4u3lCwE/tA9VtCtAcQo/AXW5tyMCHnkURGmzYvWPAx+CSng6Xc4HlkYsgQL628NfdVrzIHfHl0oGGEUKFzQuZTajct1gbo/lt7wn/JrWctu7BE9rqPk9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRudmEVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRudmEVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADE2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777132653;
	bh=ENCCmk+F4QC3esZQs8v2Whi75eQ5UrUV/Gwqv6fgHKI=;
	h=To:Subject:From:Date:From;
	b=hRudmEVKmctbINoV2f4MN1lqZMKIAdqTghT60m7WuuHtzrBX+nNsIgwf8qC6Giq1E
	 uUHKM+fALBZKO1nEk2tKRMVsDkRLlgfBAQDAAvzi/CxjTs2CmKtT0IvqCuOsH8Ymvn
	 InGxUr7hMSXBvqSIxsU9Xbmh32y9l1n2A7WIBroelNwoywRPh1K0PFa2W6glQ9mnng
	 N8k0oAp3S6dJC4BgUHGJ+U/GRcFWZ8irCdTHSy0qPNcm4fVd/Me615LZ6yxHeSTybf
	 vAZ3qQTXyk2UmIhoZZbNgqbC7bDjuxy/KYIVDpw5fqslaGX1WuOZyLLPVBxjLzYHnY
	 L1wh3TGDZiYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B3FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713265368.2348.12562938971486267603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f755e31431ab1d36e9cebba45ddb56a20f70d713c4c2fcb18d29456fb06807c
Date: Sat, 25 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777132653
