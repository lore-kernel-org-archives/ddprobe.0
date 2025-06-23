Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB647482
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750713593; cv=none; b=H0kt1I2dKbEunqQaxo01HQIOWQUqDDW3XzldzpyaZADPUBee6JE7Wz7mBXOP2QhRAjeRlJzJhKJfnPYGQl5JXCOjd5QSBZnTZxiFw4Qw61qgjRkw7fIDlrQDY3lCUi6/6jtwYddlFhD3YtRiS+QhvwEFs125tbssJE+atm2fx6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750713593; c=relaxed/simple;
	bh=jxGE/qvq/Jn5u8V595dYO0Bc+M6/+eqvF+JsQAcnrH4=;
	h=To:Subject:From:Message-Id:Date; b=NDBBGm2uI+PXhQNK1Z108/hCY9KVY8BR57VOcYjCMf4pvLimXt+mP/hrhWM25/GrwWjy+CODenf5A9LHelEodeOWCbnPpa+LbD2kuUqqUlVmNJ1dLYvXUHzVCGDH4aRgYqC8rxb6s8G+n/H3eZZYgxgLpSMH657SR7C0di+FNA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pozUAOZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pozUAOZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB9CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750713593;
	bh=jxGE/qvq/Jn5u8V595dYO0Bc+M6/+eqvF+JsQAcnrH4=;
	h=To:Subject:From:Date:From;
	b=pozUAOZllX9ISofI7sKkHbyt/7ZncfYQjZqTWXQFtXoVEVOjjK4t4xcGkf6cO4VOi
	 x6Bwp3mnNXX8JMvhz2moYu1YIPZojVy3ppZZdHLBxDJ2ATwKwd9GhZjmluqe7S/a8W
	 hXMI18tvg06irJWgBqYyH2OahnwG6x8dpWvc9oi0tZ55PloGWT0nvXAGlupX76XXcj
	 W3n60/Yln2/jWcZVkjkD5a9kiPHbOJfxAbfdNQRes24N5rh9SPejzenra1xprZy/cX
	 Pl1u1kggP9u1c3OXOJ8uUbYF+DmclOCYMq63gtjBA0RDqJHuWqtbWzkO8KXxvkvIVE
	 ukhjE6xd13XAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F4C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071359357.5249.13451909106530004458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e254b3b596c35c68676535134da1ae45266c1ea008435fad6d2fc7db9cd231
Date: Mon, 23 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750713593
