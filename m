Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2126C149C6F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752886194; cv=none; b=d/rb79E8zLnh9o5a0yIkIjDJ+nCNrEDiwoChcw6zwJQzHSkwZObVC5VBzYn2Is67oSnBlYYJzhJCVGNjzMgmt6Z8FqQqQjdKZYbEdYQY5ws5B0cTnf2p549e6RKOsoG0Q3kPXRRJNx7MJBoylgITyUzJsfVAZNy3pWBWALcCTPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752886194; c=relaxed/simple;
	bh=iKXmRZkf9zIjgg8npXwk4uL/Hong2vb3JmT+tLHbGZk=;
	h=To:Subject:From:Message-Id:Date; b=qcKUNqwHjYKK1Uf4x6zMNTeKuMhFViPC9D2YNEMLo1ryeHGiayU6HnW1IEW2ZtGDvRJCIu5V+rKkzTN3xk+kty+B2DHfe1XI/j3vgymeitgB2hnSgb/BL8qYPjeDJID9ACWHYKgG3ti4pb3CF1AM676DVZFID683JwfaVB/rC04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWzfNcKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWzfNcKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752886193;
	bh=iKXmRZkf9zIjgg8npXwk4uL/Hong2vb3JmT+tLHbGZk=;
	h=To:Subject:From:Date:From;
	b=lWzfNcKbkHCnwiBaGhQtTWtSr9kJoVI2YRIK11cSvbFd8O9glgIcBR7Ndqd6fnbN0
	 e/UfqilIVXoIjrV9JxIIJTFIot5ZK/cfNJJTv4IM1LFjJdbTJxn/BGb/y33iMNblT1
	 yQqULjZYRfiWa3+wvjm6nO4ASf42fCxiNlMGfi3OSV8Njtc/dTRCRRhxqc+/eAYfVA
	 rPgBlUujtGqLJswXU2vjQIa5UUyPLfiZNygCT0LM6CY23tBJ+50TtzLMm8XsJwJm2O
	 hjiWc9OF/hrxFmph6FuHAOPys/OtuG8vJwfr+JCfmCQjtsMBsQeNgVvD/Lq0MkXdIE
	 B3T3n374CKOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91763C83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288619358.22643.721165151010329645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31a5a98f9efccfc1ff2edeeb7554587cf2cf587a1f5806d66d509d925289a17
Date: Sat, 19 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752886193
