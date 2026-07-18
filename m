Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490103876A9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784365714; cv=none; b=sCDHIveWtM+kP6iCRK+hg/remhm/+kyStZj4U3Ph3goGTE35jzKeI1xExVSZIim6+43L1uvQANEp7C+OOkg24qV86yxIG+tzd1w5G2+kvpA8jvd2lTUL4fO6vbNV518MKJwiZXKIlYigvXXJYoSlSyuo90LO3Eihfaa2mUUOzO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784365714; c=relaxed/simple;
	bh=Oq72UTvPlgk2lb32p46k20bXjSsTO3VPJqLF98o57Xw=;
	h=To:Subject:From:Message-Id:Date; b=mtKkeiGQoXDO2U41u1cTPCaKAOQfB+2am3q+hDrYRgcjzYfVB0ObhVD3EJkoh3+yKOZZEoab01ykE92alasPxZ5iD/8MJTjnizD2wyg/ZbibzQbmiPQVz4OskrX5YvnHZKWqRdjfSMvcL4idcf7VBbcWA2WO/NyBuTI+mCjPhjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiuIzdd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiuIzdd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D197EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784365713;
	bh=Oq72UTvPlgk2lb32p46k20bXjSsTO3VPJqLF98o57Xw=;
	h=To:Subject:From:Date:From;
	b=WiuIzdd29zxjT1TSHW00Y+ZOk4Ljm/IQ0n0GAk2oNi6Mzh/XBff4PjFW746/bDt7N
	 D9KDqIpGz0AAcq/jAc/3ivw+vQDhpgzRXX832SJqlGTBUeyoA0rXRA9HZiPLK8Qupt
	 9IYSWrYlxxOQiNuBH/x554nAmcmY1fE4Jnb36/8DPhbV4uil0GkR1VESuiwrsv8KIC
	 yyAxJ5CYsgM6EucMhSphsUD0JYfKobAhRhbonSmH16xicKN1lsqfq4Ch0eAYuZfE8s
	 jsCQy7sZ6RRM4oSMaAOViDX7lFolLCpzAM+6St6AZ5FD6iKCAJXXeksd2TJ4skAo12
	 k4L71jGBL0/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B7C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436571369.31107.15251997952616185979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ff116193c4413b6440ea7eaab0511cd80d20f7c5d3dbe76632807ffe17f18b
Date: Sat, 18 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784365713
