Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1215A404BD5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785453634; cv=none; b=NNGkRwofRNSkvdtbtRtOSaoLS5gRLsQ+jzLBVH0nuQ73wrja4LhGUHjHylvbYu81rm9Ln1CCTeRYGyrRe5e5hhbHw+PfLzT5JhfENx8VwOm8/3dOvvT7Z6/yEy32KrpZoVOnYbbFCccZK6nCgNV2JI3oiBexaRnaZCsugoIw+OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785453634; c=relaxed/simple;
	bh=/DPS0E6hRRlVYzSs8+VQ/HCchQjN10Dmc3LE+yPRs8Q=;
	h=To:Subject:From:Message-Id:Date; b=cSzLaXOcVHTM4tq4qm85NUoufVJL+ij2Qcof67ekjv+I4njb1Jt3RAZKJ/jTu/tqsfCahK+X67Mt+z75ieOD8v80nLebk0BJUkUUnOjNDiXrjuYCEzjiJHFxZ8ntNZBoqXioB17mkKpo3vO3minQtbpDXlj3ZFTkCVjoEvbTm48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCbUfTZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCbUfTZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC94EC2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785453633;
	bh=/DPS0E6hRRlVYzSs8+VQ/HCchQjN10Dmc3LE+yPRs8Q=;
	h=To:Subject:From:Date:From;
	b=HCbUfTZ/ATd6MiRTP/PUcAay3hSDtli6pe/rtJuQwxcwaIlpEr1KKUNZ/AotzWjQu
	 LKNdmI15kT2jKOgwZrR1SLamwyf3gfO7tBQ10ChGAc7qhvFXaEIRepVLR7rZAYFSBy
	 hHKLOyZDh8pp3xK7gQXqQAPvyR59bMr5Pe/fZt6Nmqx5Khh6wwMzpqPuT/Rr21XZ3b
	 OnsBTFun+7OADliVRGBB5lwoYgljUNl5VUwSceaCs36BXvGHDn+ZKlx/8KhrPhdHLt
	 jU2oj/+VDHljlvYE8QEQodHRO1muIiiyqygTrb9kyDQAwo6pOkAATIiI4pfiZooL23
	 R9Wt0mQDU3aZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B23C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545363368.32597.15587237315981035829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8f63ccefceb0c33cca92853b738fbc2cd110db8ba29076540e4bc6403cc303
Date: Thu, 30 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785453633
