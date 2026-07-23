Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E766A36B903
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784836235; cv=none; b=SejuCyBTDy8GwlNzqtQtmuNLcM4gjUYLqm+z3+VVU3aJmSQYYguzJfG5ezUMUpNlcIWeRf5oSer3oFpeCzL7J19yeAa0R0IuLGPpd250i/kmCGc23OmjK5u/tMbJ1RCBI5H85OjqA6jd6jQRz4fCX2uN6sdjDY24HvTPjpmlmWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784836235; c=relaxed/simple;
	bh=Q4cAY73MtXZVL8ktTzSFmk4txULPgzEziVdM5sBm6qs=;
	h=To:Subject:From:Message-Id:Date; b=dJxgp1VexQogJ3P21HV74Vsf2HkUv1iaThnSpHTdrpRjF2YluoOk8xP79/jX+0IwrPN8tMsfIH6BCLKGvPuqzMKXjTJcF2PjWEuS4j1VuEGBnQxAFL/Bf7y5F7R1zzXVqMjHGuDdimb7D2+KUKJLCQmNofP/zTeNpBU86BPtI1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvFYzPp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvFYzPp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB461C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784836233;
	bh=Q4cAY73MtXZVL8ktTzSFmk4txULPgzEziVdM5sBm6qs=;
	h=To:Subject:From:Date:From;
	b=fvFYzPp9i+dWeGP4I3qik590CjomIiNIEtsp0Wxcg4Dhk034c3PVZ/Q4X9Y2GJfvP
	 xQXjbt6tW/6QIhJuBwcxMtscuNtjBq0fLVLqPiUUIPpi5FqhJSymC8e1Ipm208ymmY
	 vR+BpTotvjocNGC9OUGtsqwwZuVul5z0oDm1q1dbVsS0mdSpEaTVzYcVBVP2Jmh++N
	 3+1Zk0N7RuzdycFAKQctG4+V7C90GGSKIiYwJmliIyLpGjxVH45/MAHNR5hckVTsnW
	 Q6Usd07OGXkRTmDr2z1GYKnfTbOJ4pELlF16IB9eN1BEbV++CC0/Bz1SnsLTJaDUCI
	 LMDybvoqys4KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1265C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483623371.24370.848970443234708862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a368d606620f840b88a9fa4a3fa26ae24983370a993e091cfc90dd76de9342
Date: Thu, 23 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784836233
