Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F486329
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774182894; cv=none; b=acXVjK4OKg0mcgQx6Pr6jGSp9eyMO1dN17Mhmv5xjH3d3+v2N3rXB24M+r4545+Z35whn7NjIc4trsy20ckwb+5ZC3LYqGIJRgU/jy0thR5w/tP7bh1h7QObXdttycsMQU9eETqjflO4sXUOH6zim17OPeKYVx40M5t66OKCAgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774182894; c=relaxed/simple;
	bh=4m2LRF8JSv7iMlecnwCWstgG6Dm8RQv3u0RbSQhkQlw=;
	h=To:Subject:From:Message-Id:Date; b=CImIrV5meFtc/CwxBp2ZNoQ+zbxaEtLge3aILkJNwFJbWoR6O94rXGeFyQmB1FexYO/Ydc2XoMUXeZctNvBLHtizVE5zcdGHqknbClAHVXbj7aC1DeXfsGg/7LHAqqojaWy7fYA8d9Z+ukgUDMQBZHWdunkY5v8bgYGG+bMJH6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue8Loojo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue8Loojo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD2AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774182893;
	bh=4m2LRF8JSv7iMlecnwCWstgG6Dm8RQv3u0RbSQhkQlw=;
	h=To:Subject:From:Date:From;
	b=Ue8LoojorNiTlcXXaoqoyOKI4/Ht8B2IC15wMnL/EsW15sz95H++Un00mnHWobDoI
	 BdTXT7yVVpSFci1d6qIBwApfpNM4cBO7RKRFf98geXMVGWb5TWJYJJa117TVN16FFg
	 VLjiahQUZhDekfaOiKZOlMqSokvB32jllMKLmWCL6QVnp2BiiLggOIqFNJR3xB1APV
	 MuNG6IcceDXf7KGxOqHZpV+pzwqNqO9wJsc9odnJ+nateToeooqZ37n5QNGXA4bKg9
	 wcz+RrOPr4nZZPEAKTszmcp6FLzHpjpob0ky2p21uKgFHP073RgRk3iHv9i/AePgL4
	 2w7FxTTpnK0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97172FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418289358.17615.1468003510805389794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7cbbf62ecb804ed02f5cf5e022acce137c081ac5b3a6e5a3346d717e09f5f04
Date: Sun, 22 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774182893
