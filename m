Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670F27144A
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759959594; cv=none; b=QVx7mjlDwer2oh6OvaAbyUBdl73SoGmqL02D6dHdDmAK8kkboYuO0/NzU53m/im/KmR3NTUCqvstOjJj5oWTnG5osy3fAbmK0Z0vr/WmiP8BalxZVN+T+4/jDZfmHEaQWY2Gcku3jEfZvjdYkYTEMzBaY0QcZWw1FTF7zT8X6zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759959594; c=relaxed/simple;
	bh=/JHsealv2yxjoeeKW155e6pNeWab/xz7C9GU2rMolV0=;
	h=To:Subject:From:Message-Id:Date; b=egXXCZoC8NplLIiFrjWLXRS1274NGWbDi7FoBsnXsji8SbSceuGW12r7PqvsjFQdya5+Ht9cKcXFPV++qHrfundarNxWlvFCTz7FexT0sjyyvstoNdD27+ri9zEpTy0pIiPOHySq93OCBs4yipzRPHWj97fz8eOi6y3QyyC6TLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2F4ClV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2F4ClV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7663C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759959593;
	bh=/JHsealv2yxjoeeKW155e6pNeWab/xz7C9GU2rMolV0=;
	h=To:Subject:From:Date:From;
	b=n2F4ClV6dcyRlfV9ZDuNCmxya89e7N9dZDiuXh+UjC15p6ZTrI7uOIXgNjMAYqaXO
	 I/+lY1Z2goJNhwo5HFbnJ9q08/SXSqc0m54CeNPVf2hbM9BcTVFa8qKVe5/Z2oXv+e
	 sv2ZGt1U5NZBrgQXLIRXlJIlhv72HqFQgwrvi8333IJDMExjc4TXI16Zx1ZTL2fZ+h
	 2BiArRBYrDI5gMF9y6oGJAjcG0czg4uqtvewyWTGxLvNfJnqCaW1X+abX3qS8gzp87
	 p1KZyUskREtDiVMP5uefhfQ+sJIKk+b44IzWomU7Lp/PhwN7OTCjLNzDbg0b085Vqo
	 2gD8lfA4f1HbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92613CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995959357.15356.4555726155967295651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a5732625c8bbf1db01b5a6494f1e17bb102632de84499a8fc35f88fb134f03
Date: Wed, 08 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759959593
