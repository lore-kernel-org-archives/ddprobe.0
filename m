Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258D11E573F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749377994; cv=none; b=HdZVAn/P9qUNPDbBM0ZL+iw/bCGh+fZpgOq14+dfK4JNt1ELHYwO75ymhZUB6sRWb4nagDpRvOGgleABzpwRQx8nk52GOPb6PWdEfC1vFyR2pYqc1BCvIRdPbX3/JPdgE9IxxybIQ4eKGUZWjIzKwCEfHvjBOOGv9KVS8V3vVqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749377994; c=relaxed/simple;
	bh=1geEXs70kwnTGmzh9yvlF5OFdBN650ipb74PybdDpAQ=;
	h=To:Subject:From:Message-Id:Date; b=dDNkj5j2VW4HhamhQTcGqnTf7qrmzap+8B1Bb82l/mz2qWdtCZn6AOxqsH8jjt7JwZoWgg2uQbU3+02NGPgY2DZEIrPnEC/zZhIMYoC+mNDBJdIQcr5cwxBokn3TimXP+yuGKiXWIk9iKcGhn1TlJQLmDriQuG3aGuitOQCEOfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isBHVij/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isBHVij/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05E6C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749377993;
	bh=1geEXs70kwnTGmzh9yvlF5OFdBN650ipb74PybdDpAQ=;
	h=To:Subject:From:Date:From;
	b=isBHVij/EuUiQznl0cyBNfRfnJC80+S2byR5wag33mHTKbnNhG8/Sv2mAYQEFpt4Q
	 yL8qB82JidQZMBNZt3FyEGf6DN1XEtf15VQBQD0P0xdglJ0c6EK4m+fmpbxjY73iJL
	 DNW/9T4F5ES3NNEq8HNzgWWnTmzL0kU0qji5GVXdKbcscXlsb0ld/3DDrQ2BhJjsUv
	 aLe+js2hwaOicEvpijJlWBRGAIV2I65O9VPkzk7M9zzBz46HQMwSvhfio+KHRPLWWp
	 BNmda8wzjRB8FV+e8LayZEVaL+JL2SxuBfi1DGsUG+2sxsugnv6emm0+EMKb7njWxX
	 EZxlwI9eFRlkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A067EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937799362.12968.8065188565562450351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97601d33734fbd33020e44f154985da83a5838914c2a3c822ca46bb47dc9ad27
Date: Sun, 08 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749377993
