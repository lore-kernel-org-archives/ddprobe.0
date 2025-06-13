Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE0E25B30C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749811194; cv=none; b=YAw4mJAut1j/hzWxNVYaGnAGUDEM3Xm6edM/+Wryzjgzp9GYTuefMezrILw7xnZ5E/QJnmoSRri6yAbqY/jKwMfBO6hBxBlwihkUgo/CsOWTFmITHhZ67hoZH+tU42jV0iqeclMOBEe9R75DNp/fB5bV2F1KrNyboEhX1WRPefY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749811194; c=relaxed/simple;
	bh=uG/kOr1j6BGU7cYa33/nNmPOe/dOkMKOPIA3SgN36AI=;
	h=To:Subject:From:Message-Id:Date; b=Pvv1Ay/YXD8QFJTzojeQDUK+O0kn1Ub1MNwuwc378o2nR0xcVnBn+4Izb6Ejo8QOnuJXVpBqjywb1DMUws0ZU/XT/KM8JlRsl8kFbNeOPxfPzBjwGAOBpkp29svoHttykHg9TobAYshIDGF0g6JfTxi5yGK4rFnjbtAWtCuYyX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9WGvwlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9WGvwlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2439C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749811193;
	bh=uG/kOr1j6BGU7cYa33/nNmPOe/dOkMKOPIA3SgN36AI=;
	h=To:Subject:From:Date:From;
	b=i9WGvwlRBLS5bQJeGLuUHaznc4RTsUmCLhZAfgpgZGITnTEZbWtH2gTgRj3Z5kpeL
	 0L+eBqp5CySSzxMl2GAmfDYhtU9Q40He33x07nciBucyQSziYIN+2xeV+UrtJL9k7O
	 d/Blvk7N97poTUZZQrd8wPZd9XoetwnGXpVtxJJiKjoXvDHWzQL61kx9e8Kd1X+XIT
	 RjfM9rpcsJmnLlmM4/pezOodtrsEyHAvkHtKNvSbq3PW1W4tm+eAGL0/Xy2bPE97gk
	 eHtkPHm+C3vXGUY7AZdU43hrH4VIffOqu7JiaxQ9kOZtoOv7jx6W2brXDmhGiezipc
	 RRKZqZYdhskVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC47C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981119357.28219.8394219699152317192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd5f4a726f27f5985bb437514f3820d2a7ac5e2cd9eced144b30c5fe14beb2b
Date: Fri, 13 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749811193
