Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727C272E60
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751369395; cv=none; b=ukyVfPWIO4MYQbux7QIwm9V23DorQFD2JeaIdN4Nd8x9RmwRowopO6A3pJMV6G6aUVS4652aVm2Y1hmWExTkfD8ZAoPL00rVeXj0NVudl046wa41PONo0mj50QhXQLgLQQZE0jfAwQrfguaSxGYNeZ6wqhCTEmoRweQwV8JqPXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751369395; c=relaxed/simple;
	bh=n63Fj5zL1H1S3Z2JQciNa0hr+eUA0udK8ImFspuO4yM=;
	h=To:Subject:From:Message-Id:Date; b=T2qizataPQLPgRJjmLGRbTv4Xb1Y4HVG0I4A3yrC1/qhgm/rPXPtAlmGrvVLVSln4xd7ykprJjfCuCQNI92eOyEZRA0maXsoQiQd0ebzKZwL4smFhQ0ofM11Nmd9wRGAnHfOSAg5AuCWrjcV9HpNHZVrCds4E7nnkPxMhx+0o7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEq6Dsls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEq6Dsls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA01C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751369393;
	bh=n63Fj5zL1H1S3Z2JQciNa0hr+eUA0udK8ImFspuO4yM=;
	h=To:Subject:From:Date:From;
	b=KEq6DslsTeyN5HaJvsbUecb9feZ7ZkSHQ7QgNd58aET9a9xB9GsTa6Fd3j3XVHQZ7
	 PU9qKIJKlq9/ZOMDN78zsVz2zCdNHaUbzYJ2mYIu+voNxuZku6pu0iLzIGjIPxPbHI
	 B2SpEX99tTGcgkLt0NIoCXmc/mSv3cq2s6Mrle0IoTw71PBhlluSk7JDOyDm/O3f9/
	 2twGldbS0OVSd5y3te3T0emZCI3Lu5rtuXw7RjFM/b5GTo69cIomMaQnzhk5hLWS5j
	 RPRlmj2A0q8UqvgYy9KB43vWChFqXG5N4WVaeAG0jaln15sdP/XQqAIsJyWzTyvspN
	 OdyHLPApvY38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCEFC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136939360.27532.6995971260795905148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731f28acf32e2b31af9fd8c44fe220ae5a4967e0b2bad968736058bfb0c302c2
Date: Tue, 01 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751369393
