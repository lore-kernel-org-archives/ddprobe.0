Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80372627
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776255454; cv=none; b=Iyb2+a4KnvRF6KwU82Wf2GOzhX/CpaBLrQlKsoxJPSdv2fABI+nPtX8ZPLN6YQW/Sp38JyzjvbvFpKXK/BUWwtpdiVEzb4hJ/Eb7lXzusCXIcsTH9f4KVfEGGeBhGVa9Nuo+BvTFajFJmOEnqORduy3HoHyYwZwEkYkpNn2/jA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776255454; c=relaxed/simple;
	bh=iQiMkZ7/lYV8Ipn82FGbnBcA/+ax/l81pFE9tO5kU3Q=;
	h=To:Subject:From:Message-Id:Date; b=RCdZScoON9c7WDPZnUw5L2NsVdLsEprvosDYQqSBiLFrIj2eN7aZiMC5vUHJIWhBPhjcz7QEa7QBM2nf18HPRt+D2V4MwGlIkl+MLTL7Ai7+aTmeUNn7Fr7FKGWkaE5qqNx3vNfIAIJ72+M+LkdL/r+yHiIO3q/HXQvpjU2AEsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx7IfrTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx7IfrTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE345C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776255453;
	bh=iQiMkZ7/lYV8Ipn82FGbnBcA/+ax/l81pFE9tO5kU3Q=;
	h=To:Subject:From:Date:From;
	b=nx7IfrTJMz53SgurvCAR+rXsDCJt2TipdWV4GePW3zb48bYbhIoO3RGbk538DSZhG
	 h3M+eyACcYsBUFT6nt6xiH0v9NyglIOMOCddPsDD4CyVxB86YrBdOmoKp7HkJU2CIm
	 08iUh1yquW1s1MOdBazJjdOeBrdxg3Y9004Uo4ofuTl0msSNoz5+9w2wMWxM5nMPcO
	 nPr0MeAe2G/8e/0hmVvBSBnIDdNG4ddCIgeqmOQwhjLvNDE3bSdvpPXdkAnmJ+1uns
	 IogH9brzapJzvapDQbIZVr406f3YkadOn6C4dNLMTgx/K4PBLKk2kTkueNpXhsnWHi
	 Bh8LUOAOk4o2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6EAF4199B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625545368.25446.2000727680801321885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1a4db89ac1e4aa13c5c7d93e2e79a785bc8ed4865b107aef1cc833cfb8f600
Date: Wed, 15 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776255453
