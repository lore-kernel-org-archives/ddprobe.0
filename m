Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF9422083
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750815594; cv=none; b=EgPH9hT5uE44bjFFoWd+4hP8u/sN1RU2tBRhbJ5ek7nUfAk46982KKjBcNarGoQrn7OQ6MdPdJqt13apxaj9FFb7Gyoa9cFEre52SwKuael4zILg8fkYExZWhjCB/uBZTuAdgQAfAck+UpqhmNHwT2JmeN4PMoVlTuHbDs6IpuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750815594; c=relaxed/simple;
	bh=8JfJQo2eOsoxqHXlMRAOhyjP6sd3uQuN1osFOO5UMAw=;
	h=To:Subject:From:Message-Id:Date; b=aldpAERiya5XdsBvUXdSJXVMP+06oh19F102UWwsiJH49M9K/gMI93YTsi4JEt296nJTss8Vk+bqVv50fBU6WV1tl4zJh2D7UMJu5FfGeUQVn3WLIsnPxNVaHiZSNzdxP+h6jTHXb+P7jh7myfEji82VJr1bRQ2OojWVFt6WbCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI6Odyi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI6Odyi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C1C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750815593;
	bh=8JfJQo2eOsoxqHXlMRAOhyjP6sd3uQuN1osFOO5UMAw=;
	h=To:Subject:From:Date:From;
	b=iI6Odyi2iiEU94dWpsafhkQ+ldd8/0evhTSFvf6HEGtULedzGpXEC/hLl87ddbsNO
	 QzmbaTEvYsGg+hM0YKCLC8XPG94Z0yrUvxwqqtyLO4rVyNmUzfYIxSRP+JKlTPWBDa
	 Io5cJPFV40CdDiVdIBZ5TkH4/z97xF++xKAaAXwv/cSBRLmP6s+75L0Uljvzi33/tU
	 MMOGM2XOrXaK+ylpJYsC6N1p5Y8iWqIoBUa6R4mhc7+SaK/Nkj2cBnxmH66yxlO6ji
	 Q9BBZje0x3QYPnkSG6xnz0jvaVnaJF4UPhoA9NZ8RL82aCA8ShYLBLIvlBsh2ZSNov
	 zFQEj+CnbGteg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F03C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081559357.5830.4086637526944774391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3b6865a55208e5150ea4abcdc33679e03bcf6dd0a911b71ae4aa4cc3a09cb0
Date: Wed, 25 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750815593
