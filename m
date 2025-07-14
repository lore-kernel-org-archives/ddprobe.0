Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B56726AA8F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752516594; cv=none; b=VEdu+fUjexIyXwz+PWsmiGH6a3F1kw+KUWSSzdHQ7VJSafGVvGsoyNnP00F1VyTJn58Ka43lg8p/SsHTFvppLWYpsZduRZJp+oHmbKHLRgeABksVIIhY2gPhGq86519yZI7ankWnqytnKbqRFa6lKT38tSke8cTMBDYNBhCtyu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752516594; c=relaxed/simple;
	bh=EzXDkwD4yILwfICA95VTlTNUrvRcY9VccM/RVBm/cnQ=;
	h=To:Subject:From:Message-Id:Date; b=N0Y3Z0FJo1r3+EROKaMK9A/2o/U/9H8PpqeL1UDnVwaLqt2ERxxYeXhbMTWUwmAnbNFO4WKREB6n6G4XOoo2h50uWb2Lr/4c3SVANyZLl32CQUvz6nOEN7LDsK9cDTZ53wDLqWJAXVgkGdL/V02KladtML9xi+kbFHlS/Z7m0Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtAKQEfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtAKQEfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF60C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752516593;
	bh=EzXDkwD4yILwfICA95VTlTNUrvRcY9VccM/RVBm/cnQ=;
	h=To:Subject:From:Date:From;
	b=dtAKQEfD/WE48AeJRp/KjqAiY3cM8KeZhzvcIxTov7+KVWlGGl8MyXoyBuOw5wat3
	 UmhtyZZ05GgeofW/kpuo3qBSzxFpR2tPjfOGSWVXdz1oXb5ItSEPvs1FPxIjiulXMo
	 PuIoao59vC5X5tc5VVVEO6J3KZrZ8vfqQxAYLFH/LbDPa0mjOwvW0RrYTroDXCc+c4
	 RbcBZlRJiC+zSZsCdoPs83Nq6XrW+hMMKm30eZld0tvXBkvo0gvD3ozSwu9v0IqkpS
	 v+/5NmG96CRhmDgNbmaJnR0OqlOTWULQXAWzMIBFUS+l5UJJXeDsxe2/XU+UBLO6PK
	 RLHUjBNHTVGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D024C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251659363.27228.12540003593656462664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fef570da8ae5020a1cce93404b1561732c777b8af1b633d6fcb8b50db48545d
Date: Mon, 14 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752516593
