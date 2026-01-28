Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227472F7AAC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596434; cv=none; b=p+OoyarZ4/LILo6qPiFj8omVdiOv/eW7qs6Zfktma9yvJFO4J4FBWQBdMqw+kKcVDCw7q/t81xPoWFz+n0xE96Zxp2DkuuCTb3GUarx9XSpxP9MQ6jApJ3WE+49Lmexk9tsvpDuRFma685YODieaL2VPkKvYK2n05Uv13LtCXRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596434; c=relaxed/simple;
	bh=EOGIe7RU8en8QSdsERIwCKVwrzwLG7vfyzgsb6TOhX4=;
	h=To:Subject:From:Message-Id:Date; b=iqmxQPdHDb+GH6vpCJ3ngdLo5zZPmTJZ1tBpRPMbZ+P/NL8L1juaTEsakD1PskFCe1jLZfD86vLtHCZHmHTqpw62PqV4H1qZ61On35iwdbPymmfIGo7vwEj7YK2W30cx6QYvc3Qay8c+85DF3PLxmjZ1lgbNhdnp7HRjwAFC2yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj2cpmLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj2cpmLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577CC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769596433;
	bh=EOGIe7RU8en8QSdsERIwCKVwrzwLG7vfyzgsb6TOhX4=;
	h=To:Subject:From:Date:From;
	b=jj2cpmLm/pbjOyCS7fndlu/5TiAKqF+KdutPfgBC/79NKRAoj6ii2PEdkx9kvnX7N
	 o9iCHrLO79g7qogbOpx8D5sLhmuc28UlS6pmLtVwitFyxxqzDEsZAF17Rf8c3EaBgK
	 wSfKgjZjuSpSUOIQIV78L+Ftzh1LU6sRg93aUSPbZ9jXZR3Gwm/3naZsRkTZupDPPf
	 LBIdkgGLssb3xIrz2Lcdf348eyjD7Mpxbh4d6uDGenQwVezb94dnMTl1YUn88j+tso
	 pRPgkKxcQ0BcXq1shCXlMVEnmUqt4gPVDeGJxsPwlzm1Y4/WnwF3/D1Vcgw8ipoQrZ
	 IiWN9waUjczwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C14D35697
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959643357.4321.13985531460237456540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f39a9712df57b3a5bce20e1dc8a0a58b55f8d1d4974e2f2345f3baa75b9d96f
Date: Wed, 28 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769596433
