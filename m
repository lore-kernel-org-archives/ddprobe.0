Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB32272901
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740694734; cv=none; b=SMOIY21O/nehOEB1XZHZsH9b4MRP8LcQrJq/GcMZR5QoZLglJyDqbrS/lT+xZEgSNmMd6O77fP3X97yCpktAMqdefrtCN7s1sYBvqLMRABGCW/x7a10qwbwySmJBiOP0P+zFB6eTgWyHO2btj8RZnrDIKzU1QbPJaIbd+7guDkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740694734; c=relaxed/simple;
	bh=XAoIOTPntbQlx3Nxpf59ZxTaIv5WYVXBi209Z7+87C8=;
	h=To:Subject:From:Message-Id:Date; b=rLhgdprejK2+DuAGcBHgrOqwZLjrg1OSHQxzLVysKQCD01hNkEEEwhXXSBUv8Yu4UpkDddNT0Vmb4Rf6tUwyvfg6XJ5lMYN4iP8hWrsjwvSrcIa1zFroK6wqlotvEFLZV6zT/jE88jmFCRkP12E7E+yMqZs98D3FOjdBYEBxwHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/j6On3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/j6On3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8197C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740694733;
	bh=XAoIOTPntbQlx3Nxpf59ZxTaIv5WYVXBi209Z7+87C8=;
	h=To:Subject:From:Date:From;
	b=J/j6On3ZSl2yq2RCxggUQemJM9oMXbyQx4PrC70qdmINPaaGIjQtESAz9oXJ/5cCT
	 7NdubkJ4GChLqi5rxQq9x/zYTHYazuaYzWPRPPlzVpW0doVvueK1gshH134QqBdZgv
	 grsAzHSNs3VhQd6oZC7iJ99W+s5ss+MLf6lKcplCVnrbfuLyrY0gelnJA3uzDr92nX
	 ci0Lm+tPV+KoEzFNawjf34JJ+7kmnfrS1t/vLvLikGnNw0uwmj46CYYWplZ7jViv3k
	 hKPuc5HXKXVg5a1NdpBL9qiF0QTrAIaP/W5isO8yTksvTU2t8R2+UW7ybAJN2xbTD6
	 PFIke7co+fBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B13C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069473360.17915.7244118682243500642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b8ae479706825bce40af355ec7d55fcaad153cc563a05c99a810f847e8870b
Date: Thu, 27 Feb 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740694733
