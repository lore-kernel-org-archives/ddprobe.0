Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED351FECBD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747230594; cv=none; b=O8tw7B2JecxNsERWgv9h4mwd49VBqITRRINP2T9CZd8KPuAk6CdGrP2aLT/jswrVd0nHVoUsEczi6xFBy3SxN/95Yiug3BCVdtBlpre0y9MNWdAW2RAw3Zi9YIRZER+s2AbXSiteSkf/mORBmnfIQAa7HAvJjeOpI4GHnp7IV7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747230594; c=relaxed/simple;
	bh=EnrIpCHkfwsTitl4KXI/5yGHo73WL4lAUdv8y3n++GI=;
	h=To:Subject:From:Message-Id:Date; b=ghfNYeIbCpXziPXWg6rx4oDsCZtw6iN7978rxMjm/VASotauXfMFsom+IoWkGTEbGkO4f9QZve9MpYW4UFA5V+8pRLqzo5UDgBrQ/IqsBdsWfaj4zZi8shMprO+amVHIMj8+0p/YFVzhTqF2O9yrxY9slbTr4H0ylJcR/ULw0sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw3l5r7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw3l5r7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D967C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747230593;
	bh=EnrIpCHkfwsTitl4KXI/5yGHo73WL4lAUdv8y3n++GI=;
	h=To:Subject:From:Date:From;
	b=bw3l5r7NWRSL3YtvavkX+Z/55ECQa7cv9hcjx+1MtCG42WwRBoIjszw4G0lbzXwPX
	 3GbMisTMxsgGbI+D1J+8VolE/QJFhNaVXeeDlH6df90jVe87dOiFeGF4JTtCRQJ2bU
	 XDZZl92tQMJ9vEMxGIwQVtEMGZ2QiGIWUWYjB1HSsqySNxsaAZOBy0+/koMWmGVjb+
	 JpWExcNCbhbrIQdkTYWbXWSTHtkQ2lkWvqYPAHHh/yfHNCPhSKBH+5eHzgi685yhyt
	 pgiAF3rrzswVv7OruZ8DxtUF/01GHxYMT9VgY/7DqTmhqAxp+BRKZsWeYa5XbSVCgq
	 9vKJE0LayPiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD9C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723059357.21774.4693410814908258996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e76b982efc3648bbd728c3c295b2b1db283191a37991b2cdc3526229213aae
Date: Wed, 14 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747230593
