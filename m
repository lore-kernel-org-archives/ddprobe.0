Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451505680
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714902143; cv=none; b=Uar48KYSB0g7fNGvlE1LtfTQxTJJG8tydex1TDaWRnGIUQemuvVL6BzChXsalmsmWhzkwlWMwFtjw8RIONJiJNQgK4X0ykL5k6TVhQMug3oYh8qR1kLg8WMFQBSwd/8kgM0Y1YZ3WPmFvUZVfBnPYxONBiQpeeXoX20+8L0LvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714902143; c=relaxed/simple;
	bh=qDTR7f9IG8aKIEjv4KJod5uQAhcngeV4QoeVGzlj7Qs=;
	h=To:Subject:From:Message-Id:Date; b=Vs9wL6iQ7kLeb+XImKf/S+h06k1uFjf3gHYpb/U+xtu3T2FY5hZSLzx9dagcG6VZYAh43/Jt0K6aNLkvyO216TrdF9KF9Kc7eSS9ncJavo+8Ec0+qxvm4ZoN+faKl8fabETn7CzHnO4PJ9EsnxjFAD4aciogtHIShW6FbWoPYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0nJP/08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0nJP/08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE19C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714902142;
	bh=qDTR7f9IG8aKIEjv4KJod5uQAhcngeV4QoeVGzlj7Qs=;
	h=To:Subject:From:Date:From;
	b=l0nJP/08TW7WZK5G4RF9PJwSdXk1j1JP3HhPK8hLbIHzC7aIdGntcy61H72jY+s49
	 882L0BS4H5nZJlO+p64o9jzbO1mWmfjeIcUIJtjZRRdSJF8aGnq+KZiN2LwBRdbTTi
	 p6ULTGYytPSM1Y4tL7H41esF5vhYpyPngi0nuNZj04BVaudIA4Qu934gY9kLKMl1e5
	 mLSfY1jfDctj2C6SpSJGWhNPW77yYxAxLwxIPligJLFZR1JuDKZ9fAqAj3qPJL3zgR
	 YVW5e+C02DTzqg7oUCBe6F/sO54tnHA7Z+Esv4PmReRr/GOsMTc7imv4XttiMn7NbR
	 /QPOBp1tBlvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB826C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490214278.21569.15513475687344782482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03affef5182e552837c0748ebe34fe6707e14bb5375caa16d56641920dfe0274
Date: Sun, 05 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714902142
