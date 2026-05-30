Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C75513DDAE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780176274; cv=none; b=FbCyG3QX9eIpJ3uz/P9d8vLNE2xgyTsXjaVNIKAdOynX4FrEWQcWY8RVftUh1QocfEi43Zoel0FgbEw2D+nLSpQzUINdplhpRd5SDA8HmfwgQGru0/xdufaisPkR4I7xvtzjsACyejGTvMEuOmZHXNyTMPcLiRHKGDHshlzbAzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780176274; c=relaxed/simple;
	bh=3PB2vAe7+kE4Z5TFz958J3QI4hUg0zy/Mb+QJ5Bg4uQ=;
	h=To:Subject:From:Message-Id:Date; b=P8rFt2eQQGkWXLj9rRl5jEUShsETC1nn0jl2LsoH7d1C/zr6ssSeyr2AciNOugk5SYBI8RGJQLWQ7L88jGzPbFRgrbFeyHLynutF19lj+m077XKMnFSHYdh5bewEC2lVhzacCWEiOgkFSy7s8englyrRJbdlS5qtEwZU+gIAib4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo9gosJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo9gosJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD809C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780176273;
	bh=3PB2vAe7+kE4Z5TFz958J3QI4hUg0zy/Mb+QJ5Bg4uQ=;
	h=To:Subject:From:Date:From;
	b=Oo9gosJjaKgehz1ul58YHGnK+ACEZnOppny1V9qGUkQTNA4ayNBqxKJ91NVFkuLmA
	 fQ6C0IcHlQuUPx7Zp/1FXTvhaTPMnOh7D4JXG3bDY12Itqo++QCq7sXVS7DR2riio0
	 rddLl9WhgRCLioh0R2Z5Rk6jiCrUbj8YBfiiVFrISVJ/jB38Djo/qiBTZpf/f4axR5
	 myGmFDDPCG+VltMQ259Q/impq2BhtyNCEYc9wQN845ya1jm97pYjfjw+3YUNyumX5m
	 fi2ogvY9qvf4EXLSYcSmZZ/i26h9ekY/X7zKK2T+SGaTM6YCj9CCQWL+rZD48Ma4SN
	 Hvb3qGK5S2oZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB22CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017627368.21191.4846947043532439467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d822c7bdfa89edc26f73ac00537563ffef3f6aeefe12bc9766468042e64777c7
Date: Sat, 30 May 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780176273
