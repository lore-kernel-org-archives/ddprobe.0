Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199761E498
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712646497; cv=none; b=ZAkVf2FFbILkjp6x3aUgXnFujZh3WWFAkTnEKuSwDR2wklCALFZC7hhbb/4JOsxTvKXC53L7gbe+ImuCTKwkCrYOMKr9SdH6toNiHCb7RMWGvBsohskHePU1VEUsdUkp/TwRPheUgglou/HcnGQcL/Sx1SBTMAq5womDPfMJpCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712646497; c=relaxed/simple;
	bh=YMDA3XtExlhMcvkZY8XIK/Sv87qruNSJKxoZvgx1xqo=;
	h=To:Subject:From:Message-Id:Date; b=U+o1F01dB+Uonnt5ozZOzQqqPQK1pS5jnHzBjWtjPzvRSDw1Omcpm8l4ttRggG4SuDa2DBp1R1Yp5+e7vQ5GNE8Gke2BIc42KiElnRs/X2T/SWOMcY96xtqlvs4H0BnXXY/ogynDwgyUzcxVxMWBILcXwFwVPY59I1pcSv5ObhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr5mqPVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr5mqPVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C755C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712646496;
	bh=YMDA3XtExlhMcvkZY8XIK/Sv87qruNSJKxoZvgx1xqo=;
	h=To:Subject:From:Date:From;
	b=Lr5mqPVLm6WmxaPSbxVTz42jsyUr1C1Ggsf7sMoThRbDFCHoZOcArqnuTLikmosOK
	 za+HiCpVoJLak6jP7ZC0H3L0F7J59xpQjFOOzW15ra5j+MAVq+bZ7hA8nR8fMHZtTL
	 ipLqxTafUQby+B5Fvk4Gr/euHtEyw0/bcFAkx1zRyO630xXb3e+6ULSIroA/GN2zgo
	 wjnCnipTCehaGc//OxzcJSyU9IdZ60PJIwXUxcMsTEO7ZxUruHwL7VTScBPymSYbTj
	 ZtgTLAB10zVWF3uERfWLKZ2O7MUr2SL2CFu7vBfwobPtJxnGnv7E7FYViR6yn6Mhlh
	 BujS/u8mHiNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716D2CD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264649645.18563.1452727157700522546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f98cc83b8060493e143aac85c9bb35b1cf1389577017f526cdc808b29bbb93c
Date: Tue, 09 Apr 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712646496
