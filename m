Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D6B1514C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718060303; cv=none; b=RgzumEwNHwRNAiWotoAiT1a/cfn+mL1RiyUeIq/DxbV5kvmpjlHHadu5HCaQBQYvjjfUgDZvkOk/E2oiaWHEMjzYNa3bJLrrL1CfjQCBDmZmuZ24BB3SFoZYR9GbLLuLv6jQGX/gIgUpqU9QtnY3jk7bcUhrjFs2TvP3WcgcTZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718060303; c=relaxed/simple;
	bh=/apJFMNbVYUZNS+m3gm92JEBu3wHaMMJG7wr9TrRVQ0=;
	h=To:Subject:From:Message-Id:Date; b=nf/QwlAWUvuwMppxzF2BR4/0gmKiPC42BUvoR9ZpIOeygml5EbcPKX28buK+IumBllUDV4bLaolFKfj960SdiaxGyXvovaMOlq3R6oUfLdDl3i7SGpeuo95AqIUOfJMa7L7m0o5Oi5vb96ms/6SmwdCLp91ETRThsuR3GhWgNnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCzKPIwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCzKPIwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD07AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718060302;
	bh=/apJFMNbVYUZNS+m3gm92JEBu3wHaMMJG7wr9TrRVQ0=;
	h=To:Subject:From:Date:From;
	b=VCzKPIwH/klIdbYH8FPl6XmM+p9aTakmclfc123XZdrrM4pNfsA8kLdALS0bgLS7c
	 wLanUPnRqn0Zxkk7PCRHK9yyfrYTPckWExcqO7ysNTzqHVyi1O3/OEMxcAM/fmvUv5
	 gYij9FrVznKJbyDig/NO9UCh1dWq9ACE2x6VJrGOJUk9fHpSKZVJt5C5cLT32q0uRP
	 qs7HAtGJzNP4xPE49hg7Qft54MfOBG1cPuzXlHgRockDtOVdQpzBSOe0F9ESR7xML4
	 vig3i2UEx/0bsnYqBsRAdTKJcxewFZAIHt5K1X79gESuBxZ1ZmaR4sWpg1vrP7PCkL
	 VxN6wnpUreX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BD5C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806030279.11116.12717798293210717466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304b953be82b8bc08b16762ba2df9089157e345cc82fd5cb22f5b35c4451000c
Date: Mon, 10 Jun 2024 22:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718060302
