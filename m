Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2254C1B218C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732546554; cv=none; b=oTSYFhxDuhxH8Ezx2Idak8zKH44e4LAaATiK7jTBYGHEPsuIsDg7iVKpnGct5cvmZ4bK+6bS30bFMpcxSLDciTbKuG8sKlL69vj9FfQJLAMqQrBTctinG+hF4oAbybTMH5fAFfFRVZKci1+qhL8QjolFdFdlSCvLNbP25105/uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732546554; c=relaxed/simple;
	bh=ZIwslvagsWEXfCNokDaBu+yav3FiH4TNV/Xt0v6GCvQ=;
	h=To:Subject:From:Message-Id:Date; b=uBXxyNwLgxkbF5NcdUi7vUMDAE0R/kbh5/pOGfh0AyP3YD5u2KYi67QTpNS+H2thA+0rkbqKoM79noLNxHH/zaC9vBIxB7JP0wX1S/oZYWdcSUGivXc8QQtHMENPcoQgwVab4wpvs4GO8IgsMTM7vXPGAe0ZFe23MlpZSS1SI68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB+UzSyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB+UzSyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9860C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732546553;
	bh=ZIwslvagsWEXfCNokDaBu+yav3FiH4TNV/Xt0v6GCvQ=;
	h=To:Subject:From:Date:From;
	b=DB+UzSygCwnBB4vE/bzhgraZRYuLNlaXblRqp3f6atne87FqSwbSzWXp/Y09Y/ddK
	 yDDUwfuGGie8zox9zQUByMMWZBDQ/4a3hVjCvzNDzX6BSjBCpeN/UmAucc/71z3/1P
	 PnaJjyY3Mu/OMfgZp/EU4InY4b4R1UC3j8u+CdmjPk8iOGM7KJZgSz66WB1ooxOvR2
	 g1x1jbPJPs3v4jriOiEuWKvnIpxf3VrVvgZ3eu6xDBDiXoE8aXxFapMg+Hv+uDn2nG
	 mAXgTNii+GVGT9rUTNABs3a0oSZbW4HakPVB0h97oWHeyHDqdrTtaJzBREb3Ia1+pV
	 BwD//2ucTP7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420DD58D5C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254655359.8865.10852104073662946141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc373f15cd9e9145aab68f7e3f60e5a5b56f893fa117a3fc6b7d57cd2e000b2
Date: Mon, 25 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732546553
