Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B65610B
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747563595; cv=none; b=kJDjR2ajh9e1JSpjOKtPRBd+NvqvcHHC8+77QkX/t3tGA9HAMlk74La4kt1U4L8drD8yZ3Ix5qToCQwxpsv/FzZ97PK9Zr8Ek9cyS90G7CB28kLA4krYG2TZxs3bOm9JBKup4jiEEFsWwSqCnN525ks5nymimWsuojUJDbTeWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747563595; c=relaxed/simple;
	bh=Y1aqaIQ6j8tqb40JeAJXasVXTqfK1iuNbv/2xEkThnQ=;
	h=To:Subject:From:Message-Id:Date; b=gN17YjEu8QQ+ZE1EtJau0ImUo2uuwewQjF0jANB4q9IsGllOB+Rg291ozmyHlEKIW6Y6cr4Y7lvmed/ZwmXPRGkD/iMuqC47QDsewK+wNICr89MwYmhFxv3mhbpq3kvYBa3zHkK0O+s0I4r8rKUSDV6F1gKhjyyCW/HxfxdZwzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqG8/IBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqG8/IBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994E0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747563593;
	bh=Y1aqaIQ6j8tqb40JeAJXasVXTqfK1iuNbv/2xEkThnQ=;
	h=To:Subject:From:Date:From;
	b=tqG8/IBBWd6DQsPhQjDHPUJylXLnFQ4isKDGHgkX9rsVDCt2wTGUsK8d5REFz0kl3
	 gH3frpEXaT38cJeOFzinbyWzxpr1aMgKq951sZWIeUstSXf4NoBdDeibxO6lzQ5gvY
	 dixPkkQoLrvNNSvTg1ys3XtoLqV3H/UomYVJpV7EfB+ujYqpFqL23QOyfpSvBXnkGP
	 2VHpyLAruLLrRGfgtYSvBLqz51R1l3+Bj1DG5LDhuBd/PiqzsF02GxMz+bjEP0BmUH
	 mdv80U1/vUg5dX7egkDEOALIIvQxPMQaiAavVUtR4lYsbnFeIiIyBZx6s2YUPAv65n
	 QnhQf/kX2232w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE82C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756359357.12962.15131973417555534265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e903aa7cac114eec70fa4fe34ae8227dbda464c78c6757d79192d6e485c75ce
Date: Sun, 18 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747563593
