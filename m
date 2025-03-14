Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C22632C85
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741925334; cv=none; b=TcBOubk9pMV2evz0eETwtEECKeX3yRIJCruaoIdw8X1IMnoRvY5o1D12RDqp+ADWCwNQ/vCVBQphB6lwr+HPHOdTi/2SZipPdCpIW1wWwAmstAQbIOzNO45YGSK3smI6bBzHgAmp7TMZN3c0U5XavJECDSWMgSRHonSNdqgKnxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741925334; c=relaxed/simple;
	bh=OpAB4k8YzGtauwB+UUzqIxHJqTtNTTy/z7HtwDBFGz4=;
	h=To:Subject:From:Message-Id:Date; b=rznf/PeGl+1VcS9Ss17FyBLHLMJnXY5K947KEMqlLfrtOUoXpmma113mwGkrqY/kQel6jVFLCZMYPICtru3FjK9JebmirFQGmQ7qcOJlatHtttn8gv+qAxSOkcDzzUuMjehredfSZUJ2gjgaLYxcp8o3j36h60V/E8DoW5B+k0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAXHaGAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAXHaGAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42CFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741925333;
	bh=OpAB4k8YzGtauwB+UUzqIxHJqTtNTTy/z7HtwDBFGz4=;
	h=To:Subject:From:Date:From;
	b=IAXHaGAji/M0TeTM0+3U4wQf9yhMROy0yWkoYUrsAbrCy1c1weekYP8V/rkuokeKl
	 JBw7TJ0AtrgvxiPStJ9QptbkSFgEysGPlORLoEEg8Yy6Cd+WClyi7761MjdjHeWqTx
	 pM1aiazR1sirUSr3fDD33pWQB11Xxz6QXDaIim+qiPHCRTJqo6PdZVkvCzhhe7X1uG
	 +KQSGJ/GJV+TE13LSQobhGGhwXvjuO2pPFUUWlzLYy/vGWn3el4msf3vpEhrjaIIDO
	 pGli4ZFgGCyvwqATD3osbbRRVoqHtR9L7twzdWc4IICSxNRu5ejCzvLLRkdeDfQV/9
	 XxUhx1C+ISrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF29C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192533358.29828.8285246346905624380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025c00d7d4eb895b93a3186609738628f8064f6dd9a63f44ef7997f8a41f3f8f
Date: Fri, 14 Mar 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741925333
