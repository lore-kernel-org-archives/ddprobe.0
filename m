Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5C9286409
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771005293; cv=none; b=Xrq4Avnzxi4G1cetcObhEx0OudAXlsgeUjiVet3wi8vZ0ocKp9NmlUTfCy9RaWCNk8esQ+Lw45lqi5opoFYJhobcmabqygYjBteT8InqXvuRaBDlfUmutHWKrmeEhq6DhzBl+WZ/tRt+z92sNriMVebot1WG1ZEPnCpr0FXfCGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771005293; c=relaxed/simple;
	bh=warcIjILrLne9eIqAbkDEb34ZPzp7VBNg/L6ol6JrY4=;
	h=To:Subject:From:Message-Id:Date; b=dPz78kyxrsQmphGK1FS4NtdxQE+BSEvLtlZwQ/eYZa4JC+I7jvVry4GQnNkkMtBxPuYl8u3RlUuHUMnFnLSItH+0u9LOhS6Z490C62y2QVCqAEPm4KsUg4M4mU3SuYT7dp1RYscSm0YrJlXsFLt2P/uAXZeAD73yOY2EuKHqCs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWs57mof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWs57mof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD962C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771005293;
	bh=warcIjILrLne9eIqAbkDEb34ZPzp7VBNg/L6ol6JrY4=;
	h=To:Subject:From:Date:From;
	b=NWs57mofEyxjOy+TaxNiHENb23oqo0imjS85OZldVrP6ieHWqQXHxZJOUC4OPVLbD
	 P9Y4HqhgXufCAkd+6cxH9235RAJbAcAmX/tjvggvrVXyZN+EVLS5uo6DDyPQ6AR8jw
	 XT5SFHHDXtyEyKDzeZCKg6t8yRtOxer6QL1OPgDRcB48DfULBP1cqYlShQkyd0DGqx
	 bkZVnnNotYfFV/S2sU2085PzhZ2u4rTdY5ydoSxsuvpC/K8Ux/FpIZJ995HV04ClBM
	 DF8SUuxTU2FSl77vedn2GtO17eSQNYXj0XXNFE8zPGLflk/44Ci2QyL7fLjutDtSLp
	 EDiFiqYHtNz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98737EF99C0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100529361.11292.15961780360795029754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560d9aa3a83c82f7f54a366d65ef039fb8b19003d470f9bcad3bb5c06fcb6774
Date: Fri, 13 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771005293
