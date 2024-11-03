Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420907494
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730598354; cv=none; b=BEKp60KOHgK91mYta+3hf4GWfwwianRvcpqbAkgINx2tsionVsF7X8ScBcURdnqVFTVMkaky75H4fk9IZq8MeEMe2+RmPix2wgjLb3Si2a8JKM7kJkztAI6wVzuN93Fvr0oDEhviedgDeyy8c0mOsLs8IBUp/3NOLyGhV5N7RIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730598354; c=relaxed/simple;
	bh=TCGEVyDcIMZg2zIwu3vXDCc4moAMxvRUeq+wGHy4Ers=;
	h=To:Subject:From:Message-Id:Date; b=h2xN8FCs+LU5lpbOO/8Jbv6kW4azvmheA26opQD661ud3HeVmXbHv0zZHettuN/mFjlkz658xGv65SoWgJjmD484skV4vZw8LB2z5yM545BpadxNmMAdCFsuq4at3u9CxVCcwMNl58lkxsb7rKmLAr3QAQMsaN1/KDch36iMj3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiGhRvP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiGhRvP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD956C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730598353;
	bh=TCGEVyDcIMZg2zIwu3vXDCc4moAMxvRUeq+wGHy4Ers=;
	h=To:Subject:From:Date:From;
	b=PiGhRvP0iiZcLVSxMz6rRXklnrVVzH2nyHtSwyUmBvDidI1Wy+BwRnk17Zb/lTHFK
	 9/JwoOwur/wfa7NW7tA9SGfKNfiU5o5/bG63CYixep7WUcwGLMa9lrwd4SwVJsZvjx
	 HVITbZ3qkjoVSXNjxBNb1Ui6w1/aZt2RfblboifbMAtHGsc3jIWLBZgcgYkUI08XcN
	 RWd2YQbiSlLtqAdQubXgur0J+XDlHCK1RHvD5CNwFTPPYKDFhunXJut9HKc+Xyph1J
	 TnEazBr8NwRS2FuCAZyRMHYy2uNt4U5SsLHwye3KyZ8BquqooRm+Y3uPnnWqj6Cd3i
	 iUWKURKxy30hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1A9E67816
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059835360.14472.6173681104202512090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66449ee417a169afd56cc6b290c27563b0bce6d3a93c360d0a10e5aa71e1cde0
Date: Sun, 03 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730598353
