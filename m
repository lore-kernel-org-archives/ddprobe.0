Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155A21F3FEC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756615194; cv=none; b=EyBRNUepzxlApk49kBrLAJmWWVax45ve4SjV4gUSlrL/heZReFDYbM6bDp1itFoFdgmuM3s1Vb0XQL0ijn84JBCy00Zaqo0yo/LhfWGHWmXVD0HBVDtGuhivKPMG2nyCDKha7U5d/LzmabnuwT/MupJm4VXP5GsoSGj+Y+jbseI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756615194; c=relaxed/simple;
	bh=I0EC07HjNiVM9TsnEuDA1OoK9CkBHMFe2tnfTJUAn/I=;
	h=To:Subject:From:Message-Id:Date; b=oEbixOjCWLSt/MBxV3n5hiAayONPg/juQ+UHpovM3duJ81BwV7iKzQC9YNyV3fFcJZpgmFJleiDf1JJE8jv5FqESXx39ZcB41m1bemaVMScf/EnmH84RN34ajyf9vTz3GxnSfYNRUr6i8ixKKcEktYKay7OVc1swmXJmor01v2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSvajalb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSvajalb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32ECC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756615193;
	bh=I0EC07HjNiVM9TsnEuDA1OoK9CkBHMFe2tnfTJUAn/I=;
	h=To:Subject:From:Date:From;
	b=bSvajalbOfWKK7jeQrDurDW4dEHPyhzoIB7SIE9IJNxwLz2OsDgBKtSGyM0+gDZs9
	 u341LnnHVpwwUbtTNGKHwK93kjBQZ9H9ylgaE7vyXsa1FzScB4An+wejG+pgb02e7T
	 +AXkFWDHrekhPtZES/vx4PzENGlNLWp1pO1HeqGgpeSMloE1tt4+7+0VAiscI4Xxp0
	 3bX/yXfCTStXEFYBm05Oa+UtXqkJX3I+A9joQnB3CHe2KMqCUEbR2Q9KENIvVZMIeK
	 xaykyXBGovSWIHeDzNTd5wMSHcVfGR/cm8kAK3nBtHctLLHiJ9Y+glr4dL4jqk2OBT
	 TANrefuePeCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160FCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661519357.28215.17851879965255169668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c0d48636e99db8a86eabc2897191fb9d83819a3838bd72a35880e59e8fa61b
Date: Sun, 31 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756615193
