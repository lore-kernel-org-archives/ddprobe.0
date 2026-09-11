Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FACB3793AC
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789148435; cv=none; b=RBJSCbkqP07EAlhKt/VPPEItvXbH7rE2ZjzOxgQ+4mCJlQRel1NzwZpaFvGRR9nCPHdT7KjMJFDOudqwSYDkKwRWvcp6UCReZ3iwJexGlc9Oy96RKZs51CHwK8gPtRrB64EcFCnMfD+Ph5VyUKYlABVDMsnNwoal+Ljd1jNey3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789148435; c=relaxed/simple;
	bh=1spXdWORspaUtdADeySd38Iw5iY5VTzwbvyPyxhQpGM=;
	h=To:Subject:From:Message-Id:Date; b=Y0mvIFGGWG0Y3CX4TXhoY7ZKbnZPfLdAJNPZacbXkz5DHE9gz7V4bFamwM5er18DyVptItLl0gAZAxjIBA+WCYrBC+zqN6r+tl7PIQFY7bwIXAHOrVW6nooYf3ThgsL851J/g1yTtQyuyTMzoHPbWLhpKQBTohMDeqBZEUEt39w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH3hO3aI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH3hO3aI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3038C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789148433;
	bh=1spXdWORspaUtdADeySd38Iw5iY5VTzwbvyPyxhQpGM=;
	h=To:Subject:From:Date:From;
	b=QH3hO3aIZJldCyIYQYDEkfeNyQltDus/eDVpFiATkNnDZ2m6GVhO6FzWeQnmi9NEL
	 0fkQ73cTWdXd/HNDFo3JArT7VlVXC3s0l2oQCPJoRTLf3VsrfuVuXzqqJPsDFKC3Eb
	 VHkokKZhbOFgAzDJjHOh5c7mkQ5ELYMYxJ3ruN6dOkhfxLRAkhA43lgAhasB/X03Nl
	 Guf5g7VRT9HIR1c2uBgzTSArdRvQFH6wp5/hRYpUvy9WrrjnPDV5LoX75Mzt9jxXyA
	 mcVE2ImwjiuH8VX9RkXwpoNi7LDP4YPZCEcczoXJGhwLUJF5+9Ef5mmqewJDzuOJqn
	 THdtY91/zhQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA33AC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914843368.16147.2037434921096961904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c4b1ab8c0299f9279cd3a8cb730ad7f0ee5ba0b2a0bea45ecc3b4a0c11b462
Date: Fri, 11 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789148433
