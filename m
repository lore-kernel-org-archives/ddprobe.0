Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143343C37A9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779367234; cv=none; b=l4PpsByURLXzQ3RGTAX3zVjN0ZEN+dA+yOe4iMmSbWd5ctTATiwkBVLvTzQeAVoS2cK0/wXHMgQOXtdX07aWjFmkRYkY3cM5gfhBdpZlN95AEDx6k8zi2rQykRjl+2on+LvoQ9cj4dFAglYNESwP6x5gc5N0liL7VmTJaGaqLZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779367234; c=relaxed/simple;
	bh=mFfSh/LNrsvBtIbvkskz5+S47ipEpPKfjBPebJaWys0=;
	h=To:Subject:From:Message-Id:Date; b=oQgFiIurwfrXVy3nOKg6pGFy+w28rZvCEDtglVWYQ4QZKV6tJlnoLtnEJs/QPTil/nC1krOT24l6OXkVDHaXc2d8Jm6iBcqWoPYj8Mt1qYbTr5+t2kdPrVIDwbShaySnNfIOwggmQP05kv7/QqoKCbJ/X9rDc0U2GMr9NmxBy3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNnfMbG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNnfMbG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99BBC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779367233;
	bh=mFfSh/LNrsvBtIbvkskz5+S47ipEpPKfjBPebJaWys0=;
	h=To:Subject:From:Date:From;
	b=FNnfMbG5P9pNM7yms1q9+5ctOcuwcm4R2KMPHnMLNZ/e/4M9lAubzy/ozPdeg66sy
	 ognA7+WFU4FPFmaPleQTRgxtWv+7SRWhUx0jfNpJng7HaXeHBYDKRMVIoUMbkn5LAK
	 pX6ljqFP4wA05d39Z16uccOsfDRBSqV3ykFO97XpQaN2EJ8bujAHcjdTPaoK2VWRLq
	 1RDJYaQjR5fvZedRLiWeigN29nRNEEbbRVDu4KvTltJVz3JkXptsocEx+KhYdKGLkr
	 UpO1kkwXx/6st3O7beRKcTa8tBmeZ+zosHdLR0Ol8FavQ1+8v2OBj5Wgtsm6cnG8Dd
	 bkr9Q9djrUrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D6CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936723371.32646.1870619802916889535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6728be2db2f7d62322cd73946b2a7b2bbbbeb1d7eae319023f0afcfd609c59b
Date: Thu, 21 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779367233
