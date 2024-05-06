Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5992F15AD90
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715037143; cv=none; b=blfSt6X2/3fzIsMIKzsQxbwt0nN8H31YKHybn8H7jJE9fBqN96fDoPJ7GFbMkH7rdE4rIZbrJwVAJdi8wp07sJdhs0SzXoGrvEo0POhoJHpNLQ50GLToXFe7v6cJi3vkkCZgfAlUYfd2mczw4kWc1s/OSkFrcIkgfAKzR6277SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715037143; c=relaxed/simple;
	bh=DB+ENqyGU44Mr0R5T5JWrrl2zsZu1q7GcuJslMM/R4M=;
	h=To:Subject:From:Message-Id:Date; b=LW8B4vVS1UeZgtdqOtM0zDV3Q0kNx9BCM59EoqCA94ZWieOx0A9C0W+qOtHiqZiT99iDGzpJUjyh0Cbco7HCMCc+y7Bi0FwY7VpN34bh9Fi8eDePpStbl8T91bd194sZVhzelbN3nd0mU/6rg1xLBJjjYBzapyE7tfDKyiM3Fy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIfxWozo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIfxWozo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AB1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715037142;
	bh=DB+ENqyGU44Mr0R5T5JWrrl2zsZu1q7GcuJslMM/R4M=;
	h=To:Subject:From:Date:From;
	b=CIfxWozoON80wYiatjLCkntm3JIZJYpAOmg+33C/TSS5yeOq9WGVQmXKnyoO35H8O
	 00eZE3GhzFGJ9NFRXJ5/MDTofJB/5WfxReb+KsS7rbS8D+A6+N0cKF/lX+TlYtuOWi
	 Gdn6bWWFRKKe/E6gSa8FzsSn86dopfXoIIS/JyIu3a6iUlzi/zyVgfQoX+Uq0SU0gx
	 DGzCdJWG6Hl2pM3X0UDRtFKfnw1408MDSfyfHfCFuffZmYpND+EPwzX0lnB5+WZydY
	 mCqgR1TcusOyRfH6PPo9hJhsL85etJgbJm4/kNss2ZdqhbDuEO/QN9pP0iDd6vZ4eH
	 ORvsJu0i8oWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF1BC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503714275.16478.12011248131273326129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6024814da14519e091c7b496b8973d152469112a02816dec130d99cfcddd866e
Date: Mon, 06 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715037142
