Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A03B1CFBA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188034; cv=none; b=JN3bZA0aryQvWObGprCZy+6I6PnUKM8Wd9nsJ8D9vxV5AznJQZEek5djYuTAzOMcdtMrBK76TyqMWJOce6Pi2tZ7f96bHJMuV+WvMJNrd0VD5WX2Y8xkp34lpZ9r0X1vkv+4Q3p9r5MwhyvbxWlcLZfNofENnS+OeZPUZ7oddE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188034; c=relaxed/simple;
	bh=a+hveIEohx0pwH2Fa/UXTN36iQ6yyFQg6XbLz+NzZ+o=;
	h=To:Subject:From:Message-Id:Date; b=ibKIOUMFWWyuVwkH4YOmEQFWZj5Dm+mlAnUEDvmw4+2sSpsvP2I7t7fEE0YYtRad0UG0GVFXt5463pfFKGrN6lttIsNrcFJYFGkKm3oFfqizJjRBRz9RS6CRzMeJFVrS3JJkWITAY+gja6TwZEzqpPmGY24ZTcixvGkwXhHS1q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iG3eVy0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iG3eVy0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BDC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188033;
	bh=a+hveIEohx0pwH2Fa/UXTN36iQ6yyFQg6XbLz+NzZ+o=;
	h=To:Subject:From:Date:From;
	b=iG3eVy0ITW9wGh7bsGIeeUlKyisVhzyg0IergwBAvaQthhiK+LpMk9zXWEnuinsSo
	 wQkFWmFX4C6d1yoFA6DhLxcPs4KiGWl/86Of8iKgobCUq5jv8Px7zMAGQBCUhDe2Db
	 dIHxkfQnTY12zIM9zS5Nd1Y8c4NcQYirKzQvvCF4iWcBtFIeCcTyQaSPacd/XM67Bj
	 2OEYDNlyAJu1Y6h11jda7fGLUTqtU5VKM9hYECUj9pFviaS5xCr4M3yCL2T2vlReTV
	 5WSfj+gDb1M/Zy17XBvh08ciu6eHFoXf2XgAjFTyXJVePusAEcNp81B1kQxCvN+krZ
	 yTPsMTu9xSUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E94EE6432
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718803357.22639.16228837026616509078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7deffb631f986cb47a7c41a752c31eaaa5cea357dc6d141b1c7c4e4c25d9d69
Date: Wed, 31 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767188033
