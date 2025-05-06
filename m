Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3288F18EB0
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746566394; cv=none; b=RHTBBXf479R7vsc2K30VK6zwsSJyn8Oob6uztyWbcNpUCxRjx+XyTpJjxj02mRipZOG7hHkQzn9NL1wFPMqWwPMJnCKz1fYgrIwXkDkM/iJbvBnX3PGTVsWBAmNVDJ7A2HGeNOYEDXU1q709AXwmO94HfMmA/qysVXLAlPLAKnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746566394; c=relaxed/simple;
	bh=Q8BaUBLhDNvwAF6b2uK/W87K3odFpMlnFc4Qzh3oLxg=;
	h=To:Subject:From:Message-Id:Date; b=giEYqSZWZjsvziLwhWGs+WdJKPxcfiJvDllstZi/o0rzVHJklnl4Ovhdrt4gszsoN1kv1rOqzbvuQbFlr1NOSoUz2p/cDqHr26m+lzkXfBZaj9b6O/S1f3HL8HN7WrA5kHE60X5vEr/VHmC3Llhpe9yPCX3F4Z04XHYcWfQRbJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIVUxykY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIVUxykY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D868C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746566393;
	bh=Q8BaUBLhDNvwAF6b2uK/W87K3odFpMlnFc4Qzh3oLxg=;
	h=To:Subject:From:Date:From;
	b=kIVUxykYg9dC32jkQKSvfe3cZd9pk5RWZ1Lhgn2SUEYzWbzy7e5VsmyTSFq24WSxL
	 BzbnhmGlBhsu3fl1PLg/wPk2V2lVFSs/HsZ3DQl2fCX7V6nu+Nn6/mC3DiCHI6fPR3
	 Tu9vPy7F5RSQ1cMh7J28rr6Xz5VB2Ve5crDQHFhZs6q9booao0ol7pDZR6Kr7D92Um
	 FBSbdtZD2mvGr+qxnhQJG2jlJnNyxPpphVwQOcKsh9QYdd1fcsgE90Y2ViCNBv+imP
	 KZPFwnjP/qUkbRvBPjLJF83RiYtXEtbf41eRT6PqA5U6cAxTjPC84DH+IQV8Nb+TB3
	 OUNhYFh60VSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDABC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656639357.4973.5995208928748280361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b63fd633d8838beaca0f82d826116aaca4f2265d0608ae825f95bb4667d90f9
Date: Tue, 06 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746566393
