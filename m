Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D5A175AD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724807754; cv=none; b=ZSBYxcI36IdiXSbyZSSRF9YzOsUOFrr0pDGgoP2sLmgzksqfrgTvtftmZ7yNWzsS2X4BRSlgg8QZJOwLyCG7+qscGMkypnZ9TPbkxkjK4oiggDzBEP+diZnv1BQzj/FTS1RTgBfvO9tgkBWsV4aeW3haHBiUIhulz3HT5lfRpu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724807754; c=relaxed/simple;
	bh=En4RLzAQtNfS53ypVivvNvksjZCPV3BD4nWAg+C3XQU=;
	h=To:Subject:From:Message-Id:Date; b=YW9rrC2U6et1PU1/47DujVHaZOmqhHlfXrksgZ1lnhdO47z42n9vnH+Qo+t95KI4Gofyumu2rjIzwDPLSK3eqPCbvXdTAak4KRXnTGKo3O+ipUGhaGthizqZst6Hv2M0eWbF5yqxsCruQU+YPzZbGAz39IBNKB+zByr5trq8NkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=act6Cvoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="act6Cvoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD91CC4FE01
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724807753;
	bh=En4RLzAQtNfS53ypVivvNvksjZCPV3BD4nWAg+C3XQU=;
	h=To:Subject:From:Date:From;
	b=act6CvoaE4C+NbmJ/Q7pAE8178TV+P1ELrPuS8x8l+jIFkWRGY1RCcE5xKebY2sSl
	 dRuBkpcWGlWff5D8xE1lj9RC9/fHleScM1wt9i+kH74/ioVHOzJ+EGA/YPerqGdblV
	 3gdGytnBOzkQttUaKOC9W4n9XQZKAyyAGuNFsY24OEizNIsGJQJ0puK5vdQltQu6CB
	 C2/KIA9fjquJIcDnMbg3S/LV5nQWr5qgAtYwnxnHSMLqSVnt999GCzSK8kMSDNbmJd
	 7wd62cr9xb688uROSL8RXqcgNUpJamss5PEnxPHJI5zojByqto5v7dQ4m/gTNOYkKK
	 +07syz5MFtxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFAEC54746
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480775363.17339.4364792407075664891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9257df86328dce5a41f5e483d1db6d3e8013d954326c6538feaeb04f48d91cba
Date: Wed, 28 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724807753
