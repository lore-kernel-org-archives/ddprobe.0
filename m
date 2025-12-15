Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B86932E68C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765842174; cv=none; b=EIYk10B6mKNeizB5jXoFwlM7VOjCLOEz+EsdaPlflCZExUn69vzNZozzebPqluuIsNh4tKwj80+tlPrHPfRAap85cf39tMK8leWYo1yKTI+QPUGmOqd48C/qHBXELpmSHpfn7EmBh/BC7l01r9UvEJfPeN7j40QQX/KyTCrwIEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765842174; c=relaxed/simple;
	bh=szDga87rFyIk1qIS7tPK2kWGqFkwU3HfWF0HCOm3M1Q=;
	h=To:Subject:From:Message-Id:Date; b=d/ppLZhMQ0bYuzB9O7spSxJZb8e5Hs+4V7Iejs+MN7mpw3ftviE6XQVCcbnb5wxLUJO2a7MUzZj3aQgLpC6/LqXC15MDEEq2QFFyT+Ae6LIiWPRtzyJ3LNKAxfL8oWu59eljcx1Ir1G4CgVm0C/jk1pASgELZCb74ULHN0pLY6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFr8LTXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFr8LTXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B59C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765842173;
	bh=szDga87rFyIk1qIS7tPK2kWGqFkwU3HfWF0HCOm3M1Q=;
	h=To:Subject:From:Date:From;
	b=pFr8LTXfvjFEexJ+zx/xlCa8CzJ7kqCITqx1Mo+JkkMSys8PRP5lFhgZMCh+OglqM
	 PcPtStz8e+e0mggr4U0jmqpLveFiwcHii5QRupPUqrX/Ep1JSm+MjijiAKx2gUwgbO
	 SrK6RB99MQIpnis1T6iVmj01zlHa69xd7OefZwEfJrETyYnACdwLg076g3yk/nm73f
	 5/e/r/jcle3TKEMZgJDbSgwc7Um7Kiz7xkmpF0wJa1C5c4C84NEdOYafej9RWSWb6L
	 PI9subFM4omeJ7udFxo8Lvxj2EmIks/5Ja+1QS0Bd5nLjWajT7dEjYcQ+A+0muj/ZZ
	 MRj4/M6qiNnGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB8D5B874
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584217358.759.15546374279345318544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7bd74c547d60c2d296dc905726fcd541c25d83a11a7ffff7119d3d90d5fea7
Date: Mon, 15 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765842173
