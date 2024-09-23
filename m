Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A0FEEB5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727085354; cv=none; b=n2JsdDm7fRQ4LtY/4Hxsc9y5o8vPWv+5du+jhTFxiA0e7taG079o5sSrWXAVNtJfy5DJkv9w9/9/MHHQFXOj0si3xcGo5WNKd+BVl5eQBbJs0iRG437f5FLhfSHSFQyM0cuS3RwT0Cxm7c0IkmhFhorOjpPGPmztZAvMIJXk/4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727085354; c=relaxed/simple;
	bh=Ud73NGnbfERbMXS2KyBdQfUHlx7EgMgTeTAkU+3c68A=;
	h=To:Subject:From:Message-Id:Date; b=csnWGJiwz3/ihZprkoMx1BPYq1fHgtfDmRbcw/C4CSoEbyTBLjgUYk2PDv1gRw0HMk759InlsVaq/sdhFqLRj2OHdCNlw4NkLwbOAWcqxR3bAhQGIskAiDbnvg0YHrCsw/ZBpvOwDaV/EG/hv7+WbQdYT2eiXFLM8heIrddZ/Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLOFmM9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLOFmM9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B9C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727085353;
	bh=Ud73NGnbfERbMXS2KyBdQfUHlx7EgMgTeTAkU+3c68A=;
	h=To:Subject:From:Date:From;
	b=aLOFmM9TMjwbvREiPoTsqNsrmOeR2VCmFPtMPIb8V5ZyEv4K1b14FsHhtZOM/7Qym
	 hkjDHlb4eb3mf0PvfRcy072ZCAMBx29dYmwhcGsDBglvUEltamYSR4fQQxqvgISRK9
	 GTVRHWWMYH2fXQ82SUHLK51UheEKSquD71OhhRA8rk/OocAj8T3DpnHG04zPfywcUt
	 8l6HgHdQu7CwYciopbwxU8pX4ZEaAAEUfUySVDS5JgF7PkvKmDbikLQAfk5IRpKe4L
	 FSJYBVocrCVTwuGGVXItCeup46opVtEpxz1P6w9aET5fc2OPR5cUsHExDZ9uPEnGWL
	 x2GB/xmMrr8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9336DCF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708535359.14881.16074134070681797786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af9b0655ba278f00d62d85ad57bbcd8665e9079b778d3cbe3e2d3ec6ef3cb69
Date: Mon, 23 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727085353
