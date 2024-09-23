Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2A1A0BC2
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727121354; cv=none; b=HJjpSpfzNLSabL1D7ks9ViYDfmr+/1VsLEMsiwzuPPkek159Gr+miXPTbbrTEEVgcoCXkLtBaUc3A7QCPqcYGANXi8iimislXbnyhJiI18rB94FCAL1061StwuTgBYIfCdv34PMruOhvrvXz5OuA0ZROch5M1CFdjH7bflYAlNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727121354; c=relaxed/simple;
	bh=vnruvxWWfKYNkse3cWzEgU/CtC+S+1rEp1y9d06agEI=;
	h=To:Subject:From:Message-Id:Date; b=LTnE5hEEHYZgdqWEfi1F1o769kqzKSx+3GssBvwqwakQSQxQwsndSNpA2Zc6QuWKO7qRzr0XeNV+uxVHjlbpG2wW5Aapv2tgdTeGVD+z40q/JQiIa+ht0vq/MlkYAvdOaajl+LxsPeGL3IUE5+ORbl9JSWQTahe0Q4HVg1g3oXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocH/WnxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocH/WnxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA7C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727121353;
	bh=vnruvxWWfKYNkse3cWzEgU/CtC+S+1rEp1y9d06agEI=;
	h=To:Subject:From:Date:From;
	b=ocH/WnxN/c6Vk8X/MrBIwQ1visJetkdKFaUNtyLOlBzLLFkqGXIEMFMfy8UF2tSGz
	 Mh/B1k3ackb89IK8iY8bvgsh2R7GLBljx2ZeBHYNcmSsUIhfGHh/w3sbYCk02YDCr/
	 h8qdD47W8qeMKKvKE8Axr6qWKSpNyk0x6b4KBwQ62eCUiV1kVInvCqzzEEX9pzU+S2
	 p8EqmFF1geIFPzMvpPeulniZuJSZ+abAZQua098dC/Q/xbqQ7iqwkazcoWQquPmlwh
	 JGv/QVAoxl6wT3E4Dn4Qb1BeW3v934Duq5j65yxNF2XR4KZbfkTijbqZkl219YwEux
	 mM0GEh6cUDRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98430CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712135361.29387.11834299970560751425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca6a6e1761b05b505926016e7d5dcda53af402cd6900c8a7f1e7f18539fcfbf
Date: Mon, 23 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727121353
