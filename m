Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261322D5C99
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749814194; cv=none; b=fisLDxD0Nj+fnh8sXP0jXmt4hX1lL1DiYtmA+rBe7/xm9e1uYoglUsLdp0CjNZuzxRyWNLRy+Zk5PlHHFnaQEFTJ0ZdGONu2RJ1MuEeXxStJkdonV5x9EGQdsJj6WNI3KneuAUe9BXyZ59eb3ZSy9I6O+pM5mjYOd22B8FB/80M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749814194; c=relaxed/simple;
	bh=g+HA0F38fRRheWLGRIA4Z0QhhJNVjj8pMPkUZMLxsyo=;
	h=To:Subject:From:Message-Id:Date; b=bzCTck40DVWu3LfitfZVFmKcxZcszTd7NPJ2j87hId3ZMzQAXihSomJpPYPqKxTRKmZW7TH0xBpmgEVWFPwROIQsnbVwvjCuYo3ugzFTsUTtXAEAuxqYaSle6SPx+Kd9fxQRW0VnY3LTMdVLjI8/fQkPI33mlfxm+IYXg+N2r8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVkFNrg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVkFNrg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749814193;
	bh=g+HA0F38fRRheWLGRIA4Z0QhhJNVjj8pMPkUZMLxsyo=;
	h=To:Subject:From:Date:From;
	b=pVkFNrg4hy+M1eFYbcxUjB0Kp8SUAMfsT2F1Amv3LXDgRludn8uAlsAr476oxiGmD
	 LztfqyQZweWiGDYc2cAMQlaxLSHydPLtKQImodVNfqPcYdLuFCojmiGfNwN7MZJHDR
	 wcS+oUaAUr50SElniDMZCE22VFsym7ZsGUib39ebIEeee6XXKKz33YU12yaC1q2lP2
	 imhb+ocyVJExOErD1VLJy7C+JAF2yBtVR9CEwxWgrqBOgOS9rTodaffYriI7nnv0ZT
	 nSHVxZco1hP2JTOUwyKvR+hrW7B3+Ue95wG0Yqtxc4hO9ww4mhs2vtgtjmRBTADnvq
	 twcB1RMbCem9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAA4C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981419362.18598.755573142755195464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc174f8359fe26ae60a6165bab3d9b53dcd55b1da1f0cc73700c0a9ab3b7d615
Date: Fri, 13 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749814193
