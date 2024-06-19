Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5640A13E3EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718801363; cv=none; b=QEc6htfrCX2oXnLVK2QyXZO01tA8ueaer8UxPo8M9zi2OtP72xMJ/vXy1QJXS3e4BuwKC9N2iG3PryOMqKVhcJNbUH1BOdmE7+XNtO7d2mZwnX5CopHnGxLr5vqVhmv1uG5dLWTwLigijnSiwvUZ4KS+Zs4ZnoTFeRu3W/eTlUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718801363; c=relaxed/simple;
	bh=wnsxoo/nwv/4cJtaCm0p3nRUTAlvcMU8D1DidSflQCY=;
	h=To:Subject:From:Message-Id:Date; b=oR8Xk2aPMcwCk7aq86HMPy0fZ4ujPGNfs/cVPIMfqKQZ0XxKIP7QbZIFLUFvYgxnGQmhyZAcLyzr/p6yxy9ubaBOsoVQLv13zWcLIQ/Z89CL45DnnjOhYVq6n0jSp5JdM3yekn3QbXYKNyUhWFltX3X1kfMa0lAwb/+grcL+FgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB2BH7pg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB2BH7pg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA25EC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718801362;
	bh=wnsxoo/nwv/4cJtaCm0p3nRUTAlvcMU8D1DidSflQCY=;
	h=To:Subject:From:Date:From;
	b=tB2BH7pg3PSnJVWfPrlU2S4ihqXSAKY5RgKorezXRvd3RCS3XPwlNnKOQlpw+57+N
	 ezERrxlhUmhhGynOME5NRir3HnrKDxJMPQaDMGNxh8WoC+1hxqCH8Is6/rPDkrGTSE
	 +zvUl1L0rEOGaIxX1c9OHtAxxPYyRlU23F+bcMPPjvdJGk0Z+SR0YwE/igwYyc33H7
	 9bswQpmyoFOEKW4nxFG8SbADO2UFg4OJwi9THUfD9+M00uJ4JLrJWHnAzYmb5Ocs8b
	 qSpXRn/hjvNhXWBN1grq/hsWS1A7XdIDEuFOgr38w6/g6L72gll1ROZfJcIQNdknBi
	 fQyDZ1vB4YU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2942C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880136277.21738.15870984651821483599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9998c7803c6983586dbea6d4661d379ce3c5de292a34c20fdb3eb6c2425fa9
Date: Wed, 19 Jun 2024 12:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718801362
