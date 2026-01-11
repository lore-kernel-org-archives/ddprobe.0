Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4061862
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768106634; cv=none; b=X4aAPjV6khoo83Bo7m4nf4kAG2L1G5Wv6nAEonstSyasWG6Bx71MzCB5mAZXEUukqht0+OMK9nHP30brKbPjAfiLa1Nuc9ZYF/Y1j+fiRF5mM/bZ0mC+DwJof0GzwWYlBEVmTx4PmQ8BjkmcVaZE9t9oFTB5SGWYk6Q1+69QmM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768106634; c=relaxed/simple;
	bh=aIMVSHq/hwdYy1hOI6b+mwD9kdUqCICUfmMxBxw9foo=;
	h=To:Subject:From:Message-Id:Date; b=UmRloeiRfOXt2YTn2FOpAzUW6moCKrcYVxfcgquZFasXWqYHFOItL+e0wZLc2f4RZ7+8kyWeE7UqwBDn5xuVekFYqShh+JVZyIVq6PODJloE86HQC6Rw/gYAsfOuUf4lrl2yMzuW7P5+g5i5b9bQUn3r7TzXYVKk/HNs2xWm8zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsPYwJPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsPYwJPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A611AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768106633;
	bh=aIMVSHq/hwdYy1hOI6b+mwD9kdUqCICUfmMxBxw9foo=;
	h=To:Subject:From:Date:From;
	b=CsPYwJPe/c3nzGZK6zL4bKVOOgP2WiPyZCqxgVJvd5IgUZHlwiFgjlNf/LT46B3hU
	 O/tABGucwJZY8Q4IO7nGM9k+UwmAl6x8t5L3MQXJrC6ZidaedGqTqV5Tvxo3hUkLzS
	 fnhcyBapNhtoyd5u+/NiLULs5+DFrV7Iw+5oIZAYL8ZaEI4eQOs4ceM1fVR7FuwRIU
	 TWOelNG99oehChDIBecRge3+evYGumpVtOGYVwDnZvzL/VbU3dWxh1RXyuAhc5cAdR
	 y7U5CtENjCYcXHCIn+TFxD82RQlCp+F2/sZVgehc/aZ6PsVhGDKxLOK6OoURMkvm+H
	 XZqB42YDItVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94731D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810663357.11613.11453678506910961404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea4bc923aef79157fd1a665b61241b1ecb2735697ba3ab4d9c124a66ce7445d
Date: Sun, 11 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768106633
