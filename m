Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533B5342CB8
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767815034; cv=none; b=kqPO5uTC5p5d1T+xqd0MHKONbqVQfapKt/5VsvhoYsVZ3/BUfHAOGuAKToz9YiSZghtt4a9RdHQ2Sk6nw4Uowlw0uMtjJGzN/jk1E7/9Odjiq88qZ6RBs6RWPEiKWZn/H0LUUOhndiEq26nucvahvH4jPOvmIJuFv5J9fTau7Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767815034; c=relaxed/simple;
	bh=FUT4AloHCqMtMLe8uv0iqJbyX6Q1LvrdMgjriYmY2Fk=;
	h=To:Subject:From:Message-Id:Date; b=tUtXKHwwC/PbvRmpabvfG9fe4MfGHsksYEDvmmyg/Ice0jTdCJNarZ5NDk5fuLPq6LhUFhO7r+hLxtURJwON92+NWzHoorRyNTPfGa0my9pdXFBzjRclD3Z3EP6RGOaKzy1aR83H2xxudql2XDgYDTJbTFdND2s2o5ja4nwQwSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRLl0V3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRLl0V3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC8C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767815033;
	bh=FUT4AloHCqMtMLe8uv0iqJbyX6Q1LvrdMgjriYmY2Fk=;
	h=To:Subject:From:Date:From;
	b=qRLl0V3cVtS9HEzc132l4t8VwsOWyvHcitIgziqQRYGrxZRcB/hwfbqMLldmUg1ZM
	 GTjQP7fVnltBjhv+OII4epOudkKMjkFRboADqaoF1HYES1z4GjOC2BxjneWhh6UiZR
	 qfW78EOjNFAeMc5OD8ZF0V+stvP1gcOr7D0HsY0BRmAh7d14dgr/g+pH/pC1cZ/GxB
	 dxD4xCeRI3aL5L3wNFkJojxrj9J46vLTgwRvXm6CA5mSr/SGxeRhUnzLfNmPcRKRXT
	 n4LuDPY5RMWH/5jbMmC1xw8LD0zNX4zxz3HpCmX1oFu2p3c8s9OYmLur2V5FlOHSa9
	 1kBhUv5LvvOgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090AD0D16F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781503358.30363.5499038727504432320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6995d730cd4ef7e2fc6f53850b52df544cb03a3ee09a6d8f0ed7e87afebc1c89
Date: Wed, 07 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767815033
