Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281D28314C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782768514; cv=none; b=A3BNZ9JWNm5uyFpGukqPQ33fSqM78lG2DmT3ZbsTGwfYrdQKxMfkoMxiwHOHh2N6mfLUzAHHInUPI5Xi72hiC+IQUqoBcUoow8tP+RezdPE4bZ2U1mEezJ5pXIWsIxFtwKI9eZYiGilnZlVe4ss7pIY/eLUBpr7p9qdyOm6/+Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782768514; c=relaxed/simple;
	bh=a9f1Jj5V1GK6JXyNXfJSqCiMOID5EywWGM2I1KhmBbI=;
	h=To:Subject:From:Message-Id:Date; b=Z/eqaSZyEClElw/Q1Lt+iRWjG2wIdKPbFsRSIyeHlveCevaUBgAY4lPS+2mfP1BBclvc6HhPbHTrBnS/wv2b/9VhACecdpC51hm2gywFuSM0VwEYazF6ZHbId/UlyA3busY8ttsbHlevUhrArfmfmUgsNWT9U0iboIpJe62pcLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op2KDh5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op2KDh5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6034C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782768513;
	bh=a9f1Jj5V1GK6JXyNXfJSqCiMOID5EywWGM2I1KhmBbI=;
	h=To:Subject:From:Date:From;
	b=Op2KDh5gJHBo9/kLDMC+5Sn8e6HuKp2dfS0CjN02KVTAkd1l36Toj00LEScZBqJzE
	 kDFDfnrTu6UGh9LA2fxD78AWePZ4hAcvv6osmdWd+ZMfSxb4tSn6GV7jPi0H0e84Pl
	 u93hNEsidm707gipsUv9yFzzau7CBm6zzbU14la/6b6JrbESUHFb6y5sd6Nbsb7HM3
	 /QraD9y9T2ECdz4TnuEYfaujcg4voonmrtJO8MElIe1PBEubq1EU/vx/mR2iNAoHkV
	 1CKfDoMLKdm4T1HIltpDKPg2t17YgDVDnzKL3SZhhqd47tdxw3rp0JPRb8bq8OR7Mo
	 BlHLhceUV3UWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276851368.6382.4336332125849406070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d130ecb98f87f944230835f6b4768800907d3e61ed3e69ebf364b333b7660ab1
Date: Mon, 29 Jun 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782768513
