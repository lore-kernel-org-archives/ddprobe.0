Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29819F41C
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742890194; cv=none; b=UBoocPRi1phYWjwUWtLKGNtToXFmq/Q4Ddw5ta/bUrGCVQ+r6Zd3QUY+iAyPO7UO14IcxXUoKZZvZdBvI2zKAHdmBJ5deUti4GNkS95D99TKC/0ypRf7naLnLpJ+wgV8s8xc3BBoOqxOECCI4g4VqzeAVaj7ENCTwGRVeAWfwMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742890194; c=relaxed/simple;
	bh=OXtWqQ4WMyN6X20gQXT1nTmt62X8GBtj1Xx1PRWNdQo=;
	h=To:Subject:From:Message-Id:Date; b=JXrvTm2tmtrsGsRTzxCQLUr21TdrkE5dBFyvwhTuM0x9asDfWq1u/qoQsr3xvROTl243y737t7PYo1PT+mIf7jDQpQg9JhMLp9li5jXVC994NsdQqCrlnjt8LK6YMZRcYk/mxBSinDdfbKIH9h6RFbJ6GYphmSxgRs3ibAO1NSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsBYGh1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsBYGh1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFF1C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742890193;
	bh=OXtWqQ4WMyN6X20gQXT1nTmt62X8GBtj1Xx1PRWNdQo=;
	h=To:Subject:From:Date:From;
	b=dsBYGh1yzEXm5US466qMNyIewNbqk/ZlEOyaIm4t+PRhaTAZjZA7xwbO3mvnR6oja
	 AOfDtTFxZQK9IfvwRC75fSTcSh02SKiPj2ZOZ/Iy4MamvjCEbq2mxK3nQkkEd4tujQ
	 qbqSrpOQsZrLeQAc5xZsBWJHPmCaoeVud39oh1xZuecRpanzOXHSfcnQfDaSRUktI5
	 dq/eHMbgmy2XLgUsCjEhAhyVNbAyj4r8zBaSehN24uKs+x+VVwhGbkXRicbEgcNwyz
	 hjP+8HAfhK4+f2OqG5gXAQE1/qvBQUY6GiFdWoTK9NKxAdJA60D5TW6coBsclATeb1
	 UIKQ/hmVHZszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D40C3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289019358.21291.17688830282914454986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55223e26f58567bed8e3173bdcccac24a7b56890be14f5516668064d241d347
Date: Tue, 25 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742890193
