Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6600D175AD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716750263; cv=none; b=e87GQxCNTtUUP0WaDsCZHGUlKmo+6p7CSW774npmR8zQrX9yvbzBGQ5+WdA+8fDXva3hW9sYhOrzXtxee69Vw/4Ll2jGzf44VNV5it04Wa2oy703mwgiv+gnODgirYNks0lmnW+gmrJbVeSpLdczppRaOqqamj4sqyD6OoWVLV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716750263; c=relaxed/simple;
	bh=OhZF2aBnEqqOU0EnqhG+uAOxN5053XKNh6USD7bPvMo=;
	h=To:Subject:From:Message-Id:Date; b=B3SV3Ko+mk60Y+JhaduOKXwZ6dTqz8nNIr+NREP6LfCuK61tI018LXjX5bf7fvD1KO+2cFkGfofZreHqSiVy+sDQqpjJrmLVVZiEuU1TUEZz/XTVBadDeNmxLJe8Y7kEqVyk19dbP7gngdlSdr9AViq6SgX8hhNdc+0sJccbc6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pljBV1dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pljBV1dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E827AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716750262;
	bh=OhZF2aBnEqqOU0EnqhG+uAOxN5053XKNh6USD7bPvMo=;
	h=To:Subject:From:Date:From;
	b=pljBV1dBwy071q1/JWsvLqs6vDhjxFgORBUIjkO32fcu2J6Me7OEGqVzGhv6KHEIt
	 GH4koLuShgJWwmfO7zNktVyJn2h9zcz8vOiOEfTwmf8ujAz80MTLqAbFHX+JsOYion
	 JfMS3lgbqsKI8I8km4jWjtR+nABilAw6H84Zu+cPJUskfihfAgW36qs+MMX+tyf/gY
	 8rUuiuY/8QFxge2qZ1O9oU+KdxdPO2P7oIatO0ig6SfUy+gflvrxuc6ws1hc2oGHuE
	 8YdQEXheX2nsZmMB4SQlFVJcI36do6X7Ij9EXrvhK4xWkW3JRs+ep/eU5TueweyWHD
	 adNlj1CB4LVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9249C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675026280.7890.14528572273567312898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6721b39e3f5248c24bfe7a25f6ccbeafbfea4bf4b1c93bc72a0cf5af21fb905
Date: Sun, 26 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716750262
