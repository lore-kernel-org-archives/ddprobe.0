Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5A040BFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707152297; cv=none; b=MUoXHl8pqjzddEbp2YVG0VMaInTCloa2zLb5pjCYVl4c6w/LEuWYantbC/HZHq3bJvezDAU6nV1mYO5YvsA98Wd/Y+TPcn6CxXOZ+zieqLffslch9lI2y0ESrPXm2P5vHgW0z3H+Qf9OsS/vLUR1nImwm99NORDJVTuWAzUBGLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707152297; c=relaxed/simple;
	bh=K2KkbRi1n3tySSVeHxy+WRt3vB0Fj+qOIBSroo9wTW4=;
	h=To:Subject:From:Message-Id:Date; b=IKzuDEb1/xML5hRx2I0JCIZOMLvQnbrguH8FmcPirijbmzFsxfYSALu+juqk+Ao2nu6hdGD5BcgI4hwLfNM9iKbAssaSBf7xWkP9sghOLAW8Gsi64hT18bVwnprKWu8X5HjQ7vJEWgQFrA6ibXEWzXK/qWu9sAUQ/DJ/3CLU/MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rklCkn/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rklCkn/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9482FC43390
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707152296;
	bh=K2KkbRi1n3tySSVeHxy+WRt3vB0Fj+qOIBSroo9wTW4=;
	h=To:Subject:From:Date:From;
	b=rklCkn/kw2k1BA5xp7nk0BBFKa+pj2lACX/kERbnKo/j8GFcLY+InXGv/Oe7yKPEZ
	 MqKejhr+zBfVot3Sjs1N6+K/dW6tFzTQ2pycshBckqR7GIPJPPdv63cgta7TCvFBxg
	 qPTZdM3Tz0dnbHdidwAU6bMcJ0+2MdKSlLvKA+kUkLEGT28Z6Xv89Op5bbEMb/D0gU
	 UfuXV1npLNbIb83GPNVlS2SE59mpQMHdEH0H77XPdJMxbV6arYuxaIIrQug5Qvodre
	 +pMA9ODA9QuEAIFKbIrYuJALzw48DinhEFY0LgtzQGi7ovh2/ACwKNmBhVUwW230qv
	 17sMe0ZfbOvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70754C48292
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170715229642.21131.9240268490261185821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0b21ec7299d0bc7829478e949c35fe058b6f8de4b32bc3cedc2ed2dddd84c5
Date: Mon, 05 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707152296
