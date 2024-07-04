Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5293A1A38EE
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720089323; cv=none; b=sO6xHeZPBKS6f8UdMPVQaex6GK5EO4yVe6Plbjwg8bHd4NNBPQaEKDdWx7Aso+pKNazzlEQfRNRc4ZkGvZsDqDo1Q4u/HA1Ku+htBa6JHIA0P0f11tCPCOIeQk04zbNIDAYkYGkHjantt7H8Ub8X6XzoDT+M0fXfNMN25bg4bAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720089323; c=relaxed/simple;
	bh=nOqptLfWPDHp2CFYjDjSsHzxzPxQt+CeEdsuz4g+KDc=;
	h=To:Subject:From:Message-Id:Date; b=m/EXbpNJa7U/KR/5o+qQoe94KNyRU7g+oiSBl7weCwFMEMYEvt72LIpTvUK0KhruWr0fVHYHKmIGz5p/CcHhecBWU9GxrhxEkDFi9PT0qceUh7frDsZlYIZsdduor9k/t2k8rd0LtFMYkNYsTA9vFUVxnGekzPfuyMd3gvMNLPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWIb2P2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWIb2P2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2210C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720089322;
	bh=nOqptLfWPDHp2CFYjDjSsHzxzPxQt+CeEdsuz4g+KDc=;
	h=To:Subject:From:Date:From;
	b=KWIb2P2UqFrwtNBlYuaAaLRPetcZ+pvNr3pPNTjim5gJjzRu7juuxwWlwOIxf7W9W
	 JaRw+gkeqS+zCjGBhwE2gpluNYThd0mboBgBjOX93RDb/qM+cgWvK0j9V49zPJs/Ng
	 oNS4wB3wxUIIEY5b422AZzbZz4lpHv5ht15j/JkzFwMOnTqkgnNv2x4ZcnYYlZxvc7
	 oiOwU2JlPNoHy/OgeZMGAqXUkjOLAY+9ePuidakLZFnZMX8sX+0qoE393qHx15aGCN
	 gN7MEKBVmxjvWxcSBh7u2SZXOz1XitzknfbyLI6sh5xRmjzCauf2fOJOYsxBwv5NdO
	 myUitXIgRDFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF17CC3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008932277.23495.14853090033162912056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc40ec6ad94759d35024e4a6f6263bccd096cedd14377877b2ba2ff74be24abc
Date: Thu, 04 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720089322
