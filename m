Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4144431618B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787489434; cv=none; b=K7uoq3BPojehDs4Rk6m46tC7LnGu7rM3dqhAcXHzjS5IWvKvPxVyOBAO4ltyyjRqatSEfSOIM/dwpoPAE0aQo0OKt0c8RujaBTO4BjP1q/xVUTpoH1LdVFYbQjRkqoYuSvLxWY49Etyxw0JvD+MmJtWy8ilWMTiHYiIDX+wC+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787489434; c=relaxed/simple;
	bh=fV4FYOxtOQh6bu8wNeY8kfIGBk8G6f2diIQBISWihCc=;
	h=To:Subject:From:Message-Id:Date; b=GUHgfz3QsRlYlqlrfCHi9e+Ujl7kN7vHrQfgXUYb+XJpfAFU8rC+gvs2KIMQuPjIY0mzf3PlDJ0Ui4J4ynuU8ufKYbjFRwUGoT4MPP5t5jcbH5YGsV223k3ohQrD7PskzLQMQNIWvxCkOepWfJDw1Q46BVeFOh01KqapTNUVgqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzCWKp4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzCWKp4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97B0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787489433;
	bh=fV4FYOxtOQh6bu8wNeY8kfIGBk8G6f2diIQBISWihCc=;
	h=To:Subject:From:Date:From;
	b=hzCWKp4SoLrWxzs2pZiI0DzpDUAJmrzVDpm/hwM9Ry3g3Z5/ffPopadU/SWiad1Fa
	 VBr9eE+Vga7wVICABZsSUhsvrAQ2zbwpWBsbh5AOnPNLWo+o+HgRwDToBAJjQKL9Em
	 PlMviMK7q9dqmrPXUcxqi084FF3aRUdhEAQPtN//VDSM6LmU3V784CyaFgOPVneico
	 5moVpq5Ryei82/4GtQpw99v+QQvEzqDRGbvClgQw0K2mrNSiwPsW/W1sSw3l9LsKQ0
	 NwpcbYUks1hIkWkduR3cJ0oty0SzQrgF1uecW7O0LyVt56yl2Q5jBFi5+ga8wRiuHy
	 qGIpNsefZrBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD37CC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748943368.446.9170098706381630488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd450f539db6b768c85c79b00962b1ab538acd563d03dacee325d135b5d9a9c
Date: Sun, 23 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787489433
