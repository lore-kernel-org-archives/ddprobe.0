Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABC71534E6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717262063; cv=none; b=UYGDtAB7ROPQSKBVY8Qfn4ZE+NZAggOLwNES0hwbJjG2kxb4Kha6cYhaxXEC7bVxC47d0bntqxVhl+cJZREndxfpNLnYg1us9CNpboo9ZG2I/QHLy6W5kKXnJ2tSSXbBKxOI19gAfLvAeCVblLnKRJgZ2mLDykNeHzaAjAT1t+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717262063; c=relaxed/simple;
	bh=vSwZNDeMqCh0BH0vDj2s+u2AHjE2VWGMyOcRil288eQ=;
	h=To:Subject:From:Message-Id:Date; b=nZyWeYCWmgDKi7AZdBlrwDgeJEdTJh62Lf/VM9kePN1ELVzYMuNEgNOh/dxVY5tO0THMZYaV0XXEAC9y0+Tcn1nGMaw/LwVG0V48b1JI2Z8HpCZtS3GAVynf0MM8sEciunHay6Z/VSnabmg0DnVZl86/EJoXmF7BTJyu3/JYqzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlLPVzLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlLPVzLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33D0C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717262062;
	bh=vSwZNDeMqCh0BH0vDj2s+u2AHjE2VWGMyOcRil288eQ=;
	h=To:Subject:From:Date:From;
	b=FlLPVzLZ47ZurbSrWWHTr8ix8suULN1cIIhpYpaAjnL1HxwTu0239J18wuxIAHJ5X
	 Mn9pssrxy664IEP9+9OYnAV1ZdBrAc+7SJbLUdX7ujY7DRooyv5TsG2PmM+pdw4o8l
	 MA1zaBWk9aEtEJ+gqmLUTwXCiFA9coRXAEwZ2g2zeAioia48zyoidN7WTZwMSRE7Ag
	 oKmHaHWFzKJhoI/4+88fpPi7DMtrec2IDOCgNjDavi94hHD4w2ZIuULnpbuI0I+2Fe
	 vr6Cfs6yVo6IFvbzag2/oy+8jhv27SSjc1k1ElQG8rKSFy0I0gdKF4v9TZgbKLl18X
	 jHLb5jqInWLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EE8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726206284.17770.17655671760407432908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f89f27813bf64d505795c8052f79e104285c966283af055bf672d48c9054be0
Date: Sat, 01 Jun 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717262062
