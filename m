Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617302EC0A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784254714; cv=none; b=OoRshvRa3iTrJ43NaitNHhlu5KpCDv4diitmMfzVU0pFcf4wjTmR97ydZ2/CiJZPo4ybiYEY5w34/isDtQHUTmk8K569ipurDiCxM37ePKTqH6PlwCt28S36DrXS2+ZSwMkXichxJyOIxF16ujF+VwH99irCllkZeR/LBxgaykY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784254714; c=relaxed/simple;
	bh=4sJWu9A9MAmOJU8bSiGpV1h/0Cj5z175AHMIeBVEKWs=;
	h=To:Subject:From:Message-Id:Date; b=kBNE4jGuvh0rRD5igUl7JPYJr7FgPXuO81ViBXKwkiN13I+md3g4uG+SNWiG/9w1R4HsTkvrohAFJTHTng7XDBq0Qv66KOqfR6us28O0B4uC/6jelFL5Hntwf6m0ypfiSxSSo/Nf2uOHCDxqPBhng5heFaFunAtVu89bR13muhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egbWZ0KU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egbWZ0KU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1399C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784254713;
	bh=4sJWu9A9MAmOJU8bSiGpV1h/0Cj5z175AHMIeBVEKWs=;
	h=To:Subject:From:Date:From;
	b=egbWZ0KUYAXizPOPOllDWPn31hz8fjVRhxc2wBrx9JnCjd7XLbY+LHp2V/OcAPti2
	 O19arpNFaSm7VEW0KwfqlXukUJCHj+R2DgOLnUuumkv/fsxCbflEasREsFovqZ7qm6
	 HGMQiO0tI95NMlxBHQInimCphzm53DZbXNbbD+Z03uTv3YD9cBzujhbKBfh2jziL/g
	 rbmOJ+IDytYQS38wx1WR2hqGzeuFk+kMQEH5vBPfVdC6LVeJMBZknibmIVql2mGtrm
	 XuMlv7Zt/yXEsNX6dDrN29DLSkym1MSdpg2I7UXiVmerjG7m1ohtHjfliu0kwXvdWZ
	 lTkCtpoqjakXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAAEC4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425471368.15899.8169177781399144656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c69f873f87cef9e5b1eb8f89df9bb6db0835fadf78c82aeb7feb6fc8024389
Date: Fri, 17 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784254713
