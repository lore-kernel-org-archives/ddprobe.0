Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504BA2D63E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785279034; cv=none; b=SvtYLsPMc2yMTzF6toSiNzi5XoWv1SnU4elwbE0oh25ZjCCNMp0bUuS/K4IJeaT59EV0SDPSNrO0DLtJFscYcs4exlPoTlZuleNEQi734D+SDTqW/ClQ8te/7uwDxz/1RUfLBhDZhIQVAV55qavSOyNsoMZbYMoOV8PAjT6Nx0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785279034; c=relaxed/simple;
	bh=ZalOL4lyKL1yNn+Tad+JaTDO7kOU2Ya4RxPb2R8I4Ls=;
	h=To:Subject:From:Message-Id:Date; b=PseSdBuli36IgbhOCHcBC8agu1/l4nUxoKhEQj+ko8cliW1+Yl+2HaBCkX9MhI69Xhi8g0Ncw3M+8aILSqm7pxY6irh8tD1mljBukS7RwmqRt+nvTGc0nyWZGTiXAcPQ+y0/OpLv5j+oAmtUv/doLdRz68r1cH48iC/wilx/QN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1Wz5JxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1Wz5JxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3633C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785279033;
	bh=ZalOL4lyKL1yNn+Tad+JaTDO7kOU2Ya4RxPb2R8I4Ls=;
	h=To:Subject:From:Date:From;
	b=W1Wz5JxU8d77XeKa1RpNsO+qX3ODavxVaurUcLsU1YM1gi+UmsGHW4tmmk/KJbhVn
	 dUAdiDWvYdW9dF9uma86cpmTsgOQ52zjEc/SkRUbe82FIC3AlW6FP66KdZeOOC8DYO
	 dQ2kfsYduYBRiqytIQLdppE0PoGMrq8qktvpDjSUdsB5KyTBnSbp2OmtJnlMadGB79
	 BbteHVIu1Aqz1LCd6h124LncIH15ZVtHcvhRIlZ24LvtvOD0h7xNjZhkmg2j/B6hWG
	 UhConw1vwpCH27iVl4F/zh+V+dBJvw4Ex0CWF0gl+XHiktwJb+1lyih8jTMYUrfryI
	 LJ5FAEDB9YnlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A5C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527903368.31000.5217713652857169049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfa0668b8ddd28611bf8d238755da88790af813a1f3d8e5cbea31f0868a95e0
Date: Tue, 28 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785279033
