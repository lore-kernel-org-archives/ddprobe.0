Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261224AA402
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789559435; cv=none; b=Qc9z8bWIu/TG4fIAMrZjNbvqBn8oZWsr8npR9hxb2EsKXW3FhbwqItaP9VAMb1+3+8gOCpT2nO+b2kktr54eqsct74X13+4vzla8svLrKdtK9+HCAZRhA+cbNaYLl6sU8S9Cu/sisQxvDmu6JB5zQuEawZjaUFPfPJdZmmgfDCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789559435; c=relaxed/simple;
	bh=YwRYjO4pjwvlpZOHqlUo5T4uROFphqqzzWi78kndV68=;
	h=To:Subject:From:Message-Id:Date; b=JL//Esw5k7Wui8F/FGk/5GDGe8JKBimKNRVkI1SnACmNE+KsNTkid2xfVqo4j2PyO5h+/pWlV+3bB3o3arjZFcP3NGnBkCh3BYX2q7yzsJoIJkQjB+fqsnGAKZH8WoavmYzsa8/MhAVOUxM5GRZn8PDoljO7K/ADuVPjIxyMxkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrZvHmC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrZvHmC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD216C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789559433;
	bh=YwRYjO4pjwvlpZOHqlUo5T4uROFphqqzzWi78kndV68=;
	h=To:Subject:From:Date:From;
	b=IrZvHmC5hXnLX3Zx4BdoW8vmsCJpramIy9GrguK0sy15z0Ye15CowCkPIrOAASiwz
	 9jgAg2mROxolQwDnmrnM10zVvXxHkYKMGIRVUry/Xo68kcIO/mN8tf/dyYfeYPXkKg
	 dLlLSbNvpGW/7NQzGsiBlbz5JTpHcAllaoLp/3XZ+91JVh1Bacu8QUBHXKbnfgUi4f
	 COeUZmRx1MhT0XxUFb1hT3OqySjpHZROROqkKIM6Aprsbry/TqsHxjc0ll8QUtAqI0
	 UrYrdrNohnfx3dnsqMaH/M3CAbOa45t7NE19/CwUMi0JXltnMe8qbnR2rKF9XzLcFW
	 mt0XWw25rntUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F2C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955943368.31769.6787844808378987369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1341c9354b603e48419b27dc5effa7fa6904227b7e02debefd9ea78fd1da5d
Date: Wed, 16 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789559433
