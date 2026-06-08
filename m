Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FB53C7E18
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928074; cv=none; b=geFG9Jmbup8eLxM8dm8AQaa2ZgEXoAs0rRTQb6aDkpbdhetRyJn6yjC6rhCDYTC1+FsoVdD3DZlMwBAqf5UohJAe3pcTzZNNvOnzdHFAR7JTQRglXtDUgW1gVg5Dy73bf0Z0ttKCOn6WIB0J793cy2bI8wXlYAV7SQRkEjg6ZR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928074; c=relaxed/simple;
	bh=/jnF772QkFzYyGpbsROQ+wzIK12TCT8uplDDAdle5Jg=;
	h=To:Subject:From:Message-Id:Date; b=rZfDZjACCNDvn2P3VgWr7D0QGIH616XAmZK2IRj1SIVsaPCOhqvEiZRLlcFlUeAQzlCAxmkcxxpsDL/QgzMNqP5RUKVFmgQh4wBVL8IMdxoWrOfxWZQHJU00jbZ3iFEz+N5wIWUDCjrtNQIrFxjuX5H/zmeVOT7bOPXfKwyY0A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXnSakyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXnSakyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21A8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780928073;
	bh=/jnF772QkFzYyGpbsROQ+wzIK12TCT8uplDDAdle5Jg=;
	h=To:Subject:From:Date:From;
	b=TXnSakyqzirunFhOvrTDdXW2i8QPgtsK6nr9/ldrLUcZCP7yyVUWCTAcpHD7AAJ0F
	 vrJBe8iOve0d3yA7qRC/A0xFSO/bBDPqrCrd4I7OK449x45Xf3SHwoq9g6I5DCvTYY
	 gNs1g44ghv2a9mm4pNh8JsFW+F2MpiCBHKsogeKckb9z5dI3Qi0VKYXjIExtamVkFw
	 B/akkO4x4vz9v3IDxYYZCIfmybr2GQqSwr79cFy2rRPO9wSVP5+JIapMlZxIyzSgRI
	 BFy3yzsQWfoiAMb0uVnxJhyNa+qpuWwX4KNRYYazMKXt8Uq57L/uF7ZT8c9/8JsdLA
	 Tn8jq16chFwnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C69CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092807368.31460.3864806566715437338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd51ddc966043b7140fdc5ff210225727e0a24cc86b8c393e38b284c07392dd
Date: Mon, 08 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780928073
