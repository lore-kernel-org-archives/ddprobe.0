Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3892264A9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773799494; cv=none; b=hYZhJe/PZbufrZx/N3WCaYvkmxTTHE3et+p1e5yo4TvDA7atrDnH8KftUDhvtC3uhcbgbxBCDou4bqPGzRvDIw8vuMsOu2xKlT16mlb4picEJWq3a9SpF6sdJw1PVxxLxUGd7jC77fCJP52kdQPxtCwxkwGiyFWt8/TUf/t69cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773799494; c=relaxed/simple;
	bh=hhhBAloI++WFswzFN69sXlzAUr2nKdYW92SzZ2vgjFs=;
	h=To:Subject:From:Message-Id:Date; b=J9JiGc+NjF1g1K4jkZO8jeucADDNgTE97vmZ2a8+9SyRDbi0J4v2oz0te2cVkb7YH7KArPctxGQhlbqp2JPQynTN0k91cop40kM2aNLwiFT4flQT4RKMPLoeta5botMEA3Rdr9xHXe3AhSD7wFCYglPmJFLnL6smOoKK0RVBpwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEmFWlam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEmFWlam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B58FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773799493;
	bh=hhhBAloI++WFswzFN69sXlzAUr2nKdYW92SzZ2vgjFs=;
	h=To:Subject:From:Date:From;
	b=CEmFWlamW+PSWLmyWod+3dn44+jEqB7Ts8pgepR7+OSZe0lI3lhU0CqHMjM9jvDwN
	 2VI338sfhmW2iEpWqZYAAR3/xyCtJxzgDN/SCul3nfO8vWZbSNn5uhtx70tkxRMOUh
	 bxQcC+FayX2Mn2hZZP9AbX/vvSB7WrUoTLKE/JurBrZgBEtbSjmbBDx0sqzhdqUxWz
	 JqtuZzD7N9OIHgQPjudmYh75fOWKHiFJS3Wt9gUcEb6K70xRW1KJ6zC3bS8ZJ4crFU
	 U9q0/zYjSp4ezS26teq35StxEfqQsl3U5jVbuSGg/MgBb7V/byATqIt5J4w4EjrIcU
	 ehX00IEH5vxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E757FEDA17
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379949357.13786.4051991937065547493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1e9ebbd455ca35076d1bf13c0aa086ca9e9e0fa18f2817c17a2b050b7146a2
Date: Wed, 18 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773799493
