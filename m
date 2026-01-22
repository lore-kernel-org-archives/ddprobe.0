Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235264EA375
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769097234; cv=none; b=o3FRIJP5JhXgfWaJVu7/XCqx/Xe8Om6OaJLuzzcyMmRKBjFR0XCvoYNwL8PZwfhQOeZpTxtykOsYUuDN1ilG/y2AbwNadFRwCNl5diokI3pjd2FPWLqkBB+Kh3mn83ThPOuPPCDblr8bo/4P+e6foiDGQWLivzg/Rlw5XB1nKow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769097234; c=relaxed/simple;
	bh=7PEhma3HXDerHbi3Voj//iy5elxL1nHYEJP6QL0pQmA=;
	h=To:Subject:From:Message-Id:Date; b=KN7WpqLIgt3TJZfGpzhZxrX9w1BmJlPPZVmXOPvE1CIJAcF6X/xgpEJ4ktI1hW+0lPZDVhXqC8lktREywXjuTS+I2nOn+7vGaXz99r6XEIOmBizsFHCtXnoJrAkbhkNAkLbqK754nRl2ZU2qwKjzIVwHhmPhmcRCgvaCEKWUGBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7DaEuHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7DaEuHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1601C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769097233;
	bh=7PEhma3HXDerHbi3Voj//iy5elxL1nHYEJP6QL0pQmA=;
	h=To:Subject:From:Date:From;
	b=N7DaEuHl00aW3rT3sUEB7aO67fgV5b/axxi1KcArLZIvuDzvse3XNPbZwetztqy9+
	 Zki6cGrPhYssrJLkhHWRm5WDKSC4hNW3abIaTfgZdsn2jUDNFFBEnhqoZ7T8+Osv+R
	 SvHSvsCr7HIsxq34UjrA23inKKnmzZna5Bw/IT7dTNbT6+ylrkIwkEjzO+D6qHCPeD
	 woBb8uRaBJ6mApkcMR5KQwPDnN9vfe3+gUtDFl2X+EIFMye+2AA9pdy1uXpmfEI8ri
	 3I/IR7g8visrMutYaYFkr1WnjQwbpW6V3B9HSWBKQr4xK2b6jbmXKzg4bd7+6l+zqu
	 NeM6U8/csbY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED7D3EE86
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909723358.16256.6083553502648553398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3510314382b136fa8f98e10f8962e3406c41782b3b19dffa577b3db1d4eb72
Date: Thu, 22 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769097233
