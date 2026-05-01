Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA343FF8A6
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777653455; cv=none; b=oUku7KKd3MzS0PUjXvasrMQklnHRWWzFj0s1zGsc+jLE9BROl3MfDRqGOPFiT8wJq7Wg4cE6c8tYb4CeSwWkEiKYQdYmCafSLuZPhDgh3tNN2Nn04QEebDU98Q5t8L1Nz0zvgUogNWJety/orivvJxSkTe8/+3iR/B3wU8krl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777653455; c=relaxed/simple;
	bh=aGAj8EqjPGaWf6N6HgEdrwe15xT2mq9Pcixy4b7pDBo=;
	h=To:Subject:From:Message-Id:Date; b=tzoxf+XJaQv6x7e9JTA2yJ+4EiSxmaggK05O67NnSQwwmXTeL4DGdTQQ0ZBFSpHbtwPGF4CionEx0tmKUrPLf4b9QmnlIt9HnC7kQO3bPDIbJepyuoz0bAWiGoBfgqErYTRps9ZG4kqixk9CqPwUb5er3reIlGrb4UkGejli5w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLHIbjCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLHIbjCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD8EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777653453;
	bh=aGAj8EqjPGaWf6N6HgEdrwe15xT2mq9Pcixy4b7pDBo=;
	h=To:Subject:From:Date:From;
	b=qLHIbjCLB7ochTa6IZxbsh2uEqg4lnkKuOJ2aklJ+470Q7mrjKvD9JL4rYhffQl3r
	 NHn+HWjRYtPWLm/UhcHm934hiYVBZeZRW/iKDjX3NQ4HFEc7DeLEq5YJBsmq+Mq5Ke
	 PbbkhP68FKmHgnnvKI0bJEBNP83ERlgGPfm7AAR9Q4UKEHD2MCVXAHGR8XJMEeQhDh
	 3r2U9BJDO2Uxvnv1gXS/xBDTp6zAe88qSdcVZncXJdS0EEq2LZP+ZX3mWGTcZRaR/Y
	 sW29LhuebrJyi4sK4hgvexqgD1vy0QiZiWlOWXIAceL3LmOstKeETcsaXB1hgvwxxB
	 HrotLANEULkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB53CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765345368.19019.13942107374522299708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a7264e1f40fbae7ce5f19408ba61e2c131db86e9ff58bfaaf355db00438f01
Date: Fri, 01 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777653453
