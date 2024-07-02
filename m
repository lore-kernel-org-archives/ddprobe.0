Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F631B5813
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719952523; cv=none; b=KBc7BJUlI7lZ+hfS2NIRtnzV98uBHZN57cflCBiiP1cuCsOXGrBoebVFW9oWwkeb/eR2bLbOwSUCOr6182YoIGKopS+A3gTcuvCMLdBdF8XpLZaSbwlJGvHLCIOo0ILreiwQVT9ineCk+JsmjzF9iSNaPk+fM7DHLgKxLV17DYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719952523; c=relaxed/simple;
	bh=lUtTi3tj2dMQNwD/wlvRutd689oks1S2VjUwfZg8U+M=;
	h=To:Subject:From:Message-Id:Date; b=Bs52PA1pCh8NK6ENAO/rSbmULlIwror2lGb20TXk7xeUkTdx//FP/BQ12Acz/agiaPY/2QKedlZ8UjMMlRwoxOsabDzxtGLLTyoGhqsC6dpTctwfGGkOl7j98lfZ0tchrPb6zkOv4SewvH6v75z9GA3tdLLaxkJMUoIQx7Lkz/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5fHjOMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5fHjOMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBB3C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719952522;
	bh=lUtTi3tj2dMQNwD/wlvRutd689oks1S2VjUwfZg8U+M=;
	h=To:Subject:From:Date:From;
	b=m5fHjOMHXj63dP4ctjOTbBsSDhjgkKIQpq/GypghahDXtql1cl1dnRIJSD2sGFNWg
	 eivOdeQnSX5N72tmrbzggU92N1lz+6uzFPmV27sjgCqI1s/Gt15HiTo4+3MCSuuf/y
	 JtCIieI0SuohHvgCkrFXcfDWiTqBOfZf33H1Txkpk3fT7oK92kkEqQtTz309KwxwlA
	 t+YYdRXIrXes6NpTUvJqWkgYUSElBWH1Bw1jtmhkdhfEN3UVlffMtTgEO95arZffTR
	 dNiOWhyjJsYu2qFUCOqSGKI5/IDilQV4FcHH6OIpIfs/Dul1DTx5QCyyc6dvjnVgqB
	 EvA7GAgeKV9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FFBC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995252279.26184.6578899297422346187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9542de1c82eb3d91d6bc4b6fadac71f8fe8cc9d5cdb7f16f883ca4ecfc7131
Date: Tue, 02 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719952522
