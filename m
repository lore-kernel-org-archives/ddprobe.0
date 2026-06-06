Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599927E056
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780727674; cv=none; b=cBW4daydZ/6R9CCNV8SUz8oShI7ACmtHH2bw6v1SsGdMojAje7ukAHMUJe6L390pnbYAkxysU24eFusfzLZqDQd5FWERQYdhqO5FNwqfIQhynR9APA/SIbah9nghyc/Ih1wpYW8o0WvdYF6AMJGUZgf+paoNogzLEwxFmn7bnoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780727674; c=relaxed/simple;
	bh=RESmzbuV0h5gA3g2JgZEclE26OXvncniv6KCv6n2p+w=;
	h=To:Subject:From:Message-Id:Date; b=QExpHWw4jVoMxN/f7PhPVR4j1je+EpWE74jPxLyh/nEUkQMcWii+P6NrhpcdZKFJqGkyoHFIOnLIb4XrQkU8FDb31Dcgusq16QgNDHbAuR71yAgKXMfonNQR2oUvgcpZH5QRY/gMYpwymsAWiHwYyvnjuKlSfEoHA5Hfv4Qpd40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzaNHx45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzaNHx45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780727673;
	bh=RESmzbuV0h5gA3g2JgZEclE26OXvncniv6KCv6n2p+w=;
	h=To:Subject:From:Date:From;
	b=GzaNHx45KG+jbjdpod00Cc/zUPd+z2ENdIuSbFfwBUsl8CJKsQ52cclQ6xjO45TfI
	 EfYVpt9Wg5DfHQEhf5hcAbtTu30yPwpEmYO73eHNiN6guX4oO2aZu4CyEGooY/7SVb
	 YBBd6PC99nkfP1JHZOIsUw3wnvBLZeu9unQiWg1GONuDjsMEof+hdgC+JRdnFXqWWI
	 /736MBrGEzNVqYIqOJZAMX2r7yfeXNGwH2cM+K+0hWWAJLl68DRp8zXXvb9ZmT9KoZ
	 dh9j3OXa0pMVaL+bHIth8y9awT/mUzUpt2bg0PWc9d04prmDXXtOdZBUEJ8cZqjtSG
	 Llln7koPAiO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB4ACD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072767374.7953.6661139361679429195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6df2eed0b08e8733e4c040c15b8330f6edd881dbcf13d30bc4cfd2383c8a467
Date: Sat, 06 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780727673
