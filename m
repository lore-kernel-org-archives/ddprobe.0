Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3833D1F4C87
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760968194; cv=none; b=DD8CUvGOzikQtJGrmfEfuRoZTzT04MUh8TSBpZ6o6IYzLLyLwIGXxCj2LVbfRGwIlYk1+7pSmHps1fSpdcn7noiiexPt5TVoc9tO/fAPrSQIjHEtV/qpK9Jsl2DB5UI8RG8zXsheHNI5V3xUkclEXb7QvaXwO/RCfNcarJsroWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760968194; c=relaxed/simple;
	bh=fGlDSvA5um4KBbM3PzQ3Iukbv4UEUK44/kka435t37k=;
	h=To:Subject:From:Message-Id:Date; b=RVrS9HsSnl1fA6V9ouQuF6gOm9xTuEOmC/d7NStq9L7p69ib60iyauy1H+b4deUPc7FubxnF4UONZxG5lqBYrUkqq66wrcQ81G7eNXxPXw2YZ5VHhltXb7Ag0i0FKyD5ThzYBt+rrihqBRyA1HosPdv6i60Eg2jdW/n3b22W/48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck1aMuvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck1aMuvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A965DC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760968193;
	bh=fGlDSvA5um4KBbM3PzQ3Iukbv4UEUK44/kka435t37k=;
	h=To:Subject:From:Date:From;
	b=ck1aMuvsRMisVYn3h6zYW5SuPq68DphouVBPqzBBBikXyebApaKl3xP7PkI3An/gd
	 BnnDxosEnhuJQ0plG1n7ex9dMGeDSL2xBQbuMJNA0bWU8qQ/IUaiFgznSdFCQpcuFi
	 XthZyVir2ROQu9n+eP6dwoGpqm34CuIKRu7vWEis01gKYP+Wy3woHPLJuy4xBoQ+Cx
	 X7VKCnMmlXkdPE1eZ93s3e98AigxqcKFaRHOKoT3hPpLPgibsOxp4EHmuMMoNA7+GO
	 tbKnco4NP+ECgZvbfVrHmpXWzFv2PnIvA6ydD0OdCrzLmyvlMJG4Ft7oTZcnqB9r5R
	 djyg1aqqq0lMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A9CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096819357.7335.7686987081669734752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a09cc30c4a75b00f397662b7ef4e0615cce9d1e3d9cb6670df66ce306a9a99
Date: Mon, 20 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760968193
