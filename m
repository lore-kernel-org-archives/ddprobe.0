Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608D2D51D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720925423; cv=none; b=XN0qMVj3ONty5wJsAgNDHAaHPkr/1T58yEt0+dYMZknUeKdgRjh7FQFLvHNV6uK2hNwYyC15sRM6sXzvn3as7u1GbhgVgzBdoih+mlq4CVilmhQm6L2518sdcQd9ts4x0egkke/7F2bkrxsTLs7jCi7HfXBtSY2bVMKwngMBORk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720925423; c=relaxed/simple;
	bh=GW+eIejHrIbhNkNKD+8ofX21sfl52egynzG3W+/0nmk=;
	h=To:Subject:From:Message-Id:Date; b=Ej52SxsiSbWECf5tCCPmZYlUTy1E/3uvaSk14ASflMyOkxziz/I+99RcBtaSjGILHL4JgkIMqOQNNJqI2rivfXtuOJlLLP57T0Qx70hQDN1j7aUbgxThQ6tlV14a4GFG4tvTxGdUfk6VUC2dGufjN6Zf2m8b6w+VbFhlxB17DFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G656z4Ba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G656z4Ba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7295C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720925422;
	bh=GW+eIejHrIbhNkNKD+8ofX21sfl52egynzG3W+/0nmk=;
	h=To:Subject:From:Date:From;
	b=G656z4BaNRniFrqqIhQfveU/Dcb4sTcmCMZ/OaExRVK2g9D/vxeE9nNQbGP21Naz9
	 ZC1SHkH7N8ghiodaxErts8HtKBmx28qzOy+JgOI8oCoKYQPVykvLMUOPiBE6AKwq2d
	 i0FBxD3/pRbyXJupZU0dzcvYJb0HPpZ2mmqEdWuyEBGVzfZrIbUbgQOAJqABFtXDrx
	 Ut7xc46W9ZYJ3Mt/AVYE7leJ/OBWt/RBwnkU8XwGa4VN6qboQkp0DD4LYVII4wusq9
	 rfBPcg7hhsiuM6HITUa2Nxnk/yBDTrs2jVKz3O2+ODFXCtaq6M99qL3Fc8HJnu1ghC
	 o0Lpe3B5zQxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C192AC3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092542275.9135.12237718023039554540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c137eb74dfab3e1943c3fae2fa28df0342584a4657348b72d4e2cc9101c0015
Date: Sun, 14 Jul 2024 02:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720925422
