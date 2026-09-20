Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D3D3612DB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789916434; cv=none; b=MaUvbZt8dy3+pK5CvitFG47AW9Zd5MPAdTWwGUqgD0GP7wLeQMXg9d+FAuUbMv6G8cn0C0mSV6tXN0NzgIxXSJSwXL0p4nwrZjBRxIkdAWFHsTpJ2qKYfdldYsKR+a6d+nTjqE9luYIHnyaRwClVgEQgPJDQc+klQcto06NHcgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789916434; c=relaxed/simple;
	bh=Pv2suTOPvDihjF464Y97j03ThnNejpnAPk7Aes0179w=;
	h=To:Subject:From:Message-Id:Date; b=PeRKJS+0+6dj3BX+tiFx59HKKr2CmqgsAwPgt0Axk/qVsG/zgx8vJkuH45ikP1K9mUcYVSlxDvo768OHaFcSaptq5icIffkIJtIc9N8+TsndsfjgTDzHLhL2cI0v/UpR1vGcYn0fxvdKRZRi6nIgvhXrF6Jv/8hCZQkfXSKmXsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUz6HfqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUz6HfqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1673C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789916433;
	bh=Pv2suTOPvDihjF464Y97j03ThnNejpnAPk7Aes0179w=;
	h=To:Subject:From:Date:From;
	b=KUz6HfqUIpGN1HaakiyQGxZK/tgah3Th0NEtvH9PKhdKGlYLcs79hvNKu3lNQ3GNO
	 ukLgRnEI047NLb7XlKSPpCMkPWZ7Kw5YJohxqmUZiUeXknp/JnXO+wE5tpOxpiKnmA
	 RE08akJm5ElMPflR4zmDdeH0RKrMMU1p3CYaCTRhQdt/SKZtGsgDhlg3+qhHpdxUkp
	 q8wgMYn0zC60vm7PvaAGzEeBBSvLw8nHz2ApBe54cqCUhPd0hrGvkQ+dHPcD7ean7H
	 C+GTEePTfNcgsF/opgqniZkmjW3N4s3/WJ5EM+7F0m7cW5uIC2hBF+yg1vCpiNSNGX
	 mqESP0lGH4FGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B1C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991643368.14931.14238393379589277636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e355741d2194826aa42e98642c48bae4971b7004a399e9db457230bcd2e57f7d
Date: Sun, 20 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789916433
