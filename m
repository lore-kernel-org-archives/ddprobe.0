Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CBE25F988
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787035234; cv=none; b=ZNOUvt6/LZGXsdUsoiXzlz/FxivVFna2Acyi9psUxXEncqJDEdKXYO66yW5E27MgCGq3NNMQ1ZwNMpMDo/CW8stjlq/rc6fc6fumjySe5swZkkF6rbwH09LVd6umLdtFNeJA318O5HdMoTmqfueB3JZqffZMo3TEbrlrHAPwqL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787035234; c=relaxed/simple;
	bh=V8prAoQfqZ0kHOTCkzyJQcJ1lUzDKcPHEQUytooi/vU=;
	h=To:Subject:From:Message-Id:Date; b=LtFB8ZMxNTJYEADDglRXdwvHW1iwCzAgPwCnghL+2pfi2VBcyfqXMoidPpw01oiBXfoREF4BwmzNla4m4Yn1WdK8Y+zY86VVnsjNzun8RpOaPnaY2Y5z/dz1HTRWYfePpzHqpSeRlJ+JYOTEbubWl+xqYT9RKvR3NdDlLWqODvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKVctdwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKVctdwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0D9C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787035233;
	bh=V8prAoQfqZ0kHOTCkzyJQcJ1lUzDKcPHEQUytooi/vU=;
	h=To:Subject:From:Date:From;
	b=DKVctdwktCDaLpj8BBcB7LVevFoFUv62SauPJb267c8WZirYCEDUZUxNsSiRkxArM
	 D9WyLCS3iG20ArQu87YGSqxs8l3OMW8SC4qT0X+UwwzHRO0DREpqZhYoYrc+vBwcaC
	 j5725TSsbBvsDxY/6FeWNLsP4ebIHndbS+YmxJapUGYUuHRdee4Q8Rc/UuTAN2syEz
	 k873AmAtmeoMz1ddXYxbprbfqPPVSRoufxPC3rwkqNOF+idboZHwKDm27Nr+80Dj69
	 8Qip+7UxPQzsL6Zhb9Y3FP7IR+VegdvkK+L2/cu1Aztzqz6ZEbjKoasTwM3DFQ5b2r
	 5VPZnbuimJatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F72C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703523373.379.185119665874634233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972058c52e3c232b5449b0f22804a31d554a35f3e9811d0f9f700563ab98369c
Date: Tue, 18 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787035233
