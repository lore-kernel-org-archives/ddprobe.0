Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5228E175A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787979034; cv=none; b=I2NTG3MeK3Wr3PDu2ur1upXLXnmvryYr49pnZuStgQCETJilgzxjwCKLJest8YNmFSGzeiwFVRLD5hZIEiK3Rpl59UyCQ3JhHvH9No0P23I7DhKsXt0Nqzpv3sZqcALKgCPLEMMADG8j1r/bi6KOrKGP8VrmE+1F0i3VtHos6AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787979034; c=relaxed/simple;
	bh=sTJnYYqDIb0FclVVhoVxGwBPG31OTpiWvBc9iRpFC/4=;
	h=To:Subject:From:Message-Id:Date; b=ML4Zak10c2pGxQwdMRc0psrB889bBSTnPGCuuABmMSF3S9GueafdMFPhFl40IVlcAFzlaZrCou5fthuEXljIZBrOBnQlkTSAEqrZtXh/vw3qE1cKIXy4VlYQBcdm4F+vMvJacxf5au9TN/Pd8mCYoeJmtZW/Yr9LUzOZ00zGEF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXPkiq0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXPkiq0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ACAC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787979033;
	bh=sTJnYYqDIb0FclVVhoVxGwBPG31OTpiWvBc9iRpFC/4=;
	h=To:Subject:From:Date:From;
	b=EXPkiq0wZk4JgWb8hue/NBZ1+duZVeiqzZy4bYYHB3/B6iNjx+WY2AlU5s/lW8IF8
	 KeFC6gafvMlO56peBHLerXq8a8uxob7t8HxZr0/5md1rOj/urmpgKStP4hD+bs8B9V
	 jsDMnnPYne7UjbCeVJw6NUE1QxQaOOHTLppvjgRtSKQ75WwOU9TEF9QtSgH939tHG1
	 QmB55JKlxNDnL5KQ3WLdfwLgAMMIUky8Sz7TXGOgDuPtz7gY/xiMGIt1noORGz5GzX
	 q+g2wQpRKnadxHgyOU3ngTTIhssm2LBz3S9H+9fG067slnqsEU66jAvxW1VEK8dqTn
	 r6UQ2+Y+yVJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B9C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797903368.7184.16149581223740522201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f73d0cf83fe80ef5bd80590a6a46401d9c60755619b4a16c295fd71eef3469c
Date: Sat, 29 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787979033
