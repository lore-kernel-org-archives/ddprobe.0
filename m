Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3252F36F430
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780985074; cv=none; b=K+KzHiE4CZT0JLwJiJXxCD3dUGRKduC6FZ5j/oMJw3voq6jtq23F3sw39o3amNXfj3H4TRi70CogNPM4U8lBAmDo+lK+FABXxfWlJm1G5T86nTnhQQyCzRS7ZRd17jQSUvVq8UiAvik3RTZuA8SREm9AsuAb8IWEXuVBlj/iBWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780985074; c=relaxed/simple;
	bh=xDXZceyboj+Pogbhr8zGXyCD2ftzU2Iix7WayzsadOk=;
	h=To:Subject:From:Message-Id:Date; b=JSxi5ICxMxGC5riwoGOMCjU2CDchlecjXOeUpVrZETwlKaBdcNmb+1VYGANZdkGdhj9FcjgGQg+kSbahnqnIDSKScfk7Da7HMFLH0R1vJPxHlOJCKsUAusRyHfHLzmVUx5uhMPkxveLDiXlPjsg10Jo8Vrygz29gaIAL5SkHz0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGtqy84/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGtqy84/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA71BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780985073;
	bh=xDXZceyboj+Pogbhr8zGXyCD2ftzU2Iix7WayzsadOk=;
	h=To:Subject:From:Date:From;
	b=qGtqy84/Ei41MBPOAIhjUVyA/oXu+JHjawbV5NGYvN6rSIGyRtcHog9M/xUPx9UGv
	 jWtXgN8bjpyFy6yTw9TTrO5LxXAC7M36In+O2/MHBeH9IXw4x4gU8AJ1PL+JpZyyar
	 UmpKcZ84ZQg3hnChYekaMQ3IoD3Ide8XY9kwwyavYdBeK0AgxaogxCwQyz5wp6h6nK
	 MN42MMM47BABi++q+dYXh4IQ2R9afaZv4IwzdTFG5NkRxIGyIJqFrbdzI4NUiiGwSv
	 jEIvgY+lqBxv/oobKWHta+3mZrL815z1w1NA/geYUeYUAAp22x0QKAS/9cuUUhBuIB
	 Mi46mqo13683A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF9BCD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098507369.30737.13234429921153272963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d50d639de7c9870db41d0c6ef7a568deab0ce5a4f92127438099815ae911ce7
Date: Tue, 09 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780985073
