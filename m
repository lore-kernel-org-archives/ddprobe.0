Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D182DFA4D
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744662594; cv=none; b=tmTtUkWElEDKSgO+Xl/swFUAibILngRTSDWSh3I2LcoyLKMcZ1KkHX4K7IZELhrw2ff5cVYChNYz8GB45VAzlS9A/E6i3fyCnGWu9A9N5FkhcAhFYObdb97wdDgM9Sn3ePTNMvWfZ2mG39P8J6foAYwNtEOCq57vu8cmHQxoJgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744662594; c=relaxed/simple;
	bh=I7S1fLRihLubqRD8SR7tBromECy/BHGo6AXfDqjW/i0=;
	h=To:Subject:From:Message-Id:Date; b=cCKTMLrBa9pvUtO/FJOhJAQ4YJZaa2PlxNNrvD/CesWI8KCPL+RuJU7F8ooTdCtWOPc5Wf3ENyAVddxVtylZdC+lwQqJd4fJ4k0mjQoROzhalzam05KaPLSpLJrQg2BcYKVQwouBeEufyW0lW3hj8a25fiQwYKFispS86dylF2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlQhi9+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlQhi9+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B79C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744662593;
	bh=I7S1fLRihLubqRD8SR7tBromECy/BHGo6AXfDqjW/i0=;
	h=To:Subject:From:Date:From;
	b=YlQhi9+IcUwk557ZVhwLjbll3FoEqTCkxBeCLq+GmOsa17wOU1KnYnNv96XnWZQwR
	 RBJXrCwih4XEeGV23+EckBL63X/DdPdLFCJPPOdulUHJBzsoaWJeDRh3xOpb6K343P
	 uAdLvy53gDKygGHqYvMiTUhnqGWcktJenmfO27yXPN2YCIaOIOfA5uGR1U2j/31Q8E
	 paBPLNdn+rm3NMnuuB7FtQga/FbKgJKBkU0AhPCGM7WNks/p0d5bxFXxfItbuaZa94
	 HeEM3VxMuLpnI5Ap5CLCJa/lqTmD6sQGcfpqJRagFV5N3sps9sbVTwSLv349nVU2dI
	 4qRY7C2ieCJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBDC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466259359.7790.12441906917000375958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0ad9b393a54975044ad9f47f0e13a385de560ef198edcd08d8e1e53e7f9b98
Date: Mon, 14 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744662593
