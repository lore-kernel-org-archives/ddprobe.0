Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311A72599
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724978754; cv=none; b=gOLFw9K36Robku5M4a5Z4bN2VyAev9JORRtaZVp+e9hdiE8o7SuL9yed38u6T3UWh2zVy3tCAypixExra61sRWcZV6k9TKFMpYvWce4v7QNWIhvb62TGZ5K7YU5SI9vQ9cm3p6QTUhoosx+1loX7K60w6kYkun/kBGqnpqsDgak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724978754; c=relaxed/simple;
	bh=MPDOj8DDexBCoIyFAtQCmIoHi4Fl4dbUrg6PwVWToRU=;
	h=To:Subject:From:Message-Id:Date; b=YBR0/2r/iNCGn1b56Qi9ybCGhI87p0kt7uEkVLRodN7/CuQdlYWZ2XS+sy4c2iFB0FNewB7fmUFfXdaA5S1h2mKXyRcWFc6IQ8m6rjFmnWhJLDApmygZCpisWkD+EkCVsZIMQHkc0jC8uugejmQVEQroarQrr4tz53EhGmdQGdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygmj+M02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygmj+M02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B089EC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724978753;
	bh=MPDOj8DDexBCoIyFAtQCmIoHi4Fl4dbUrg6PwVWToRU=;
	h=To:Subject:From:Date:From;
	b=Ygmj+M02UlYJ7qW5o2zO4p4anU0F5Gtvya1obTtK1kkryVEyNGdmXm3NZHi2GuLFc
	 tJtCIVlgJdQYq9QuFohys30OAUF8VJalLYMXnVR5UN5jmGQ9Ir9DcuPxhd9bLdc7T6
	 DVWSkD1K3LEN3oegQSEXCbjb74YapzRq3XAHU1I9BTmF6D9wS68kFaNB3UhsToqwL0
	 G1yc3mEJpYdRo9ExB4thls9bBF40Ipf6yb9rsq7JhBmIGarAt/gG/egIzY21q5Mra1
	 oAWUe8dFEpH1LkBcNLB2K5vzPzf9pkSQHaA1xxAiZYzOcF2FJmh42LvuS0r9eQUU+p
	 eLnbsR+GmcsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97979CA0ECA
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497875358.18115.15796167186540147225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee545a0fe0ba933b31e0fea5dca3d87f2060918184e1408950d90beffb46c2a
Date: Fri, 30 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724978753
