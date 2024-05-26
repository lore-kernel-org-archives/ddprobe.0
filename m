Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74267D266
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716732263; cv=none; b=NSUhbK21mmt8C4lpyOpVK4rfmC4KP9boSb1T5dK/zYTZsL7qEEP83p5+HKf03hBJAGymnIv8+fv+HNTmdCqHur3qAJSWuD5Q1WupeE8Q46YUQYmeOHRsh5czeh8sP2zY7PJ2E6lmc1KCeL0X3UOCM5YF+HtYHMkG0rHZWeKGkkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716732263; c=relaxed/simple;
	bh=gLUREUz1jIp93IFwHk3eJiMhfoXpX4+74iN3FDyyJ/c=;
	h=To:Subject:From:Message-Id:Date; b=PD8ENv0tGdojwK2oKVQuS/ANzzhBjFTFiB9qCm6MuEfCRbgpkAhWuhK5UZ8ljcEunT24MhvrxsvhHquXyRFYCwdeZy7zlmlMGo6qkdo0eOVDzMYR5Mhw9y44/KnbA/LQNBMIvrNGo/5ZbZ7HjffcV7anD8zHlXZtaQJ/6kCYOMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkVe1FSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkVe1FSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD24C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716732262;
	bh=gLUREUz1jIp93IFwHk3eJiMhfoXpX4+74iN3FDyyJ/c=;
	h=To:Subject:From:Date:From;
	b=BkVe1FSiKp5Zuo9t5b+kUbBw3DlDavDx0Q7Y1MUSAMWQbjOkbl/vqCkL9f4Fm1gs5
	 WMYWuYLkyPcb++613/8+QxKJzl06OvD6voK0gxChfEkjgMovo+esTBKQePaP0VK34m
	 aC5zGmnshSN32Wv93XPdFE5/QZ1o6eMBBwNUAWB0ZEcw+sEdo1/irmTk3T4oUWZ3Iu
	 wkO+i/XYk5R15BgRj61jVV2IFhJu7Vl09GjinDIfZ+T8/tbzWjwJ3keopf0L1bRZoM
	 /z7u2MXKt9nyIQPrA1XRheUWRsn1TV/LXCuW11Kr/7enM44N5f4mNr5qPgKqzwHEG6
	 3UHkbWN7t1TEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C547CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673226280.7677.12952793996245237118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbd904f3f9850a022aaa5a1cc50e68f092062a2405fc52ad317e22c2a4c225c
Date: Sun, 26 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716732262
