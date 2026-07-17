Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B4C339863
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784300314; cv=none; b=S+R5uzd0ulj4Mm2pRZxrJXCuJDcljMXlmCb6mnfv8zcKmolgohoCA4aE4r9W5L2gs6cqMrQFdCPgCiKwWvpxYgL3DRZfFRJguStfJPkXUHwvIuPK+a+7j0UljUnXUjOjjHfV8ul0uD3qXqKcz8pERZdKGUgFS99tkBC28iZZSFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784300314; c=relaxed/simple;
	bh=nXefTAQSqS5puRve3c4AOp1LHtiymNt/lh6zCnhLD64=;
	h=To:Subject:From:Message-Id:Date; b=O8Ms8ecmeQZwQxvC74AdyMf/JaFUZnU57Ftlmy/hErLp3ORXgXhgPRWo/O2GBrVahGu8jQfPSUSdFaqkEZRK0Q8J5+uly9jsqJf8iPJI4ED7u9E3Vlb7p718ugQs1wLFt6OpSka4fPgRhEmnRh1Euo3maDOqAUeR1z0JEp4Wg6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xp7PFH+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xp7PFH+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA38BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784300313;
	bh=nXefTAQSqS5puRve3c4AOp1LHtiymNt/lh6zCnhLD64=;
	h=To:Subject:From:Date:From;
	b=Xp7PFH+vxnAxDXMI2YL+We9BSdCu2U5MMmC72Dt04OlWHqVx66tOzibR1f84h6Rtd
	 BxqDUb4FUh2lAjXaq6kFfqoKgOaE42droCx3een/OMi6d+0LsHPj8K2B1OE+/THgys
	 8XbvlmxxON2Uadh16HXcoEjKDSojd/RdUGJcwfXY7ZYOCsyUD6SCkYyxxuo4frhQd8
	 LkoGgvUlHzIOVmNA9p1bd2LdOOj9Qi0iesjNz6rjHE7RpU8OSV0rcwxJTlFInGdRQi
	 sNlkSdjedQkRHG18NQ3r9lmTi0IwNNG+XOkTJTheOcX17abVe4VbuPHjw/YuEDd3vQ
	 zQPyJQbyR3Nog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9160C44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430031368.1345.2822915611041535718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22578a7ef17132c907b92cbcdfc7a4dbc2c5a007a3db6fa00636e5dd8629688
Date: Fri, 17 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784300313
