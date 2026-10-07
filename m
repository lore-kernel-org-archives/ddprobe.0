Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7643A415F2A
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791376234; cv=none; b=LmKrxMeM3ow+otdMgYqxPo1mUUs+77HsWczvpG+oIfVG6tKwsHQo1nSX1MkCIQ/Nw9fhqQ1NGGyJA3n6kIRyhaX0te+zmi+ExD1Ku0D+oYELWaGPVnc4EL5+QXauWaT9hYtgmgV6GXzf76F4n/OyCK+1yK8fofO2/RDF71R2Qw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791376234; c=relaxed/simple;
	bh=nf80mBE+0DmqWEzQjl7fgXMRD/gv5iQczVo+esGMWY0=;
	h=To:Subject:From:Message-Id:Date; b=l4Mdm56nclyW83raQI7j5p3QK+2Z7h3JcNq7ADLfcMIHOT3ZkvNMv6fHWh61b49G5i/1tnmUwyTwHNH7tTXFDwyDt29CIpuB3TjEomeW24wIaQA6yF/iYjSdMDbGQc1d7X6u/taSDxC3Ijp7nW2ZRcJM9bdWvo1oDitmn5jxrnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0jLLSfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0jLLSfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0150C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791376233;
	bh=nf80mBE+0DmqWEzQjl7fgXMRD/gv5iQczVo+esGMWY0=;
	h=To:Subject:From:Date:From;
	b=W0jLLSfN4Ky8Fz0D8n5OYHVSIMXdlMjwvymqqkD2Qwp8uEe0ajo6Rb1PqXJguGvGM
	 1croy3KZi6yTnoOBtaAd1f7OAkxfgBvE43Xe34mhWvj+r6kbioEhr+XpqnLH4/f/3y
	 tY+TFdvMvyDpDdNnGh0e1UxRQo2eCpTpOtG7K0TY5PMaWi/AD9d5IGNp+SRDB93uHe
	 BcpmYZrXBgINPzJzoaXRGrSJpkoKjrN56/YYmUfPQPWUqWMIMZNaRHhsHgMDpK1FTR
	 hxzTSwdpRciFAU6/ckhUc4CnlxKDA5jCazRKuVZiDdgFlSFbbG/6/UE+pEEq9CbbmU
	 MJIS5gOKbT/yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46BCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137623369.15346.12435440169306797705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f82ce50c25d67674999599659b129d35cfb7028aaf1816ef2e80304e736c75
Date: Wed, 07 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791376233
