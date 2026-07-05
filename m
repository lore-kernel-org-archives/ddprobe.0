Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8380C33EC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783212514; cv=none; b=P9Gg7RqJK/nX4FcznR7gREW0rs6atchwbyF17BLksRSB6d9RyUPybZEPUJX/nxrVIwsS5W/kKdBIMfjVrG5g09UfmD0qAwpTAsqM2jcecCnOM4f4cY20Sa5y5lpV4bwpRmr8BpZWAp5cfJP7yZGH0zRJyTUFOyYambSd7xsJLJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783212514; c=relaxed/simple;
	bh=J86eMN8cii/G6yr4Q9pFPx4DGXNajsaZSL00JfYctjw=;
	h=To:Subject:From:Message-Id:Date; b=GTpyXVjjvsKuq+2T618slY7QRao5iadWu8lfIskbrzHQ2iu3oAL60XV32pXtadah5THpCzA20rZDqDUizo9aSGG2owUUVxO8lqTXDzpAEb4aHqrJ2ZX1RqJNatL1INr/RUwaO4V368Zj2e8Tf/qBFfRguABqlCr28CxgprVHvok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV7ALU1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV7ALU1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BBEC19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783212513;
	bh=J86eMN8cii/G6yr4Q9pFPx4DGXNajsaZSL00JfYctjw=;
	h=To:Subject:From:Date:From;
	b=KV7ALU1m0+ClDJIs5cIbO4hmfC1Ol5BF97ShA+rrlNiDa4M0brbEPaWZVIdQd51dG
	 MhXAVJ0U5g3X8gpd8nqHY6zHbq92vKFQ+g2VSisCTbDViRaYv0Kqbg29HfMDWinINv
	 chPjHrecxaEtBTdGMFmEwNqpa2aSUrexI/NvIOtPGK09jrl9bKlM+osb3Jy5JBA6zA
	 f9z7QlFBKVKJpPexefVWQZClOPhv84FHn0aC964zbmJxi2GNdrFhXsgftnjzoEStNY
	 NlIKQNDyXzSnZFaCEN+Z5E+tg2l+FOLl1EuO02WiVXXWfG482GToFSBt6f8LOo89L9
	 wy+sOYo4jGOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B8C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321251368.13935.14238381894934114094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e66bed7171d93dc0305f0146d156154a2413f86cde2416107bf78b37c90cf2a
Date: Sun, 05 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783212513
