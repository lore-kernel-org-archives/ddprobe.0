Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338BD81724
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777168654; cv=none; b=Ec12gqTZPwMCiBKbJDZdEtvLGMagaSmiqFKJ5ycrRQ9AD0NXkDJM01fTQzIu7zUTXzxgvN/o1fZ1BQEEJbdf12ECBuXYIa8y9nDWYMTDI1BuJmqbD0w0k9dN/hlKndnM9au/sdlKycjwRc/86thhgh+YAB8hCHRRpv4dC/djsJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777168654; c=relaxed/simple;
	bh=L1I1VvbkPOpHYLtdl4O/H5UHLGwqBy2QF2xULZMmWwk=;
	h=To:Subject:From:Message-Id:Date; b=oQ30+GH1PC5quwaaKheR8Zt1zif3/FDP3tI7gB1KXaE+lR6C7ZoGwWMp+hOtQ2zGX15Se1FsbIoBJfiSKOpVtc6mCflr8IpCGR7c5uR8YnS22sdwmobsDOE3SElFS0TtXy0DJzh0RmybFCE1w3hm0xXakxGtz4ShSeofFulVCOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiD5JlJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiD5JlJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C035FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777168653;
	bh=L1I1VvbkPOpHYLtdl4O/H5UHLGwqBy2QF2xULZMmWwk=;
	h=To:Subject:From:Date:From;
	b=MiD5JlJVFBnvpYJ/zr7FV9sU+/a93ozmEWkO7YoFw/bogseA4+FkRgmBHLZLFP3Wz
	 yKJjhz2wXw4H4E6+XgfUwqTsDzKmkDjqjPvWfNdWJMocoVAWymYSn4Y3YVBtSU0aYI
	 GOCDpMwGqyzEZrav78RvxINXasWrQwod0PxfU94gQMY+CiMiHq2/acU4r0ly7wMbNu
	 LTq/Iqf72Z59ile9pnwHO4IMRLlCeXC1Ouzox2vM3uxgNp0/hen1EvShh3ev9LV3CT
	 oHH6nCQ6SOtMU5YbfkQSJdU1V5LLIYT1nyb0SSXPlE1ulWZ12GTaxz6pYv2vvbq5u0
	 xw8fCn4SJKJAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09CCFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716865368.19309.14430623314849139466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bfa14189fb36f9f3c49f17d52cc6ccac39223039082817d2f3df9693da79f7
Date: Sun, 26 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777168653
