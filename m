Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07E621D3D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763083194; cv=none; b=kaqTnjEmOpW/bnB6j7cz6co2g+CuSg9vnANTE6uvImJ0y5I3PwPw5Wkw48VbgjgWwYbTRQN0+pAq3GWyLrXaCdd+RJAHCk6h+d/PBFxUWlpKE2/73yt9NJH2CAMD8W7X9R1e38wOgdWFBV3k1nUlE78DDTlNQR2OsNEwHgDBaX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763083194; c=relaxed/simple;
	bh=SlFs0PGJt9ze0h5Zq5ZlL1UXZJ0sZVfGZnz3p8C2KZ0=;
	h=To:Subject:From:Message-Id:Date; b=PyqHqPw3Z2LiZSBkcVY4CuhlMyf1qEJwhyAliUmLg9g3xlS4Gkg6y9ZHIU0tWDQjVNnul50ER0fnk+3cSNh92QIhi/apxXXK9+kx9T8HOqUF2WaCaPvKm9rD56ZiMgbo5r3+/8jHJEKK2R99Fd0fITqFFWpUfiFek8lcDYbJDCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9YJi5Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9YJi5Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B8DC116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763083193;
	bh=SlFs0PGJt9ze0h5Zq5ZlL1UXZJ0sZVfGZnz3p8C2KZ0=;
	h=To:Subject:From:Date:From;
	b=U9YJi5CrRgo/RB/gsV7laNwF/HIum34xDNWPrS8j7c0mQ7z2ZID1ojpi8bihxDxxg
	 T49zSjiLSt2CetLD2c5B5QTEm13A5SWFBqN6InYVelyRqE+GFARf+87Rf5GubCjh9E
	 xJjrv7KofMAoT2Cu7BrPvnNK278ciAcWQ9rq7ZdDjz0Pqn96JOF/qKhPFBWOeldsFi
	 rde+x5YAeb2o317YQ9USLKOBgaXZvNOrzhUAqKNf4pTCH//68ODZT2yKSLFN7u2v1s
	 p2mmzMc17E2vo93dZZ59N4+jrkzMU4Lj1rppluknyT/xpwHQoFv6XEPqx7sAzv+jsW
	 Pwfmk4TQ76SEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AFCCD98D1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308319362.557.17557880888508318845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009fd4e971f3050356891f94cd2744fd38bb577a3705cfd8166cdb78d3b538dc
Date: Fri, 14 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763083193
