Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DE35280
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750826995; cv=none; b=UZqwPJICMfc3NUypM0H0buJsghE5Ln1r96cqxSXM9VX/GnPv8iEe4C4Jp5fAwH95Vu7DRE2QORfe8ea674Ln5Vjr4SU7z9egX7oy+iWxMlIeUVKFvroLAnRz5kLNVGZYOEqM1Dzxt2DXdOutwSMiAKaCVg3Tpqz1MyWu5wHRSIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750826995; c=relaxed/simple;
	bh=htbYg0KPMTJh9ngb2i5x5/bc0oHpEOoyM6ILsfFJe9w=;
	h=To:Subject:From:Message-Id:Date; b=rE+K1waCyMmX5pt0S3IlkliNeGKiENTs5ARmKSyA5yp9aQU2ye+ruOOJyv+i58engnT5PVEnZ2iBV4l9QZZfsHFgY2wyguHIYi4pIaDdtqBx8Bd3xXaz10fL9S1JU8ec3T57a2mcbEyFBv2Q3hW/1uNKwDMh90WN5cBuwHgoQjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zyyprrnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyyprrnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2699C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750826993;
	bh=htbYg0KPMTJh9ngb2i5x5/bc0oHpEOoyM6ILsfFJe9w=;
	h=To:Subject:From:Date:From;
	b=Zyyprrnl/CFaKcwDa7tmrrVjyX3ggmwMEwJZpPWJ68SREof/a+1TljcYaEqT6uUkn
	 wd8gN5VpdgVwew13Lx6dyKRlaIyv1Ir5rG20spclJ5jeXsimjUokWu1a9BPyT9e04A
	 b6OZRy+kLZsmqqh8tQUKn3D7YdbPEpGRjbYXf1Xi13QWH3vSWvh0yhANndphL8nSxp
	 LSjW4gQAuCaHGODTRodGc1V2vqpjbuOyFdGMqOR5HYb+WRMn8iZORzskVyNyB/0aIg
	 wzNDRbCkDdBxh9VrBFUm9wk1qK/1cYOhfSYVZnRQC5EO0ReUHrKk5TcU7xoQH7uGHh
	 mNxtNQn81gaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C6C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082699357.16481.13714237256362049948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2c1b4fde081b1c9040c4e0f384b0045fd4d2c5d1d27589efb590e7b81eed08
Date: Wed, 25 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750826993
