Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0CEDF6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784436514; cv=none; b=rV9eATunDkZPasrU/33dmC0tBXZ+harR8ARK/wUnSIhlwAE/Jyk2inZnxhCnVUjhzjVZUcBDSk9W/zdj2cXyy7dbHPlnJDKcol5HJQeTyetOgZc4+0Lqx9s6xbxvSG2QNpfYBSJYx3shSUqIbzAOaWYfOQWIKmI/U+wiQWFqJ0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784436514; c=relaxed/simple;
	bh=W+GhdevDh5dge1Szo8rZBziKwcjMr4RjF+suvklOSyU=;
	h=To:Subject:From:Message-Id:Date; b=JMNUiAVupyrGeni1nXBcjvpk1wXHHOhMV5/dR31M5ExfVePl2SsIbjvrLl1Bui8fSdjuj9mTe98qSmOGBMTrucjYCxVAgL7rPI1KRIczVDxo0d077TegCZ5Pmg464yPt/+JNmu3YnoVJeeMCZYIPBWp8dsF4X9UN3LgobY2BnhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBCohO2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBCohO2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0687C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784436513;
	bh=W+GhdevDh5dge1Szo8rZBziKwcjMr4RjF+suvklOSyU=;
	h=To:Subject:From:Date:From;
	b=BBCohO2ounnm3M+P5SdoWGFruMvB5dvv7iOoIB9WZVwZMukEmhOjBMVkPVCPdJFHP
	 70+DwTu+Prf63cl1FJ0sj+7AN2HLNdHqihcBJQNWrLWF9jDik8serNL/yk0KBsn6XJ
	 1th3RPGTpX00VkCBzlGTAlM9D2WHSE8KKPRzsUpuLl79pbbTprWVZFxecJOov52Mr3
	 kfa3gBCbnwRL5qj9Ld2PaKr+w821JQTA39rG9Cq0GjFeH5yBBvoRkzfMOBs5VqWMNm
	 F/Vmi3O7wOSIERWIqzz2oEaaqsyN4YibzsuZ2C+KYNGDvCuDcIrtJzSUY8CfXH2DhE
	 SpXKZmQA+4vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8827C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443651368.17506.11419816491987676909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82da6776baa4dd1b63f25949e851729aba864b3df8c140b2c27f50aed4908cdf
Date: Sun, 19 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784436513
