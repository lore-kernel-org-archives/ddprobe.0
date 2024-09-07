Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D9953E23
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725732954; cv=none; b=Lia+8rUA9RAGrqGhIM6kUvqYHWOoJ+2UwSCKn2xTq1NHn38HwNxm4+XBBqpZsjbyNW9G7aKIVF9j2DUI+pUrOKlDa6z4tFHBSCNczCkZxRg9w0nZvORoJZ/EHcTr7qipBQDOuHxmHN9A38vxwmHDvAojbOupa2XRdB1HpfEDFEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725732954; c=relaxed/simple;
	bh=DTTvULmmxS5He5N8PqbHkto5fHASSSmKpfFZH5KDb9s=;
	h=To:Subject:From:Message-Id:Date; b=XlbYQZo+1yJ17vW5Bd2RqU7NRFkMNTexfoqmDKQQY9lbox6LiYwvXc4PlLuLMd3wpPSa5eNutx0qANAf33t8ru4HlnbsoSbMYkwAaUhEmAieUVaR8kRDjTWbDLfahi56x2X5aPGPYrmLKmr7IeQvqzP49fK5YpLPygUx/0PZ5ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnOWAkIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnOWAkIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE77EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725732953;
	bh=DTTvULmmxS5He5N8PqbHkto5fHASSSmKpfFZH5KDb9s=;
	h=To:Subject:From:Date:From;
	b=mnOWAkIXbwdzk63bnDymQfL52ECbxj5Z37l0mtCW3VlRuxeGKSmd3cCLmr/5dQXOs
	 jvVzdV/6Uq+jgXL3DTHobYM+Rt1GjlHCxvc6sfx3kAG5dChWqC5tdif4DmfR5/Rs1Z
	 NiTA7OmPStIg0LzfcKgprcweiQUnffasp66dv3VcmJ3fA+XiWF21yiOCnCdrVII9y7
	 AJSpz5tw6lrZkT93IDRXwmgJ9fzI5dk4s5MFxBFDQGutfeC64HudoDj3/o8FoXdLRN
	 rx4DzWzVW1xtTywH6BIR5CJLKePz9vskarrBAKJz3PL6VtN+w3RcCFkttbI/8iFX47
	 IegeEoE0SZ3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACABEB64CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172573295359.15858.13628418531881506326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc96f2784bf87a1fe03f7bfcb734531df9558d1d805670afd5ee850536911ecf
Date: Sat, 07 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725732953
