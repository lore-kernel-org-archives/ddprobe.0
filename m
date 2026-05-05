Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33E54654
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778015854; cv=none; b=VJCtp/u/Q4rcYHGkwQTBQfdXuCgdid/iZSv9jaYjIUVpj0A4mhmq1MRZOOBpGu2oESx9Z7gZBsUF95+FxgApTDTNAff5W6U7Nl4pcMRav5WWQV6a8NTEor4OFEJxpn4Y5E1wZdvtuPJuHlFfqdrKt+AZaHKI79tiPr3Sk1FomBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778015854; c=relaxed/simple;
	bh=QjVTFApytPUdZlpss44ZCA/cQmcfdzxP1MhuII8rxUs=;
	h=To:Subject:From:Message-Id:Date; b=TTuZlEtviAXEr0y0QFZyK3N8yujaUuTbl88THNeY/Xs5wzJ0Nnw4o3t8NZb9U10CwSYg9cCNlskWxudo3j046nZ2M8vybVIx9NOpgvDkceP3qufYhTdGTG27ea8XvbFXeE+vRtJkRVAtGEiCByqy0vbayHrrwF0PRh1ftw4Ju4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulEydc2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulEydc2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C019CC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778015853;
	bh=QjVTFApytPUdZlpss44ZCA/cQmcfdzxP1MhuII8rxUs=;
	h=To:Subject:From:Date:From;
	b=ulEydc2Q4qC7UdLJ5AmfFxLb8S/Zqyf0a1SdnFEhT0GTwlHpErN5+RKhZVWbl0VCn
	 /kO2KmUm5D0ukK0vY1ovLYO1bOJlsHtJfU9w3JM0enPmJtSDFBR9Xe9pbFu9ewZjl0
	 LzGJzrB+UVrIw3RVPy6/BFttDnmipCm7NcGpB05SylF4quL73UdfdnKUTvWyeKTs1L
	 clb+/d0v+2Ul82jWBzRfLpn1Gc/HICboE4MSpgwKZBV8M859XGsAWgrLPvymLLoChW
	 DtQE2s/AjoERKi77yBi0742V0cdURIu1YJWLi+r4DdzxXzX6parlaFdqSdi79g7WMn
	 dA9Yi0O0OBhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0FCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801585368.26370.11814994447878715655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1247deae0077c8318c910a0202305baf8b18939fad969f1d1c1164579c4a8a
Date: Tue, 05 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778015853
