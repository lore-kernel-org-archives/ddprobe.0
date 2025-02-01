Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617F317BA5
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738398954; cv=none; b=baua/5qr20bjrNgO9lV/zQjHWRvZmpIeVpd8pbPVCyilRum048Z2Z2vMiN+2xEtY+xWz9BuVbY4pm87/uQzzjh0lmAiZtIH0irjQHp9m8R8/5lwuX2aQ7A+ZAZvrY4x321KD/EweKbHa2wUMeIPakAZ8gocJpJ2WcsRJtduDVD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738398954; c=relaxed/simple;
	bh=ZOEy5WXrlwdnogze2paBdGFBL6SKyqP+AftoiERfeFA=;
	h=To:Subject:From:Message-Id:Date; b=aW8uUsZcT/cz9KfWJW+dM6DpABGDoXtVUcexcYRW+O8IiUF4cKqKHYrVoQOQnat5CYxYp9J6hy7Z/VmuX7xKiZBcsNxAzm7fR1yQHt08IPNGlVs6HQrTYcKcRxB+S5BkHbdP3iEp8AUte4BmbeMv7asqpp7rMhOUdLE2VmGOEqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1io01Cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1io01Cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F2BC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738398953;
	bh=ZOEy5WXrlwdnogze2paBdGFBL6SKyqP+AftoiERfeFA=;
	h=To:Subject:From:Date:From;
	b=G1io01ClrKcril+0st8NUIWB3IMCfjIRtYqc+WmlmfuWdmNgpwOEBKf/c/OCL9DE3
	 sVcxZR3YqargKmf9pgQJm7xi1x/XQBMlVsCsX6fsJ62rPoGcd9FwWxlaIzjZqWba3G
	 D3iABXyREdKrLHh5OBZYlA3RYzIIMrX0yHt5KYZDvP7sY0PSGJUHdUHxZh2OGYA7q0
	 NGTnmMAiadk1GcPo1O2PvGpTEWP/Mo1yyv9x7iIvkr40n4anZcKuE9oj65DeuypkWI
	 1C589ygYdgE/hzht3ahEd6YqmU0upB9PbpWTmcWe1Wbqd/I0rFLzGVOxymBNuRMcqK
	 hQPPVUp3fi+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDDC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173839895361.25861.15881036206601457832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33077b502e96119e07cbd440b755198a89c2829cb8336de45f574c3222c94465
Date: Sat, 01 Feb 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738398953
