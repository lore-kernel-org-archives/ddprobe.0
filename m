Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8A61BD9F0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756312794; cv=none; b=bT3B1eTwJQX1L/yuUY8mXmta92Hl/yBQ3iEAzhPS0AVUhHFDjXiQWr3XCop7gDqujVKGsfQ9C2f8XxYrQ9hNvd7VXNIU/Lg/20bRS7mscvJGqwSLVmQYmgitIZqMUG6UE2g0FlpbJXlaodkq/atnEVmF355NX1gM4M24HS33ms8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756312794; c=relaxed/simple;
	bh=mIFRUNKWRWX3NZ8IcA13Dms1140fawfwNwu7dmp66Yg=;
	h=To:Subject:From:Message-Id:Date; b=MAsapBB+Ypsr90iL7DwKbOxanF+BXLJwtSk1LY/egcWuMqKQO78z10WXKMb/M4TL4+Sf5xd0LZlLEByincGdJCZriA+SocTrMhLE8TtE6rtKRFxct5qP34ZwKYVH/iNBHrjCMLzMxAgwqd+YhVw7g7xzJHn0bbJhDMm9JPE/b3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTiENg1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTiENg1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB47C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756312793;
	bh=mIFRUNKWRWX3NZ8IcA13Dms1140fawfwNwu7dmp66Yg=;
	h=To:Subject:From:Date:From;
	b=UTiENg1WPQSSDj8u/LF8mQfYZRly28DZvxh3BzZ/OuBjSmmP2kEmqGWFaLWaB7y3L
	 4OAHLsAH0TdIRQ1j4eW8t6kxrmIhdV0fwyktsyjCLhLzZyIczgv1p6/pgPeM/p8n76
	 XSMJPWHZ/Q+uDo78lIjRua561vUv28+qkx3hZfGnHGkbEdv2cNQ2kFDv7SGhJgav2F
	 sAM+IMQouF8Xig3wIS0GQOBdbja9N5h6kdUskqdYc9TOnQ98bClEEQQdFa/Kfd2edw
	 SgJGcrPEskbbKxp7Y6p10MWYOyem2a4T4UZmxq7uescjKtBkMC1y3Ni7oxhXdmtJqQ
	 nA12BG1pqDuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E552CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631279357.32175.1605172824084237961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4934ec3b7a2a42030f6abd15ac2ea67a7922cb13b5d9d8ecc99edf43b36fa74
Date: Wed, 27 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756312793
