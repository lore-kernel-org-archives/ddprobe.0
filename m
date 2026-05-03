Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17C3B893B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777813054; cv=none; b=iVEbFest/jasrzMdVp8m5x9eE3HxQX94eY1Zl71ylWM7suDetIGqfbUOBx4hK9XK22g+9o0vZsVyEOqHJWZAP/F5vxD/cGDc684fsCWh1EntaYmO4ImdpAeWEoM0eGUeWfSHT6zlZa0WY8jwM/2HFV1CMf5Tt1qnUzXWsbMu6Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777813054; c=relaxed/simple;
	bh=YFW0VTjb4SGiYkirLgJaURQQbvLCPA9bQ0e1dEZp6xo=;
	h=To:Subject:From:Message-Id:Date; b=lsm03Xxmz3MLlqRD9GbIhYnDJG1XxolU8Jw+1uhl7FOxLiy8OIr37tgymGlGqftF8bqb/RIccKrrXMs/OzRFmqcyQwQuLOvAm4CB0Jk2qr+DmqtoAQGPPpCxALtDt4pUqYd84jOrBFkWY9mzOcNn+QWHhzKsgOUbrZZaQrJw3jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cV6mrcCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cV6mrcCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F22C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777813053;
	bh=YFW0VTjb4SGiYkirLgJaURQQbvLCPA9bQ0e1dEZp6xo=;
	h=To:Subject:From:Date:From;
	b=cV6mrcCeoPZwwk6PNctkMz7t7X4uUdk8MAknBofk3tJpNmI/N9FNrqjQVM79bV38q
	 HvYKGGVYeljkZIuSlEH3/sPB2R9q8JkuS8KeYtZLjpt0HDJXqPRX0M4JHXUgvyDh1k
	 1BNqdC+YoQQotnhCzven+GDFd96RdOE31yx9YqhgQ3PKu7aEgds6YkcL17GSEmFmaC
	 ERxP5YR6i/NmMWAJO5GVjBadJcWI/y7IW5BUUkBfIFCXHDYoF9NHbvzRG1NxotbvSh
	 hPlKAMDNLRICxvHnnpbUg0BePAxiEpMfLQfuFu6jVrNyh8ZQ8fbtyJUXRWqNicZbnX
	 75vPqFTlcu2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE33CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781305368.12692.1094690563277235520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28eb825a54e276b2ceb678c877a0813448accb98d0747eadf7be8df23e2c29a
Date: Sun, 03 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777813053
