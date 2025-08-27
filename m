Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A61F307AFB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756334994; cv=none; b=nGa4RdSMGog+5GvhxsdgriuaOCMAhTqFU8+oA1eVsdgeQGlCuv2t2WFKrMRo34PoQzFfZDsLQ4DB+g6n25V/Q/LrpzDn/dmi2hLiytPyxMtFz6BTsIGEezqqJbBe0N8jAIr99KS0D7ZGUQR/NY2SkBLzWtOPgqPnsiBCY8ByQ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756334994; c=relaxed/simple;
	bh=NPP6AnGMaSbyJYQ+b/AC95dUb4i/piNpzof0hUyD6A8=;
	h=To:Subject:From:Message-Id:Date; b=jllpGyYr6eGFTWFZ0j7Y2lMc9WqZMnsqL8dWJeywosAEq+Y3n9CKMDeVtofmx+SIsVeyfZXxWKki5kfjlWfsohBngMAx5Pq95ydulajyCoePatqmByqclFgSrEdVnqbo+gXFSnr4Lw0DGrNZ4DS7+cVfe408R1BhGDv3S2q3BAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjLHnwxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjLHnwxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D90BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756334993;
	bh=NPP6AnGMaSbyJYQ+b/AC95dUb4i/piNpzof0hUyD6A8=;
	h=To:Subject:From:Date:From;
	b=pjLHnwxjC62gfu9VCTVZ/+NmaS/bMj7ykHtmRCt5tTUKWkevdF145cSYW0Vr+OtAy
	 MLi4F5C9+oJO7MSrahTj1P3mj30bh3yefOjbiGi1LF+4sfLbpfzRFvibYJmCiEH+5P
	 kDmYDgbcUL2o46O2+qZSgHz1/dddDLXypFQFr/hMrfII3dBVrG6YpYvGrIb+YQ42+7
	 lSozS+mNGUqxkeR+WqGigo3JmgiyTKaRVRuIDUZ87jn0UCY5U27h9kZdXljv6w9Sb9
	 g0K1BXr8Uj5LR9ncoKhjjXq00vsSPvTTjlNUsBh+47G5uQADuMkPTxtyuwo3aUQawR
	 SRz1QezN7/Nbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD0CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633499357.19124.11120674242678962166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ec17db5490f2dcfb201f5f963dab5de93df110243c35ec65f464bf5614b2bb
Date: Wed, 27 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756334993
