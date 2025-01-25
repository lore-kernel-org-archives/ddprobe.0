Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6032478F4E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737832554; cv=none; b=DdqVgSTZHdMo8CREk4uYrIxEryAMFwNVVHV1a3I94urwrucf1T3jt4U7lkWbclq+f2qfS1uVumtHmi8sxOTKh5IFibQMV8mRLf5Fb1p3UVTPtCQwQdX8JbNpdZ0aRhD73w2LYn1vTucumt+Yx+dB2GBjf+1vr3PAvzPvf3JKwIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737832554; c=relaxed/simple;
	bh=pAgEQeu/BS7GGBsTzD1iUYwl57STpU6hMw2Q1n+DUOQ=;
	h=To:Subject:From:Message-Id:Date; b=uJdsBPXeaY5YPJtvZ4WbGORM1v4kTovwSfkWGyFx92P3jwYjlBCL0IxKhL+llFAR3nHqJqJHMbygmVF4TF2hz+KZhLHe1prUAsjvLPlEpWkArumBOJKVc7984/vZ7PYsL9N8wmGFjMTtAttYRzgRngg2Cn4BDXBk7mpKsDpm9i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHnjdY6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHnjdY6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB77FC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737832553;
	bh=pAgEQeu/BS7GGBsTzD1iUYwl57STpU6hMw2Q1n+DUOQ=;
	h=To:Subject:From:Date:From;
	b=GHnjdY6TtJ4VNahj24+pdkMGW1MUgovFEKsy1XVAgvxO8WIpv3gQ4J4d2VnLMPIrY
	 wuTDQpbJaPfTzCOyGBEIu0FlDD3jTTMjwgzwoHQl5qyHwXco0QgB3xEjkPnMtDNvfF
	 3XcUw4k1OVshYie/9ApTCAy1bQM/qu9iD4mSA3/sjfivbjVFD6y4MPv2ePJ95XDNVM
	 1RB/gVQq3HiNS5OKIZQGiIbVWbAwTiujWYBeiKj6H9N/yquOLYeg3tVZ9N516+gf+B
	 jptKooj9UFQNHHscisYVRMU8ew6cIT6UC4Q2SNn+ak0lgRPyTRBLH07KPbbFT9ZJ4C
	 +PW+fcyXro2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC2C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783255358.9430.10609138990944255041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f92d7ebcfe924765670eeb1a2aa337be51a22698b4035cda27e3259fcc4d567
Date: Sat, 25 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737832553
