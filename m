Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1A19C553
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777784854; cv=none; b=DSmVZZxQKw6aqIwKvI1sr6olWo7qwTKoz1JG3t+4e8gHtvzLoHTxdo+gAkwxFcJV+a52F4NzWqAglojHRCxPpKvMgrePdrWrsdr7Sq/DmQf977QIjqXBVXQRJZCfRTFan0/BuxZPs2b31WfvR0b4QbnuSPsR4Z22y3ci4B7DYgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777784854; c=relaxed/simple;
	bh=za1Op/WY7PCsUyFAZeIyqlOROywEOoqEFL0uZvtjTmw=;
	h=To:Subject:From:Message-Id:Date; b=O7i0YBvRSpwq/irACKJjOwBP0aKAAGckBU71zJTV2chqp8OZmqTJ+fujrlrC/Z0Du63X0uK3GzR4226kPjcInoz0y6jJPfR9DIVmgNnpPeoFy2cx+OwTvCe8AfQtZHTIpZvnvyFnJ1/G7mzoD+NsjQcqrMaZMv8Zoz03Ou13pPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvhOnAQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvhOnAQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA83C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777784853;
	bh=za1Op/WY7PCsUyFAZeIyqlOROywEOoqEFL0uZvtjTmw=;
	h=To:Subject:From:Date:From;
	b=EvhOnAQq15ZkNFI38BQkvLuWpJeii5nHBeALGwxHkDcBxmXnAxfhopSGItpSOUx48
	 F6P2dChozoGYLvZwZnI8JEdJND5B25RB3JcWKK5sCKaP3f1vAb0xlkFUJn2E69alqv
	 OlHF36CQt3nr+VxYy+deiWwRAOdafwBgIuqZx96GL1GoGlREQucDE5P0NeTJvLzydB
	 izYizaWIw0RWK/I4Sb0fYKtkIbhILMqibDFx5pC0Jmzx7InZfE/+gbCphGLqHFajDN
	 v9G5VJnKYnqOCt/3Z8Tf4nmIu44ihtpmWz7UCb5I5VwNNW/qJX9FBU1pxku2OgYMwn
	 ol4b4RyCsEBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9135FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778485368.32544.8133137649711453995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90112879b24651572f51506a15af9fee21df56aad0192f0ab4fa195b907228eb
Date: Sun, 03 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777784853
