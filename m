Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0C9523A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719197543; cv=none; b=SK1b3+TwvLJQ93oWdAf1XLmyQBfjW+2D+bihYSrD+o2FM+w8RxrKiGsiLPkOTwaa+T8xseTw92QtWvDFcEOPpxF67MKGqe7Sf0camOLfK4PueSLugC1wVTTRxMuOEXrKIvoneVs/aExqZDH2I/fkbSpuGeVfG+6N+HXJpk0jhn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719197543; c=relaxed/simple;
	bh=a91qrK0CYWjeJb8XtjZoalfcKIaVoeroUy5VHJmxmeM=;
	h=To:Subject:From:Message-Id:Date; b=fnJQ/5mwIjFR9twB0i11VqfRdb2IdYpNaC81pQQWiR6Jt0a7hfo2do1CptR4BzhC8oZPBphQKtweMFggzm1Rd7NDqBS51H9IK69nb9Q1yYjTX8PDANDnQWkurMMrvv/TM6EyQBLBZOeynhWU8fDdw+TR1F9Ks3ZPAsJ4FIMWmVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq55ixjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq55ixjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8568C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719197542;
	bh=a91qrK0CYWjeJb8XtjZoalfcKIaVoeroUy5VHJmxmeM=;
	h=To:Subject:From:Date:From;
	b=dq55ixjN0+SjqMjUw3Xh00hJ8bJ1BfscyMVqpI+iPHV2jv5J0f3tB9YlE1RuEib9d
	 R0Zt8ufym8oRM2C8KtdOwJzciSI9RzF/ZmLRsNHF0Jm40fz2OpiGRzw3v2Z64scoen
	 rpQl5xr14SPR0TNJ0pAZiTOBQKZ+WEKYIzwy49JNhkC8da33ERVPYZiiq02BUC3Bze
	 UHMb+rlBfXD7wfE70rk58YimczC2M7BYnpO5VybCi5DIAfMmLbnf1zif99/mXB+tdd
	 YCQS++ZROhR7v+BcDKyl17Zev+kkKTT+6NyFpqTBPUxRG0k1aWcBlTcMPBEjv9rFH3
	 Oz5dtc/7qgOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A46C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919754280.20909.1959414892453315681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4e3d5eeedea111f8e9b56117cd8c99440661e550f968e5020b19a9933086f0
Date: Mon, 24 Jun 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719197542
