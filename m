Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652118FC97
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774233294; cv=none; b=johRYnkGzTJoMsNl9B1gmLPSFYfCjoPcIhC1tIwUvoQ2sLUz1e1yAH5Sd+mI4roASYg5UXTgS7yc8jIRy+2Ek7U1x/TqWeiPIKrt8irec3aKqszyTjC7eY0JH1YfyfEyd7WcsLNfrLyr7KwVBcl0WewpUE93i6yJ+HCWG+V4RLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774233294; c=relaxed/simple;
	bh=vw6lDdQ2qksk2wbUnC5FMNQRwzJOgmBPp6oBRLFRBno=;
	h=To:Subject:From:Message-Id:Date; b=JwptwAQigDGS5/x8ekOdQ2FR51V5i/nK0Ba81+dkZl0SFoz6JgJlePZOt1agGIqYtGITlmavmLelt0j9xWSydvQ4MFcLemzGl5teX5+8fz9/PEjIVXBR8Z3Fw59DtjE4ijFuBdBFkNjrwTspTg6LUOjJSLjlzN3rlYNbNBldomM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLmLTXw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLmLTXw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B86C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774233293;
	bh=vw6lDdQ2qksk2wbUnC5FMNQRwzJOgmBPp6oBRLFRBno=;
	h=To:Subject:From:Date:From;
	b=cLmLTXw4eFWOF4yaM5phmk3J9B3uL8d7AyncFtJeed9IhlyVqR27YgOnNokC02LyQ
	 AvSd6MiTJLWYgE1OI9LcKp4hr8f2p4yGKOnH0svw49j2wB+NZbwKRxmKpdJHsiyHj3
	 9u2hAvugq7i5Z0xzGOWbqu3B4t649NOWK/g6ERIL/qeM5fA2u8+pukr3f/40Utvvbt
	 xhgJeQ1VJUbxoGT+b8kR6yI5KPhO8u//Kqbg8iQHNwStXMzDnaDUQZEDStLxPa9sy+
	 VZrbaxP+wodtLETlrxi3rPgKfxnVSXpzLdeXvhlmhZz5L+w6DRON7ZtKPt0Cfdrm5u
	 8OoOxLxUBV9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9719AD58CBB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423329358.13292.18061198659693422205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87939e1b0e7e56fc6913a9e4ad0a411d929ed2052b022f71281f28e2e35d7833
Date: Mon, 23 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774233293
