Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABE519DF4F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782882514; cv=none; b=C/ijMHTdq5aoXb3aV/sVzSvv5aPnEiFPQ/tDcm9hSVT9+xXRVo+Yxajxy6ZI5jxnSLRnVEtGw0G9lHs/xpyyV/lKDekpACsMwTgEkq6YNkJo2bdENTdQLHDfEH4CFm4WLg+7iYuaD9AxP76gjqLthlr+yyzSE4g/nHixiQ2KZ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782882514; c=relaxed/simple;
	bh=lPxZnLbS/dkFJHVOKq42XleZfzuwQJ4+GiJ9CsRXoO0=;
	h=To:Subject:From:Message-Id:Date; b=Qri/ZF2LkHesVeakYGIbyMV639UAAlVHgO6+7MRpqrCS+QEnqUPjhLXAvRWanhPFLweMxAqFFMMlVM8hlcJEU7rbSA/m6Hgya+M+1fmIBg26MQjc1wbjI4XVcGKYDI9SPt+htVp9bXmF/a8HayArC9dzL/p4+b694AYyFouGiKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCFMQOJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCFMQOJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89A3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782882513;
	bh=lPxZnLbS/dkFJHVOKq42XleZfzuwQJ4+GiJ9CsRXoO0=;
	h=To:Subject:From:Date:From;
	b=uCFMQOJzv+NLVpvchyQ+E66SysRRLyFRoGq9bG9AYxnID2ibjC1lqQ0Ggz0P28HCY
	 I/cbHyWAU2+nzMybAZSCYOal3pPBf3NwlzJWhp4Zjx5eYQwQsw3OvSrgNBe4/Oc6cv
	 RoqXbYLVN20rop8Kq0dwYwV8PEnsUtPkCXkjGoMKkqoyEY6p8MNmGmzvZ6WmRCSG9J
	 i68W9vcnMib/NFoGyDe6W4Q/o8kUSMv559zCs3W7zaStlB/7kvvkW2hADrkwqdbSck
	 yp9SLOi1R2EgpR3ghB/y4imYpAXP3pc+wThmkNECmF4kNXC6/nU8H0R5Yq89GevOB3
	 wVdz0/hUV/QUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941EC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288251368.4068.10151310572556107274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fade7dd6075d4f5f4112d5167c767e0046b3043128689e836a9fd40a355eb076
Date: Wed, 01 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782882513
