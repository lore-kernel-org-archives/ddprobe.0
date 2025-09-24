Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228A422B5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758737994; cv=none; b=QqQVpA3X8aUOTqu6evksPcAVptgUl/ebzmerJPNmtRDrItqsYTqV9l9MkeoTOAurbwTlIZ6c1gnYMqobgyDGx6Ps/13eJ+RtpQ4pg6HlBVKqGHq0RN2agvSeWLixq/AWn1NLq67yMKoDpC5Z84uX5sO2t55emGumB2iV6atCtvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758737994; c=relaxed/simple;
	bh=mRxnLBqZs81MxIwJN7AmZWZKYEQkEBobAC0RVh/TC1E=;
	h=To:Subject:From:Message-Id:Date; b=l3m+CEjUEJHYZZO8iNxHPhsrszAHSGz6/S8e5vy7AWGNoUEbBQIPY0XoQVrfp9ltpA39FCG/jOOtP2iy9qpvtks6m6HL/2N5n1zJdzs/C48AYFGCALEvCIa/jMr6BN8dVy+NVDjinxXpQG+dgtNi2tUVakutgUibapd3P1kkkqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkIoaJDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkIoaJDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA9BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758737993;
	bh=mRxnLBqZs81MxIwJN7AmZWZKYEQkEBobAC0RVh/TC1E=;
	h=To:Subject:From:Date:From;
	b=KkIoaJDXUOE0JniGheB7U4JgV3GFyd00gpBR23LsgvWmXehpBhWo3V2Fhuda0v8gm
	 6l1uIOJTV9wPYmIstqg0pUqTfIyuth9BW5w0wl+qN3AedFpFaJV8dNEgCeTSF3+c/1
	 kZYnoD2mX4Dip+8iSJSFQEaaNBRaOl3J6bnM5Di9uWzRA65lEVFwfMlsEnSTYAds+G
	 v2yi9KzZVC6OY+3KqeeHLyiX3hes5XJ8d/PTr5727Les8LJp4QBdeZKhuwv72qoX6h
	 fXfzBVSq9SIQWZGUXR13bGx0c5EuW0uVDVizpSqENt/MnatrgfMkasTzUoUnKPGtuh
	 L5pA2fwNj4/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95938CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873799360.10999.10712816814798325294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799ba7527cd43d8050c2455e08832c5219c88f395269b223e9e951130751ad88
Date: Wed, 24 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758737993
