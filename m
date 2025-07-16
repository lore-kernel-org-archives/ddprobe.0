Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120D7235362
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752692994; cv=none; b=mCZID97lTmwvM3GCmXdYXCYh4KXCY4wh65qlWc7HPynAVbEB7hYBqsPgg2COtWHVFsdLtcyLW4hfn1t3kH1NmzZ99clxuqqBsfkCMdBhLeNc7c4eHch/5aTjv8P+UYvJac8WU7Uxkq6CV+sAynDEktW0MP0CPD/RSDjwlsXe2sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752692994; c=relaxed/simple;
	bh=AUq34CdOBJVz0qL3BL6OvXqmTk8STf1zWWQBA8dVJ9Q=;
	h=To:Subject:From:Message-Id:Date; b=V4Vp1JVbAhLeiVL1KVv1QHOnE18ys6bON/nJjig+S9ryif3p3hW3k3cNpn2pSP+5Y73AoSlcG/eb55Dr1j3k0zTz5yLgxkeSSL8CwEb/bj34I0/JKIktsn/hpHRXxxCjtJfskO8Qf3rkfRNrJWV7gPHDyhUn7P/82f6PNLPNvPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYqHYbtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYqHYbtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752692993;
	bh=AUq34CdOBJVz0qL3BL6OvXqmTk8STf1zWWQBA8dVJ9Q=;
	h=To:Subject:From:Date:From;
	b=eYqHYbtt+v3JW2Tzzc464v6liDhAew97nRGBhEBA8KwOVdzMptNYmOkzzvloQ6REk
	 m6HkKlvSDIPpcJ1LkktcfLDiHkaEfYVH+VlyOBdyTCzCxImNCRd8fnoEbGw/kWnFAS
	 NX3m34Dj1Q7zHzghHllzS1dul4vI7musSzhZomZJUwZvKO0IWZrcetGjqVUNn7U3w/
	 A2XQE3yBvvQ7V5pD5gIetZLVtCel2Dtn6ncvlhJoib5mdMF2L7SdoSicdx9hMYNUw6
	 l5BlmNaxhJQmbEU+1HJ3/UykJztWJv11//jZLiAGk2E9CahkIO7WJkVW3NXeGPUwtR
	 JuLiIvGr5rtMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C6C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269299357.19178.10839730006210402342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aaf1e72d4edccc6b6d1110270c10ce42acf0050bed1df617c2cbd07bc485960
Date: Wed, 16 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752692993
