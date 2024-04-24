Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553B71F5E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713931223; cv=none; b=Ssf4lafXbSzi5//3EAg24PVnVByDXALbXfGYpR/W4Sd6412vxZ2wrfJNIUS8sKKUmYu5/Bhay1uFBvx9b4rblRftdF75M7TCEDnC8GeSf+D9lCYgq/PjIIPZAAN4It7MtTsxRvP2onCnq8bU8BeIf+niz8fP/uFVL7w/N06CM+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713931223; c=relaxed/simple;
	bh=KVWsxSq8uQuoV0AwAloIBHFvmwIQdxuwVHlS7Kl12tU=;
	h=To:Subject:From:Message-Id:Date; b=o8sy8llkzjiAbMUfO8HOGIyzGgZbtrsvN+WG1+/VQavSaA0CHBcOW+gp0o9bdrEwbzHWUzUypudYfyzejiBi6r62sYGyWp+xG/P/9uAeYpiJ+13c93muAfsDqVPoYnVtotVwm3TEgGXeahr1GT1Fi1aBXFH0BwJg9NMzq1DQMJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq/VptZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq/VptZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC18C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713931222;
	bh=KVWsxSq8uQuoV0AwAloIBHFvmwIQdxuwVHlS7Kl12tU=;
	h=To:Subject:From:Date:From;
	b=bq/VptZG6W3H3suFwy9bbSIXrEopArFMCcdT8TcAeYO+JCUIIxHNjucBWSZI6WSbu
	 35GahQHSuD0LGEIAI25MvyQ39HyQODkimtv+Z78NXmPG8Bv8kkKsuR74M/ZOqSQzEH
	 gfkaimpfmDKXhHLrIXL7x3tZC3Nj13CxvaE0G4WJCEnF0SPOynIlBFwJRtASxfXgZt
	 ydzL/Nw0iNQKSWOXwjkT1UJeviwoGVmlQvKWaPGmj769ZQddh8hoslNW+0MQeEVBht
	 okt7pDt/ZxkKEd7yFXupMOrdS+KUYaojs6ZqE57v54kaHcMXQ+oJ2hEYw/ik2xkxAy
	 xZS+D1dfbLNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9698C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393122281.31656.8628097671236119805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6545c7043116832aa6abfb2f525038ded70924b37e991ae355156d8ef4e853
Date: Wed, 24 Apr 2024 04:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713931222
