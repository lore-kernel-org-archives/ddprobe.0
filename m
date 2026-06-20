Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E0440D587
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781927194; cv=none; b=sTKwdSDmKGg7WAzSbHncjDZ1mpu+gNit6dscmAiojHaYKY2PK2cnODdGojJCMH+jygmn02XnlzrBYK+oCnIu25vEjtsTmkyQQ7lrdpAvICeFH/0MVOgiu3CncdbBaK6CT5N6ZlpFxahxAjqerBEi/BwRd5b3V6g/aZEtwVtCRvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781927194; c=relaxed/simple;
	bh=SMoTOmpmJI+YrUE8bze6A6yIr5ZZa8IefCfJUzzeW3k=;
	h=To:Subject:From:Message-Id:Date; b=ng2CmBTg7qheo0uVOufiGyP+WDShQKGKo4B1oq1JnTLGqbt8qlwh0v/k1mkhbTdabRMEgRBwMo3zDq5bxByy6n4Pd8iX9hVwrZK7AbpMDGkrPMHhgSw1pN9Gh9uy0bNAT8XhuXZxkkctFX/TAJtxI7sL4TaqrD744t0KIXfq7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBY7buUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBY7buUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C80C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781927193;
	bh=SMoTOmpmJI+YrUE8bze6A6yIr5ZZa8IefCfJUzzeW3k=;
	h=To:Subject:From:Date:From;
	b=RBY7buUO+Yx/og5RvUOfoWPY2ivKXexvte8mDIxKhx0V04E9hYGcNOaB3Ju9SPaMX
	 dglkTT5kGobbBopEIS3IH2yUj4tAGkQ9OHnBHNZDosiAoxZ5krEV67+S9NWHffHmSJ
	 7Qp0faKLAuts1QH7uulC7wXqzCCKCxVAH4FzbaILJc2LnrOpJzkV4PGoe/VXCu4eTy
	 yqvhFuNr1aQiAiQO+onWv0dDnaZ1OPVXD9X11N8nEW0SoV2uHbIFU4ZgCKBmhv0Fb0
	 I7uno6s5VtnfnO8Fe/VmWwTHvMTF0KUVllb6izIIuYfqDVs79O2jf3IbKlRAljXfeo
	 b/vOZCmty0ucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D68CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192719371.27304.11333389641345290143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90ff9f83c47e94bc3e0d88f02b826aa1f9dfff7c0728177973f82de903c06f6
Date: Sat, 20 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781927193
