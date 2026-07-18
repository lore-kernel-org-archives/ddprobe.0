Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B110712D1F1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784348314; cv=none; b=I6Us4RXZdDJJeSfOgWZ8ZwpdFTeD4lUi2ZuMLVlvrbU7UQ9XAbneFKZK2Dav75L7L4gCeiBD6W7HBmAMMCZRu5Ao4EmTE1EZdDynAuahSoBrVcxApPnZYmAy9cvn/JNS2vx5iLig05OYFcrZQzePo5XuebAYGb49G7r2W5SS+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784348314; c=relaxed/simple;
	bh=c259AOCfmxt3FNqfAVCfGCLuzJvZ+gRPZ3j1IxABjCA=;
	h=To:Subject:From:Message-Id:Date; b=QWRPRVz1Tqhc7qSfEpQMA82tNaBd24D3kVtn3GEbNkxxDjq4PI+dMl991TUR907DlLQLcZgvL9DtPYylEBWjpNbVWumVggMPXWg2JIx6pRuLCq0L88GlgPOImxBhAFpwLOuVrWINIMSBGugIQpqmp+Fl7dZH09O+GoQzX8qE4+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlIsZSVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlIsZSVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED0E4C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784348314;
	bh=c259AOCfmxt3FNqfAVCfGCLuzJvZ+gRPZ3j1IxABjCA=;
	h=To:Subject:From:Date:From;
	b=GlIsZSVg2dAebPvb278hxVdcEMhXWPCShnmQs7+sK4LhjdmMmIsmH4KeqHWSz/Ukk
	 Hg3aEpB9/6/l2BOdCQoO8xPM+0KIcnq00mMLPRJLi8bcK/9HkDSbwljBewsbCq188K
	 jEJGAgkGsrRWlpz3l4Ccxc1g8xcKU/TRrkiM6W+ybBzyTcfaepIfGAXwlLjnXnPLWD
	 Ga2owIX+yG6snN1BsrFV2ta6Sl9Oqf0GlAfIU7cu8Kf6LTZG6KAoTnKch9NC/0DKM6
	 8+A3bRWZrG117/RRetc/YREszvIVpXAjv2OsDi+KRFNmSSdmv+A/LtUge5np7MN0zZ
	 s5uovATs+7tDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BD3C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434831377.20931.1007866490580309083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca28c12fc5a9077f04233849636d8f5dbcac63253b69b3276869a284e199135
Date: Sat, 18 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784348313
