Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E9D1DA55
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754491194; cv=none; b=BSLjw2ZcKY1xS8QtTIqFSiZt2Dj5PF9QLuEBuEXvOmR7VOkmGdgHV6SjJpU4xuNCF8nKtA/IKBow+B/HPmetrWuoSzs+ZzjNZmcy6Csd8gURQGRLqLZNucTv6X5F5VQ5ly2+mU7LH2qv38lPSRUd4GSCEqWJIcNF6VRCt3pRIvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754491194; c=relaxed/simple;
	bh=JrSGw+RwMvlgxh4A7Yal36a/pHsK5ifAIU2qM6G7Tpg=;
	h=To:Subject:From:Message-Id:Date; b=pMdLRHI2dKEsI56wjHPbYBVQMZlKuIzDtw2OxLO7/8LL6fB/gQXinPShU3GgyVAGRGsafH7dsUz0SoPasY2mO42R3fshv4/2jEOadNgw+8qlKbZELpHISmz8UYOSUsrZmJQqVsa5RL7jkiC9h/PwNstmIAgRNr3/dW3mVL1o9SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcudVUhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcudVUhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754491193;
	bh=JrSGw+RwMvlgxh4A7Yal36a/pHsK5ifAIU2qM6G7Tpg=;
	h=To:Subject:From:Date:From;
	b=FcudVUhgDiT2KnpEukG7ANTRvnuhMloIvP1f1/lLN749DqbTVLVaC1WYq9ku0jH1W
	 nJWAxHBhgq+nbTfUjchWtDu1lZ5KpNHJDQaFWAz6FgGJ84T0dOiHV0IYqQgnLXLceK
	 xkl4B+Xw1ar8SChoTAEWN3QQDwssxNQFRRBytWSOBlpCo0xoFuTETkLZAMQSbupzXa
	 fhFVuv3nT5prhZDGojCXG9wiQCYpZ2edlVD6G+ylGHnPbdO8ewkmUSU+SB8Qxye2f/
	 aVNuwXopVxCi0MXj2Wklcu3esI9XdUueZ4yMx/f25dkZpquyTESb7k9JrbX0kDA+N4
	 vHSzIefb7mZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA5C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449119358.7441.2029776341842408696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ed9aa34d39300bec8dd350c7ae71c3f02a9539d6006c8127922960c00c543e
Date: Wed, 06 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754491193
