Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D863932D0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783714114; cv=none; b=j4RNBJXLV11yyZnk06YNkUv+mDl0obgwUXlLxMHHxlwuxe2rgr3Xb5lE2GuTMBjeM1Lqhn0G9RvBsXnebryUMfeK/rDkKB5/JWB2zlh8xDiqJhJtHtsMyGRpKec5VQJ3ew38ad2Xvku1r+GN/EBiCHyMq7Qc/MjHQ/xsHoKEPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783714114; c=relaxed/simple;
	bh=YOqjrN4nr2JtRwt8YSYHC1JlELM4eGiyPR9RiyJ0Q3s=;
	h=To:Subject:From:Message-Id:Date; b=Tv77Eyt3gb9PTVJM9uPCoFPWlTcMi2olAl7oqHBcvSSyluBFKc/QX0BXoOKIper0DPdELUMh1eWlZ6uCiiFvyAp5x7n3SXEKBBsiYNaxKXzJU9usjzwDzafeS2KU6wgcsQdAizX1fsNVaMvtHBwC6kho6ECLj70wXBsveVh0u18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thTNZz9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thTNZz9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE99C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783714113;
	bh=YOqjrN4nr2JtRwt8YSYHC1JlELM4eGiyPR9RiyJ0Q3s=;
	h=To:Subject:From:Date:From;
	b=thTNZz9ENX+Rh+hIIXkWJ159o7iQAcMLMlqhWCIhQMcOlaxgPoYCIu/4K59oii0yz
	 yEqbH3AYFzTazMhWFKK31jLBT8pAS4T6tDi2/MpBaV8hrH9FrF9lk9gfBYDUDjfI6y
	 kHQl5N8MRUv/kRqje73VE3XRkU19Ohfz41FdQ6vFmUw0/oQOVT+wgMc4002cpPJr4z
	 rw/KCac9lqMwJ+si/Ia8EJh3nn7+QIvlypOqJEkkWzp/9YYeW7YOK8JgvIZrTHDVGQ
	 4YE1Pw0mi8yg2wcTWBaNCu12Hu8RFvYtq+mwsRAYPhPJfWLqgM8HlqOq7nRaBIkLaJ
	 rEYl/1+motQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87CAC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371411368.24394.18422384256864008165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1722b3affb584da4caab607ce055e14dc8031e84e67d1bd433c7c71439bd766
Date: Fri, 10 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783714113
